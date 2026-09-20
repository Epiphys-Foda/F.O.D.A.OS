// resfield2d_gpu.wgsl — GPU residue-field sampling core (N8, 2026-09-14)
// Must match plugins/frontend/resfield2d.psi (PsiLang CPU oracle) bit-exact.
// Integer-only: no floats anywhere, so cross-vendor bit-exactness holds by
// construction (the certification run proves it per device).
//
// CERTIFICATION HARDENING (first cross-backend run, 2026-09-14): i32 `%` on
// possibly-negative operands DIVERGED across naga backends (Dx12 matched the
// CPU oracle; Vulkan/GL agreed with each other but not the CPU — nprod plain
// arithmetic matched everywhere, isolating the fault to mod/div). This
// version therefore implements mod via ABS + non-negative division + explicit
// sign restore; no `%` and no negative-operand `/` anywhere in the kernel.
//
// binding0 (storage, read): params, flat u32
//   [0]=n  [1]=w  [2]=h  [3..11]=pa  [11..19]=pb  [19..27]=pr  [27..35]=pu  [35..43]=pv
//   (pa/pb are two's-complement u32; decoded with bitcast<i32>)
// binding1 (storage, read_write): out, 4 u32 words per pixel: [su, sv, nprod, sing]
//
// 32-bit discipline (WebGPU has no 64-bit int):
//   - GF mulmod via the CENTERED representation: v in [0,65536] maps to
//     v-65537 when v>32768, so |a*b| <= 2^30 fits i32; sign restored after a
//     non-negative modulus.
//   - nprod = N1*N2 stays i32 while max(N1*N2) < 2^31 (true for center-near
//     pole windows; the PsiLang i64 oracle is the referee).

@group(0) @binding(0) var<storage, read> p: array<u32>;
@group(0) @binding(1) var<storage, read_write> out: array<u32>;

// sabs: |v| as (magnitude, sign) — sign-safe mod building block
fn mmod(a: i32, b: i32) -> i32 {
    var ca = a;
    if (ca > 32768) {
        ca = ca - 65537;
    }
    var cb = b;
    if (cb > 32768) {
        cb = cb - 65537;
    }
    let pr = ca * cb;
    var mag = pr;
    var neg = 0;
    if (mag < 0) {
        mag = 0 - mag;
        neg = 1;
    }
    let q = mag / 65537;
    var r = mag - q * 65537;
    if (neg == 1) {
        if (r != 0) {
            r = 65537 - r;
        }
    }
    return r;
}

// smod(v, ) — v mod 65537 with v possibly negative, division-based
fn smod(v: i32) -> i32 {
    var mag = v;
    var neg = 0;
    if (mag < 0) {
        mag = 0 - mag;
        neg = 1;
    }
    let q = mag / 65537;
    var r = mag - q * 65537;
    if (neg == 1) {
        if (r != 0) {
            r = 65537 - r;
        }
    }
    return r;
}

fn pmpow(b: i32, e: i32) -> i32 {
    var result = 1;
    var base = smod(b);
    var ee = e;
    loop {
        if (ee <= 0) {
            break;
        }
        if ((ee & 1) == 1) {
            result = mmod(result, base);
        }
        base = mmod(base, base);
        ee = ee >> 1;
    }
    return result;
}

@compute @workgroup_size(64)
fn main(@builtin(global_invocation_id) gid: vec3<u32>) {
    let n = p[0u];
    let w = p[1u];
    let h = p[2u];
    let total = w * h;
    var idx = gid.x;
    loop {
        if (idx >= total) {
            break;
        }
        let px = idx % w;
        let py = idx / w;
        let zx = (i32(px) - i32(w) / 2) * 2;
        let zy = (i32(py) - i32(h) / 2) * 2;
        let zu = smod(zx + 256 * zy);
        let zv = smod(zx - 256 * zy);
        var su = 0;
        var sv = 0;
        var sing = 0;
        var nprod = 1;
        var k = 0u;
        loop {
            if (k >= n) {
                break;
            }
            let dx = zx - bitcast<i32>(p[3u + k]);
            let dy = zy - bitcast<i32>(p[11u + k]);
            nprod = nprod * (dx * dx + dy * dy);
            var du = zu - smod(bitcast<i32>(p[27u + k]));
            if (du < 0) {
                du = du + 65537;
            }
            var dv = zv - smod(bitcast<i32>(p[35u + k]));
            if (dv < 0) {
                dv = dv + 65537;
            }
            if ((du == 0) || (dv == 0)) {
                sing = 1;
            } else {
                let iu = pmpow(du, 65535);
                let iv = pmpow(dv, 65535);
                su = (su + mmod(i32(p[19u + k]), iu)) % 65537;
                sv = (sv + mmod(i32(p[19u + k]), iv)) % 65537;
            }
            k = k + 1u;
        }
        let o = idx * 4u;
        out[o] = u32(su);
        out[o + 1u] = u32(sv);
        out[o + 2u] = u32(nprod);
        out[o + 3u] = u32(sing);
        idx = idx + 64u;
    }
}
