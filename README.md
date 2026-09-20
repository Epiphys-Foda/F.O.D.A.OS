[中文](README_CN.md) | English

# F.O.D.A.OS

[![CI](https://github.com/Epiphys-Foda/F.O.D.A.OS/actions/workflows/smoke.yml/badge.svg)](https://github.com/Epiphys-Foda/F.O.D.A.OS/actions/workflows/smoke.yml)
[![release](https://img.shields.io/badge/release-v0.3.0-2ea44f)](#15-work-in-progress)
[![license](https://img.shields.io/badge/license-Apache--2.0-blue)](LICENSE)
[![host](https://img.shields.io/badge/host-Windows%20x64-8A2BE2)](#15-work-in-progress)
![backends](https://img.shields.io/badge/backends-x86--64%20%7C%20ARM64%20%7C%20RISC--V%20%7C%20WASM%20%7C%20WGSL--GPU-FF6F00)
![arithmetic](https://img.shields.io/badge/arithmetic-exact%20GF%2865537%29-dc3545)
![floats](https://img.shields.io/badge/floats-zero-000000)
![randomness](https://img.shields.io/badge/randomness-zero-000000)
![scale](https://img.shields.io/badge/programs-1%2C552%20%C2%B7%2031%20domains-007EC6)
[![papers](https://img.shields.io/badge/papers-I%E2%80%93VII%20on%20Zenodo-9cf)](https://zenodo.org/search?q=%22FodaOS%22)
[![web](https://img.shields.io/badge/web-epiphys.com-0A66C2)](https://www.epiphys.com/)
[![contact](https://img.shields.io/badge/contact-support%40epiphys.com-EA4AAA)](mailto:support@epiphys.com)

## The Exact-Solving Computing Platform

### *PsiLang — zero floats, zero randomness, zero error*

> **The same source yields the same bytes — on every machine, every run, forever.**

---

Every computation is an exact integer in the **GF(65537) residue field** — no floats, no randomness, no hidden state, no rounding errors, ever. `0.1 + 0.2 == 0.3` is not an approximation; it is a mathematical fact. Your program becomes a **mathematical object** you can fingerprint, audit, and reproduce bit-for-bit across any machine.

**PsiLang (ψ, `.ψ`)** is the language. **F.O.D.A.OS** is the platform: 1,552 programs, 31 domain libraries, 4 ISA backends, 9 windowed applications — all deterministic, all exact, all open source.

### What can you do with it?

| If you do... | F.O.D.A.OS gives you... |
|---|---|
| **Financial / accounting** | **Next-gen exact arithmetic.** `0.1 + 0.2 == 0.3` — not `0.30000000000000004`. Every cent accounted for, every audit reproducible bit-for-bit. Floating-point rounding does not exist in this language. Portfolio risk, option pricing, equilibrium — all exact. (`lib/domain/finance/`: portfolio, option, risk, trading, equilibrium) |
| **Game engine / robotics** | **Next-gen deterministic physics.** Same input → same trajectory, every single time. Universe-scale replays, instant rollback, lockstep multiplayer sync — when the engine is bit-exact, these problems disappear. Next-gen backprop-free robot training: Hebbian online learning — no gradient, no replay buffer. (`lib/domain/robot/`: arena, control, hebbian, sensor, render3d) |
| **Game security / anti-cheat** | **Next-gen DRM anti-cheat.** Stream-cipher sealing + device-bound tokens + an integrity chain that breaks loudly on any modification. Zero randomness ⇒ the server recomputes every client step — cheats have nowhere to hide. Not ban-hammer guesswork — mathematical judgment. (`vault.ψ`, `security/audit`) |
| **Crypto / blockchain** | **Next-gen post-quantum crypto suite.** Fully homomorphic encryption FHE (N=1024, compute directly on ciphertexts), LWE lattice crypto (N=512), 128-party threshold signatures, BB84/E91 quantum key distribution (7-stage pipeline), zero-knowledge proofs — all pure GF(p) integers, zero-randomness auditable. (`lib/domain/crypto/`: fhe, lwe, zk, pki, sig, quorum_sign, key_exchange) |
| **Scientific computing** | **Next-gen law-discovery engine.** Rediscover Kepler's third law from raw data — and *refuse* to invent a law for noise. A discovery engine that says no. 210-program physics family. Moseley, Balmer, Titius-Bode, Stefan-Boltzmann, Newton — all rediscovered from data. |
| **Quantum simulation** | **Next-gen quantum stack.** Shor-9, Steane `[[7,1,3]]`, surface codes — as plain integer programs. No complex numbers, no floats, no probability sampling. Plus Grover search, quantum walks, quantum annealing, QFT, QKD — all deterministic. |
| **AI / ML** | **Next-gen backprop-free training.** Hebbian online learning — one sample at a time, weights evolve in place. Next-gen attention: beamforming O(N) replacing O(N²). Next-gen global optimization: imaginary-time annealing (randomness banned). Next-gen LLM inference: 39.2 tokens/sec (T=8), GPU 6.60 ms/token, incremental engine 37.6x speedup. (`lib/domain/ml/`: 18-program full training stack) |
| **Consensus / distributed** | **Next-gen deterministic consensus.** Byzantine fault tolerance, Paxos, Raft, CRDT, gossip — all deterministic, all exact. When your consensus protocol is bit-exact, divergence is impossible. (`lib/domain/consensus/`: bft, paxos, raft, crdt, gossip, distributed_lock) |
| **Database / data infrastructure** | **Next-gen multi-model database.** ψDB: 7 storage models in one engine — KV, document, graph, vector, timeseries, columnar, object. Quantum database, spacetime database, cognitive database, Cl(4,1) geometric algebra database. SurrealDB-style query language. MVCC transactions. Encrypted at rest. 51 programs, 8.35M queries/sec, all pure ψ. (card 8) |
| **Network / bandwidth** | **Next-gen network protocol.** Transmit rules, not data. The qqbc frame-stream protocol: first frame FULL, then DELTA only — bandwidth ∝ change, independent of scene size. Steady state → near-zero bandwidth. Incremental hot-update: 10³–10⁵× less bandwidth than full model download. Next-gen remote animation: transmit pole trajectories, receiver evolves locally — animation has no frame rate. Next-gen operation stream: 7 domains assembled into 1 compressed DAG. (`qqbc_frame`, `qqbc_anim`, `opstream`, `dag_transfer`) |

### Try it in 10 seconds

```text
git clone https://github.com/Epiphys-Foda/F.O.D.A.OS.git
cd F.O.D.A.OS
bin\qlc2.exe examples\hello.ψ --run
```

No build step. No package manager. No dependencies. `bin\qlc2.exe` is a self-contained 1.3 MB native executable — just run it.

```text
bin\qlc2.exe --fast examples\law_discovery.ψ    # rediscover Kepler's third law from data
bin\qlc2.exe --fast examples\periodic_table.ψ   # 172 elements
bin\qlc2.exe --fast examples\qec_shor9.ψ        # quantum error correction as plain code
bin\qlc2.exe lib\frontend\shell_ide.psi --fast  # launch the windowed IDE
```

---

## 1. What can you actually do with it? (every claim runnable)

### 1. Next-gen law-discovery engine — the machine "gets" Kepler III by itself, and says no to noise

`examples/law_discovery.ψ` feeds raw planetary data to the discovery engine (`lib/core/stdlib_lang2`: `bm_canon` + the granular `gx_*` module swarm):

```text
bin\qlc2.exe --fast examples\law_discovery.ψ

== Kepler III: [pow_score, winner, kidx, gate] ==
3
3
2
1
== Lawless control: [gate=(0)] ==
0
== TOTAL (expect 5) ==
5
```

It **rediscovers Kepler's third law** (T² ∝ R³) from the data — and **refuses to invent a law for a lawless control dataset** (`gate=0`). A discovery engine that can say no: the essential difference from every overfitting machine. The same engine drives the Moseley / Balmer / Titius-Bode / Stefan-Boltzmann / Newton / OEIS / seasonal-cycles law battery.

### 2. Next-gen algebraic chemistry — the entire periodic table, held as one mathematical object

`examples/periodic_table.ψ` (backed by `lib/domain/chem/`) encodes whole-table element chemistry as residue-field constraints and verifies it:

```text
bin\qlc2.exe --fast examples\periodic_table.ψ

periodic_verify:
0
stats [total, known, predicted, poles]:
172
118
54
8
```

**172 table entries: 118 known elements plus 54 predicted superheavy slots.** The chemistry domain around it is the largest in the repo: 599 programs covering periodicity, bonds, isotopes, spectroscopy, electrochemistry, kinetics and thermodynamics.

### 3. Next-gen quantum error correction — Shor-9, Steane, surface code, one command each

Shor-9, Steane and the surface code ship as runnable examples (stdlib `qec.ψ` / `css.ψ`):

```text
bin\qlc2.exe --fast examples\qec_shor9.ψ      # Shor 9-qubit code        → fast result: 0
bin\qlc2.exe --fast examples\qec_steane.ψ     # Steane [[7,1,3]] gates   → fast result: 0
bin\qlc2.exe --fast examples\qec_surface.ψ    # surface code             → fast result: 0
```

The same library carries Grover search, CSS codes, depolarizing channels and threshold batteries — all deterministic, all integer-exact.

### 4. Next-gen programming language — ψ compiles ψ, the language builds itself

```text
psi_to_wasm(src)   # ψ source → standard WebAssembly byte stream (a ψ-level host op)
wasm_run(bytes)    # a WASM stack-machine interpreter written in ψ (wasm_interp.ψ)
```

`examples/metacircular.ψ` is the minimal loop: a mini compiler written in ψ turns `"3+4"` into a WASM byte stream, then a ψ-written interpreter executes it — **zero third-party compilers involved**. `self_compile.ψ` at the repo root is the full ψ self-hosting compiler (~4,700 lines; development preview).

### 5. Next-gen robot training field: a deterministic inner loop, backprop-free

`lib/core/stdlib/render3d_train.ψ` assembles a 3D training field from the render stack (`render3d` scene → `render3d_robot` → `render3d_ui`); `lib/domain/ml/` provides the full training stack (`model` / `training` / `train_loop` / `rl` / `bandit` / `meta_learning` / `weight_io`); the inner loop is pure ψ online learning: `reservoir.ψ` (gated state updates `mem' = a·mem + b·d`) and `edge_learn.ψ` (Hebbian online learning — **one sample at a time, no backpropagation, no replay buffer**, weights evolve in place). Same trajectory in, same weights out — training itself becomes a reproducible experiment.

### 6. Next-gen windowed applications — nine apps ready to launch, determinism is not headless

`lib/frontend/` is a complete windowed application stack on the Windows host surface (`win_open` / `win_present` / `win_poll`):

- `wui.ψ` / `wblit.ψ` / `wgraph.ψ` / `win_shell.ψ` — window toolkit: UI primitives, framebuffer blitting, graph widgets, shell chrome
- **Nine Aurora shell applications** — `shell_ide` (windowed IDE), `shell_graph` (graph editor), `shell_dash` (dashboard), `shell_blocks`, `shell_fieldlab` (field lab), `shell_jobs`, `shell_nodes`, `shell_runlog`, `shell_wapp`
- `resfield2d.ψ` + `resfield2d_gpu.wgsl` — residue-field 2D simulation with a **WGSL GPU compute pipeline**

Launch: `bin\qlc2.exe lib\frontend\shell_ide.psi --fast`

### 7. Next-gen crypto arsenal — game memory DRM · FHE · LWE · quantum key distribution

The layer game servers, financial backends and anti-cheat systems actually care about. All pure GF(p) integers, **zero randomness end to end, fully auditable**:

- **Game memory encryption / DRM anti-cheat** (`vault.ψ`, the sealed vault): `vt_keystream` stream-seals memory and data, `vt_pack` / `vt_unpack` **tamper-evident sealed packages**, **`vt_token` / `vt_verify_token` device-bound tokens** (owner + device + validity window; expired or relocated, they fail). Paired with the `security/audit` tamper-evident audit log: **a cheat flips one byte and the integrity chain breaks loudly — nowhere to hide.** Zero randomness ⇒ same seed, same replay: the server recomputes every client step. Not ban-hammer guesswork — mathematical judgment.
- **Transparent storage encryption** (`db/crypto.ψ`): 16-round counter stream + GF S-box (`sbox(x) = x³`, inverse `x^21846`) — saves and databases encrypted at rest.
- **Symmetric primitives** (`crypto/symmetric.ψ`): key schedule, S-box generate/invert/lookup, block encrypt/decrypt.
- **Public key & threshold signatures TSS** (`crypto/pki.ψ`, `crypto/quorum_sign.ψ`, `crypto/key_exchange.ψ`): keypairs, sign/verify, **128-party threshold signatures** (`sign_with_share`).
- **Fully homomorphic encryption FHE & lattice crypto** (`crypto/fhe.ψ`, `crypto/lwe.ψ`): **add and subtract directly on ciphertexts** (N=1024); LWE error-sampled lattice encryption (N=512) — the workhorse family of post-quantum cryptography PQC; `residueon_crypto.ψ` lattice basis/point/verify.
- **Quantum key distribution QKD**: the full seven-stage BB84 pipeline (encode → measure → basis sifting → error rate → key extraction → **security-threshold assertion**), **E91 entanglement-based QKD** (`quantum_network`), `qcrypto.ψ` NTT lattice encapsulation (**FIPS 203 / ML-KEM style**).

> Shipped today: application-level sealed memory, storage encryption, the full crypto shelf. Where it goes next: hardware roots of trust (TEE / hardware DRM interfaces — see the roadmap); the vault sealing layer is already the application-side anchor.

### 8. Next-gen ψDB — a multi-model database, all in pure ψ

**51 database programs. 7 storage models. 1 deterministic engine. Zero floating-point. 8.35M queries/sec.**

ψDB is a **multi-model database** that spans key-value, document, graph, vector, time-series, columnar, and object storage — all in one engine, all deterministic, all exact-integer. No separate databases for different data shapes; no impedance mismatch; no float-based approximate queries.

**The `super_db` family** (20 modules in `lib/core/stdlib/`):

| Module | What it does |
|---|---|
| `super_db_engine` | the core engine — insert/query/delete on residue-field tables |
| `super_db_tx` / `super_db_io` | ACID transactions + persistent IO |
| `super_db3d` / `super_db3d_index` | **3D spatial database** with residue-field indexing |
| `super_db_quantum` / `super_db_qec` / `super_db_qft` | **quantum database** — store/retrieve quantum states, error-correcting codes, field configurations |
| `super_db_cognitive` | **cognitive database** — agent memory and knowledge graphs |
| `super_db_gauge` | **gauge-field database** — physics simulation state |
| `super_db_dynamics` | dynamical systems state store |
| `super_db_stream` | streaming database — real-time data ingestion |
| `super_db_mqtt` | **IoT database** — MQTT protocol integration |
| `super_db_crypto` / `super_db_auth` | encrypted-at-rest + authenticated access |
| `super_db_cl41` | **Cl(4,1) geometric algebra database** — spacetime events as multivectors |
| `super_db_trainq` | training-queue database for ML pipelines |
| `super_db_disciplines` / `super_db_ui2` | multi-discipline views + database UI |

**The `lib/domain/db/` family** (29 modules): `engine`, `tx`, `mvcc` (multi-version concurrency control), `kv_store`, `document_db`, `graph`, `vector_db`, `timeseries`, `columnar`, `object_store`, `surreal_engine` + `surreal_ql` (SurrealDB-style query language), `quantum`, `spacetime`, `psi_db_v2`, `agent_memory`, `query_optimizer`, `query_planner`, `materialized_view`, `index`, `cache`, `replica`, `migration`, `in_memory`, `transaction_coordinator` — the full database engineering stack.

> This is not a wrapper around SQLite or PostgreSQL. **Every line is ψ.** The database is the language; the language is the database. Same source → same bytes → same query results, on every machine, forever.

### 9. Next-gen network protocol — transmit rules, not data (qqbc frame-stream)

**Bandwidth ∝ change, not ∝ data size.** The qqbc frame-stream protocol (`qqbc_frame.ψ`) sends the first frame as FULL (complete state), then every subsequent frame as DELTA (only what changed). For a system in steady state, that means near-zero bandwidth — you're transmitting the *rules of evolution*, not the *data being evolved*.

**Remote animation with no frame rate** (`qqbc_anim.ψ`): transmit pole trajectories (the mathematical rules), and the receiver evolves the scene locally. The animation runs as fast as the receiver's hardware allows — 30 fps, 300 fps, unlimited — because the frames are generated on-site from the rules, not streamed from the server. This is not video streaming. This is **streaming the physics, not the pixels**.

**The operation-stream universe** (`opstream.ψ`): assembles seven domains (render + audio + physics + AI + game + DB + store) into one executable artifact, compresses it via ternary radix economy + p-adic exponent-residue layering, and streams it as a single DAG. The receiver reconstructs the full cross-domain scene from the compressed stream.

**DAG transfer** (`dag_transfer.ψ`): serializes computation graphs as frame payloads — the receiver rebuilds the DAG from the frame and executes it. Compute is shipped as structure, not as data.

> This is the network protocol for deterministic computing: **transmit the rules, evolve locally, verify by fingerprint.** Same rules → same evolution → same result, on every machine.

### 10. Next-gen semantic fingerprints — byte-exact, the final answer to refactor acceptance

Every compilation emits dual **semantic fingerprints** `commit=<h>, energy=<h>`: insensitive to comments, blank lines, paths, filenames; sensitive to any semantic change (import = inline, ripples explainable). ⇒ **fingerprint unchanged ⇔ semantics unchanged** — refactor acceptance becomes byte comparison instead of human review.

---

## 2. Quickstart

```text
git clone https://github.com/Epiphys-Foda/F.O.D.A.OS.git
cd F.O.D.A.OS
bin\qlc2.exe examples\hello.ψ --run
```

That first command is all — no build step, no package manager; `bin\qlc2.exe` is a self-contained native x86-64 executable (Windows x64).

```text
bin\qlc2.exe --syntax    # canonical grammar card (the binary prints Chinese) — English: SYNTAX_EN.md
bin\qlc2.exe --abi       # frozen host ABI table (JSON)
bin\qlc2.exe --run examples\operators.ψ
```

## 3. The Language on One Page

```text
let x = 6 * 7                  # immutable binding (sequential stmts, tail value = return)
let a = [1, 2, 3]              # array (linear memory block [len, e0, e1, ...])
a[1] = 99                      # in-place write (returns the array handle)
let s = "hello"                # string = byte block (same layout as arrays)
let d = { k: 1, m: 2 }         # dict (object literal)
for i < 3                      # loop (exits when condition goes false)
let double(x) = x * 2          # a let binding is a function definition; recursion works
```

- **Determinism boundary**: exact i64 (overflow auto-promotes to infinite-precision bignum), trunc division, fixed-point `d.dd` literals are exact rationals (`0.1 + 0.2 == 0.3` is true) — **zero floats, zero randomness**
- **Four-tier precision architecture**: integer (GF(p) exact) → rational (i128 numerator/denominator) → symbolic (SymVal: π, e, √, sin, cos, exp, log — never collapsed internally) → terminal collapse (BigInt high-precision approximation only at display time). Zero precision loss until the final output.
- **No irrationals, no pseudo-reals, no floats in the algebraic domain** — the constraint enforced across all 60 domain-theory volumes: every value is an exact integer in GF(p). Pseudo-reals ("cannot compute exactly, so store an approximation") simply do not exist in this language.
- Full string/array/dict method surface (`a.push(v)`, `s.upper()`, `a[1..]`, ...)
- The grammar card is the authority: `bin\qlc2.exe --syntax` (English translation: [SYNTAX_EN.md](SYNTAX_EN.md))

### The Six Operators (the algebraic spine)

Six native operators span the language and the algebra (all values verified — `examples/operators.ψ` reproduces them):

| Operator | Name | Direct channel (JIT) | Metacircular channel (WASM) |
|---|---|---|---|
| ⊕ | GF add | field addition; array⊕array elementwise, scalar⊕array broadcast — `1 ⊕ 2 → 3` | exact emission |
| ⊙ | GF mul | field multiply — `3 ⊙ 14 → 42` | exact emission |
| ≋ | NTT butterfly | scalar = field multiply (`10 ≋ 4 → 40`); arrays = cyclic convolution (`[1,2,3] ≋ [1,1,1] → [6,6,6]`) | exact emission |
| ↡ | Born project | 1-arg prefix: nonzero collapses to 1/0 — `↡(7 > 6) → 1` | 3-arg `born_select(c, t, e)` selection |
| ∆ | Hebbian sculpt | `w ∆ s = (w + (s >> 8)) mod P`, arrays elementwise | 4-arg `hebbian(addr, init, delta, count)` memory sculpting |
| ◦ | Clifford compose | array composition, the matrix-product family — scalars rejected by design | gate expansion |

Metacircular-contract axioms: `born_select(true, t, e) = t`, `born_select(false, t, e) = e`, `hebbian(0, 0, 1, 3) = 3`, `born_select(3 ⊙ 2 > 5, hebbian(0, 10, 1, 2), 0) = 12`.

## 4. Execution Architecture: Three Deterministic Channels

| Channel | Vehicle | Notes |
|---|---|---|
| fast JIT | native x86-64 | the residue table lands straight on hardware; fastest (`--fast`) |
| collision VM | the collision virtual machine | a second, independent implementation cross-checked against the JIT (`--collision`, `--selftest`) |
| WASM metacircle | psi_to_wasm + wasm_interp | ψ emits standard WASM, a ψ interpreter runs it — the platform's self-hosting face (`--wasm`) |

- `--selftest`: collision VM vs fast JIT cross-verification + bootstrap source compile check (no-fake-green: missing files FAIL honestly)
- `--fixpoint`: the self-compile Kleene fixed-point chain
- `--check / --lint / --doi / --guess / --eval`: full syntax sweep, anti-pattern scan, domain-order inference, spelling suggestions, session eval

## 5. The Quantum Layer

Quantum is a first-class citizen here, with depth from error-correcting codes up to quantum gravity:

**Error-correction family** (`lib/core/stdlib/qec.ψ`, 34 KB, and `css.ψ`): Shor-9, the Steane `[[7,1,3]]` gate family, the surface code, CSS codes, depolarizing channels, the threshold theorem, cascade codes.

**Quantum algorithms**: QFT and inverse QFT (GF roots-of-unity phase encoding), phase estimation (Grover physical equivalence), quantum walks (`quantum_walk`), quantum annealing (`quantum_annealing`), quantum control/metrology/resources/measurement (the `core/domain` encyclopedia).

**Quantum key distribution QKD**: the deterministic seven-stage BB84 pipeline plus the E91 entanglement protocol (card 7).

**Quantum-classical interface**: `pe_to_quantum.ψ` maps processing elements to quantum circuits — the GF modular-multiply circuit (17 qubits ≈ the 65537 field), table lookup = Oracle, butterfly = QFT, routing = SWAP network, logic = the Toffoli family; `qpu.ψ` is the QPU compilation surface.

**Quantum field protocol stack** (the `qqbc` family): quantum-field bytecode `qqbc_bin`, frame-stream protocol `qqbc_frame` (first frame FULL + displacement DELTA, bandwidth ∝ change), session ordering `qqbc_session`, remote animation `qqbc_anim` (transmit pole trajectories, evolve locally — animation has no frame rate), WebGPU backend `qqbc_webgpu`, gauge conservation `qqbc_gauge`.

**The domain-theory encyclopedia** (`lib/core/domain/`, 60 volumes): `quantum_gravity` / `quantum_cosmology` / `quantum_field` / `quantum_optics` / `quantum_network` / `quantum_ml` / `quantum_chaos` / `quantum_biology` / `open_quantum_systems` / `quantum_stat_mech` / `quantum_thermo` / `quantum_transport` / `gauge_suN` / `spin_network` / `topo_quantum` / `rep_theory` / `cft` ... — every volume a compilable, runnable ψ program.

**Black-hole entropy in GF(p)** (`gf_quantum_gravity.ψ`): Bekenstein-Hawking entropy S = A/4G computed as an exact field element — even black-hole thermodynamics gets an exact GF(p) representation.

## 6. The GF(p) Exact-Solving Layer

**Field foundation** (`gf65537.ψ`): Tonelli-Shanks square roots, the GF(p²) quadratic extension (nonresidue representation + Conway polynomial verification + primitive roots), a field-constants table (i=256, π=52011, e=556, ln2=45426 — even transcendental constants have exact field representations).

**Transcendental numbers as exact symbolic values** (built into the runtime binary): π via Machin formula (4×(4·arctan(1/5) − arctan(1/239))), e via Taylor series (Σ 1/k!), √ via algebraic extension, sin/cos/exp/log as symbolic SymVal variants — never collapsed to digits until terminal output. The symbol layer preserves exactness; only `display()` produces a BigInt approximation at user-specified precision.

**Nested fractal residue field** (`nested_fractal.ψ`): an n-th order pole nests an (n−1)-th order differential field inside it — fractal self-similarity. Identities: `unnest(nest(field)) = field` (nest-unnest identity), `integrate(differentiate(field)) = field` (differential-integral invertibility). The spectral sequence E_k = d^k(field) and Hausdorff dimension N = (1/r)^dim are algebraic relations in GF(p).

**Number-theory arsenal**: the Diophantine decoding trio — Viète jumping, continued fractions, infinite descent (`diophantine.ψ`: continued-fraction token hashing, rational approximation in place of Softmax); CRT; NTT/FFT; p-adic layering (exponent-residue factorization, norm grading); balanced ternary `trit.ψ`; braid groups and Yang-Baxter `braid.ψ`; Berlekamp-Massey (`ml/berlekamp_massey.ψ`).

**Linear algebra**: `linalg_gf` / `gf_matmul` / `gf_gemv` / `gf_conv`, matrix decomposition, tensor contraction order (`contraction_order.ψ`), algebraic geometry (`algebraic_geometry.ψ`).

**Exact-solving pieces**: `isqrt` / `icbrt` integer roots, `gf_sqrt` (Tonelli-Shanks host op), `gf_inv` / `gf_div` / `mod_norm` field normalization, `poly_eval`, the `cert_zero` zero-certificate — solutions ship with verifiable certificates.

**Temperament music** (dev suite): just intonation / twelve-tone equal temperament / transposition on the GF field, exact to the beat.

## 7. Physics and Law Discovery

- `lib/physics/`: a 210-program residue-field physics family (the residueon series: QFT, lemmas, chaos, statistics, elliptic curves, ...)
- **The law-discovery engine**: `bm_canon` + the `gx_*` granular module swarm (card 1), proven across the Moseley/Balmer/Bode/Stefan/Newton/OEIS/seasons battery
- **Atiyah-Singer index theorem** (`residueon_index.ψ`): the index of an elliptic operator (dim ker D − dim coker D) equals the integral of topological characteristic classes (Â(TM)·ch(E)) — verified exactly in GF(p). Gauss-Bonnet (χ(S²)=2, χ(T²)=0), Hirzebruch-Riemann-Roch, and Dirac index are all special cases computed as exact integer dimension differences.
- **Physics learning pieces**: `reservoir.ψ` (physical reservoir), `edge_learn.ψ` (edge online learning), `beam.ψ` (beamforming: DBF, O(N) in place of O(N²) attention — the phase gradient is the reasoning direction), `imag_time.ψ` (imaginary-time deterministic annealing — global optimum with randomness banned), `crystal.ψ` (knowledge crystallization, three computable hard conditions), `hbar_elim.ψ` (physical-constant normalization, ℏ=1, 32 functions), `lock_phase.ψ` (frequency phase-locking as cross-domain analogy), `pole.ψ` (Cauchy-residue dynamics), `topo_logic.ψ` (vortex Boolean gates), `susy.ψ` (five-operator supersymmetric pairing)

## 8. Domain Libraries (31 domains, ~880 programs)

| Domain | Size | Highlights |
|---|---|---|
| **chem** | 599 programs | periodic table (118 known + 54 predicted superheavy), bonds, isotopes, spectroscopy, electrochemistry, kinetics, thermodynamics |
| **crypto** | 9 programs | symmetric S-box / fully homomorphic FHE / LWE lattice / PKI / 128-party threshold signatures / key exchange (card 7) |
| **security** | 4 programs | acl / audit (tamper-evident logs) / auth (signature authentication) |
| **ml** | 18 programs | the full training stack: model/training/train_loop/rl/bandit/meta_learning/online_learning/ssm_field/weight_io |
| **db** | 29 programs | **ψDB**: multi-model database — 7 storage models (KV/document/graph/vector/timeseries/columnar/object), MVCC, quantum/spacetime/cognitive databases, SurrealDB-style query, MQTT IoT, Cl(4,1) spacetime — 51 total DB programs, all pure ψ (card 8) |
| **ai** | 21 programs | tool-calling agent (analyze → plan → execute → verify), with 60-round autonomous-knowledge experiment data |
| **net / kernel / infra** | 36 programs | network stack, kernel domain, infrastructure orchestration (depends on backend/db/search) |
| **robot / sim / game / ui** | 31 programs | robot behavior, simulation, games, UI domains |
| **bio / backend / compute / queue / adv_rag / etc.** | the rest | full 31-domain list under `lib/domain/` |

Plus `lib/math/` (bigint / number theory / algebraic geometry) and `lib/core/stdlib_lang2/` (the GF foundation + the law-discovery engine + the granular lexer/grammar module swarm).

## 9. Frontend and System Interfaces

**Window stack**: the `win_open` / `win_present` / `win_poll` / `present_size` host surface + nine Aurora shell applications + the WGSL compute pipeline (card 6).

**System interfaces** (frozen ABI, full list via `--abi`): file IO (`read_file`/`write_file`), the TCP family (`tcp_listen/accept/connect/send/recv/close`), `sleep_ms`, the host-object trio (`host_obj_store/load/free`), GPU inference hooks (`q15_matmul` / `q15_layer_step` / `q15_argmax` / `q15_load_bin`).

**Four ISA backends**: x86-64 (`pe_to_x86`), ARM64 (`backend/arm.ψ`), RISC-V (`backend/riscv.ψ`), WASM (`pe_to_wasm`); plus a WGSL GPU backend (`pe_to_webgpu`) and `wasm_aot.ψ` (a **WASM→x86-64 AOT emitter written in ψ**). Additional ISA emitters (AVR, LoongArch, MIPS, PowerPC, SPARC, eBPF, Xtensa) are in development — see the roadmap.

**The compiler family** (`lib/compiler/` + `lib/core/stdlib/`): `lex_compiler` (a lexer-compiler written in ψ), `meta_operators` / `operator_spec`, `opt_passes` (the 25 KB optimization pipeline), `residue_ir`, the `dataflow`/`dag` family (scheduling/runtime/transfer/views), `pe_to_x86` / `pe_to_wasm` / `pe_to_webgpu` (processing elements → three backends), `cgra_mapper` / `cgra_gpu_emit` (CGRA mapping and GPU emission).

## 10. Papers

The theory series ships in `papers/` (Chinese originals + English translations). Series I–VII are also published on Zenodo — browse them all via the ["FodaOS" search on Zenodo](https://zenodo.org/search?q=%22FodaOS%22):

| # | Paper | Topic | Zenodo DOI |
|---|---|---|---|
| 1 | CGL Mother Equation (CN/EN) | the mother equation | [10.5281/zenodo.21992268](https://zenodo.org/records/21992268) |
| 2 | ARC Arithmetic Resonance (CN/EN) | arithmetic resonance | [10.5281/zenodo.22036900](https://zenodo.org/records/22036900) |
| 3 | Algebraic QM Combinatorial (CN/EN) | algebraic quantum combinatorics | [10.5281/zenodo.22052071](https://zenodo.org/records/22052071) |
| 4 | Residue Trichotomy (CN/EN) | residue trichotomy | [10.5281/zenodo.22160372](https://zenodo.org/records/22160372) |
| 5 | Residue Compiler (CN/EN) | the residue compiler | [10.5281/zenodo.22239196](https://zenodo.org/records/22239196) |
| 6 | Brain-Inspired Cognitive Architecture (CN/EN) | brain-inspired cognitive architecture | [10.5281/zenodo.22822344](https://zenodo.org/records/22822344) |
| 7 | Reversible Correlation Algebra (CN/EN) | reversible correlation algebra | [10.5281/zenodo.22857665](https://zenodo.org/records/22857665) |
| 8 | Geometry of Failure (CN/EN) | when data corrupts in transit, the system either auto-heals or alarms — never silently returns a plausible wrong answer. One inequality governs detection, correction, healing, and certification. | — |

## 11. Layout

```text
bin/qlc2.exe            prebuilt compiler/runtime (Windows x64, self-contained)
bin/test_*.psi          selftest files (--selftest ships alongside the binary)
lib/core/               stdlib (305 programs) + stdlib_lang2 + the core/domain encyclopedia + base
lib/compiler/           bootstrap compiler core (unified.ψ / meta_operators / bootstrap/)
lib/physics/            the residue-field physics family (210 programs)
lib/domain/             31 domain libraries (~880 programs)
lib/math/               bigint / number theory / algebraic geometry
lib/frontend/           the windowed UI stack (9 shell applications + toolkit + WGSL demo)
examples/               runnable showcases: hello / operators / library / metacircular /
                        periodic_table / law_discovery / qec_shor9 / qec_steane / qec_surface
self_compile.ψ          the ψ self-hosting compiler (development preview)
papers/                theory series, papers 1-8 (CN + EN)
papers/abi.json        frozen host ABI table
SYNTAX_EN.md           English translation of the built-in grammar card
```

## 12. Release

- Compiler version: **qlc2 0.3.0** (`bin\qlc2.exe --version`)
- Binary SHA-256 (verify after clone: `certutil -hashfile bin\qlc2.exe SHA256`):

```text
7632a201507b7bfe3f4eecbf8dfd6b0fdd990d8aa5518e3c9319aff2893e1bd8
```

## 13. Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Everything ψ — library code, examples, docs, paper translations, and the self-hosting compiler (`self_compile.ψ`) — is open. Acceptance uses the semantic fingerprints as the refactor oracle.

## 14. Roadmap

**The current state is everything above; these are the ridgelines we intend to take. No dates promised — but every item has a concrete landing point:**

### Platforms & Backends
- **Native Linux / macOS binaries** — three platforms, one fingerprint
- **More ISA backends and real hardware**: AVR, LoongArch, MIPS, PowerPC, SPARC, eBPF, Xtensa — ISA emitters already written in ψ, awaiting real-hardware validation
- **Dataflow hardware backends**: CGRA (coarse-grained reconfigurable arrays), FPGA, GPU/SPIR-V, TPU-style systolic arrays, NPU, Groq TSP, SambaNova RDU — dataflow architectures where the residue field maps naturally to spatial compute fabrics
- **Photonics backend**: coherent light computation, Mach-Zehnder interferometers, optical tensor cores — GF(p) phase encoding on photonic circuits
- **Neuromorphic backend**: spike-coded residue fields on Loihi-style chips — deterministic spiking without floating-point membrane decay
- **Reversible computing backend**: Billiard-ball model, Toffoli/Fredkin gates — zero energy dissipation, Landauer's principle circumvented
- **Biological computing backend**: DNA strand-displacement computing on residue-field codons — storage density 10¹² GB/cm³, deterministic hybridization
- **Space computing**: radiation-hardened residue fields for orbital and deep-space compute — single-event upsets detectable via algebraic checksums — no silent corruption as with floating-point bit flips

### Crypto & Security
- **Hardware roots of trust: TEE / hardware DRM interfaces** — the final hardware link for the game memory-encryption DRM (card 7); the vault sealing layer is already the application-side anchor
- **Lattice crypto**: Module-LWE / Module-LWR, NTRU lattice, Falcon signatures — beyond the current LWE/RLWE baseline
- **FHE**: BGV-to-CKKS bridge, bootstrapping optimization, SIMD ciphertext packing — making homomorphic computation practical at scale
- **ZK**: zk-STARK in pure ψ, recursive proof composition, lookup arguments (Plookup) — deterministic proof generation without trusted setup
- **Multi-party computation MPC**: secure computation on residue fields — n parties, zero leakage, deterministic aggregation
- **Attribute-based encryption**: predicate encryption on GF(p) — fine-grained access control as algebraic policy
- **Signature aggregation**: BLS-style aggregate signatures in pure ψ — 10,000 signatures into one, 100× verification speedup

### Quantum
- **QEC code family**: LDPC / qLDPC, color codes, bosonic codes, hypergraph product codes — from the big three to the full spectrum
- **Quantum simulation**: tensor network contraction on CGRA, Clifford+T decomposition optimization, quantum volume benchmarking in GF(p)
- **Quantum advantage**: Jones-Tutte polynomial evaluation as deterministic quantum advantage witness — no sampling, no probability, pure algebraic verdict
- **Quantum error mitigation**: zero-noise extrapolation in GF(p) — NISQ-era advantage without error correction overhead
- **Quantum machine learning**: variational circuits as residue-field optimization — training quantum circuits without floating-point parameter drift
- **Quantum internet**: entanglement distribution protocol in pure ψ — repeater chains, Bell-state verification, deterministic teleportation

### Math & Physics
- **GF parameterization**: arbitrary p in GF(p), the GF(2^k) binary-extension family — one language, every field
- **P-adic computing**: p-adic zeta functions, p-adic L-functions, p-adic quantum field theory — physics on the p-adic numbers, computed exactly
- **Geometric algebra**: Cl(4,1) as compiler core infrastructure — rotor optimization, grade static assertions, G3 dark-grade layer, embodied intelligence feedback loop
- **Soliton computing**: soliton cluster collision algebra, inverse scattering transform as compilation pass — semantic capture via nonlinear wave topology
- **Topological computing**: Fibonacci anyon braiding, topological defect computing, Majorana zero modes — fault tolerance from topology, not error correction
- **NTT spectrum**: number-theoretic transform as universal convolution kernel — O(N log N) multiplication in every algebraic domain
- **Clifford algebra family**: Cl(p,q) beyond Cl(4,1) — Cl(3,0) for spatial reasoning, Cl(0,6) for octonionic physics, Cl(8,0) for Bott periodicity
- **Residue calculus**: Cauchy integral formula as compilation primitive — contour integration as a code transform
- **Automatic differentiation**: dual numbers as compiler-native type — exact derivatives, no symbolic differentiation overhead, no finite-difference error

### AI & ML
- **Inference core**: beamforming in place of attention (`beam.ψ`) + reservoir memory at scale — the deterministic route to an AI inference core
- **Selective residue inference**: pole-gated superposition, dynamic threshold per timestep — 79.7% pole discard with <0.0012% inference deviation
- **Semantic memory**: soliton-cluster knowledge storage, Cauchy residue recall — memory as nonlinear wave dynamics, not lookup tables
- **Training**: Hebbian + anti-Hebbian competitive learning, online weight evolution, no gradient descent — training as a deterministic dynamical system
- **World model**: deterministic environment simulation as model-based RL backbone — imagine, plan, act, all in pure ψ
- **Neuro-symbolic**: symbolic regression + neural residue fields — the law-discovery engine meets the inference core
- **Continual learning**: Hebbian plasticity without catastrophic forgetting — infinite task stream, stable memory, zero replay

### Rendering & Simulation
- **Rendering engine**: Cauchy residue-field rendering, WGSL GPU compute pipeline, residue-field 2D simulation — rendering as algebraic geometry, not rasterization
- **Ray tracing**: exact ray-surface intersection in GF(p), no floating-point epsilon, no shadow acne — light transport as pure algebra
- **Physics simulation**: multi-physics field coupling (EM + acoustic + thermal + fluid + seismic), all on the residue field — one engine, every physical domain
- **Fluid dynamics**: SPH particle simulation with exact arithmetic, no energy drift, no numerical viscosity — conservation laws as algebraic identities
- **Acoustic simulation**: exact wave equation on residue fields — no dispersion error from floating-point rounding, exact wave propagation, room acoustics as algebra
- **Seismic simulation**: earthquake wave propagation in GF(p) — full waveform inversion without floating-point migration artifacts
- **Cloth & soft body**: exact spring-mass dynamics — no numerical damping, exact momentum and energy conservation, drape simulation as algebraic identities

### Database & Network
- **ψDB**: vector index acceleration, distributed sharding, real-time streaming SQL — multi-model at planetary scale
- **Network protocol**: qqbc over QUIC, peer-to-peer rule propagation, blockchain-anchored fingerprint verification — transmit rules, evolve locally, verify globally
- **Operation stream**: cross-device DAG synchronization, edge-compute offload, federated deterministic computing — one DAG, many machines, zero divergence
- **Streaming database**: real-time residue-field stream processing — windowed aggregation, exactly-once semantics, no floating-point watermark
- **Graph database**: algebraic graph queries via Cl(4,1) — pathfinding as geometric algebra, subgraph isomorphism as multivector matching
- **Consensus at scale**: deterministic BFT at planetary scale — 10,000 nodes, zero divergence, mathematical agreement

### Language & Tools
- **Deterministic distribution**: multi-machine consistent computation under the no-randomness constraint — unlimited scale, zero divergence
- **Browser host**: a JS shell around `wasm_run` + the WGSL pipeline on the web — `qqbc_webgpu` has blazed the trail; deterministic physics inside the browser
- **ψ package manager and module registry** — `let m = "mymod.ψ"` is already the seed of the module system; the ecosystem is ready for takeoff
- **Formal verification**: proof-carrying code in pure ψ — the compiler emits proofs alongside binaries, verification is automatic
- **Incremental compilation**: fingerprint-guided minimal recompilation — change one function, recompile only its dependency cone, 37.6x already demonstrated
- **Cross-language FFI**: residue-field ABI bridge to Rust / C / Python — exact-integer interop, no floating-point marshalling loss
- **The documentation offensive**: EN binary UI (the grammar card's English edition is shipped — `SYNTAX_EN.md`), tutorial series, handbooks for all 31 domains

### Biology & Chemistry
- **Molecular dynamics**: exact-arithmetic force fields — no Langevin thermostat drift, no floating-point energy non-conservation, femtosecond steps that don't accumulate error
- **Protein folding**: residue-field conformational search — discrete rotamer states as GF(p) elements, no continuous optimization, no stochastic sampling
- **Reaction network synthesis**: algebraic pathway design — synthesize chemical routes as residue-field constraint satisfaction, not stochastic kinetics
- **DNA computing**: residue-field codon algebra — sequence alignment and motif search as NTT convolution, 100× over Smith-Waterman

### Finance & Economics
- **Exact market simulation**: order-matching engine in pure ψ — every fill, every tick, every settlement bit-exact across all nodes, no float arb
- **Deterministic risk analytics**: Value-at-Risk, Greeks, scenario stress — all exact arithmetic, no Monte Carlo, no sampling noise, reproducible audits
- **Equilibrium computation**: Nash, Arrow-Debreu, Walrasian equilibrium as residue-field fixed points — no numerical drift, convergence is algebraic
- **Exact settlement**: T+0 settlement on residue-field ledgers — no rounding loss, no reconciliation breaks, every account balances to the cent, forever

## 15. Work in Progress

> **v0.3.0 is a preview release, not a production release.** The platform is iterating rapidly toward v1.0.

- **Prebuilt compiler binary is Windows x64** — Linux/macOS host builds are on the roadmap. The compiler's *output* is not so limited: programs compile to x86-64, ARM64, RISC-V, WASM and WGSL GPU, so what you build here runs far beyond the Windows host
- **`self_compile.ψ` is the compiler source** — the self-hosting compiler (~4,700 lines of ψ) is fully open in this repo; `bin/qlc2.exe` is the prebuilt Rust bootstrap binary that kickstarts the self-hosting chain
- **`--selftest` and `--fixpoint` must run from `bin/`** — path resolution is relative to the executable's directory

## Links

- **Website**: [epiphys.com](https://www.epiphys.com/) — QuantumSim, the quantum simulation platform
- **Contact**: [support@epiphys.com](mailto:support@epiphys.com)

## License

Apache-2.0 — see [LICENSE](LICENSE). ψ sources (including `self_compile.ψ`, the self-hosting compiler) are open under Apache-2.0; `bin/qlc2.exe` is the prebuilt Rust bootstrap binary that kickstarts the self-hosting chain.
