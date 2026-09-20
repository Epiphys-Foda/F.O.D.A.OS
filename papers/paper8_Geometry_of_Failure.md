# FodaOS Unified Field Theory Series VIII: The Geometry of Failure — One Inequality Governs Detection, Correction, Healing, and Certification in Exact Arithmetic Channels

---

> **Contact**: support@epiphys.com · **Code**: https://github.com/Epiphys-Foda/F.O.D.A.OS · **Project**: https://www.epiphys.com/

**Author**: Pan JinWen [Cypher Pan]

**Abstract**. When rational values produced by exact linear-algebra systems are carried in a Redundant Residue Number System (RNS), a single corrupted channel raises a question that classical RRNS error theory does not address: does rational reconstruction still return the true value, and if not, is the failure at least detectable? We answer with one inequality. Let $M$ be a product of pairwise-coprime odd moduli, $B = \lfloor\sqrt{M/2}\rfloor$, $w = n/d$ a reduced rational with $\gcd(d, M) = 1$, and let the residues be corrupted on channels $C$ by non-zero units with $W(c) = \prod_{i\in C} m_i$. Then the rational reconstruction of the corrupted residue returns $w$ **if and only if** $W(c) \cdot \max(|n|, d) \leq B$ (**Budget Theorem**). The proof is a lattice-collinearity argument whose only analytic input — $2B^2 < M$ — holds automatically because $M$ is odd.

From this single result we derive: (i) the exact detection and correction boundaries for single and multi-channel corruption; (ii) the pool-sizing requirement for exact learning; (iii) a **heal/alarm phase diagram** — corrupted values inside the budget are silently corrected (free healing); outside, they are detectably wrong (free detection); never does the system return a plausible-looking wrong value without either healing or alarming; (iv) the **Band-Gap Theorem** — the onset of _decoys_ (deterministic wrong values indistinguishable from success) is exactly $\text{num}+\text{den} \geq \lceil M/(WB)\rceil$, with direction-dependent anisotropy in the (num, den) plane; (v) a **certificate mandate**: the ALARM-D outcome is locally indistinguishable from success, hence any consumption of exact-channel output requires a verifiable credential; (vi) a **certificate framework** — eight laws governing retrieval band-gaps, channel types, precision–rate curves, timing, bilateral certificates, stacks, and load-dimension projection — unified under the Budget Theorem as meta-certificate; (vii) the **price list** of the exact channel is closed: realized cost is a function of input geometry and readout width alone, independent of labels; and (viii) a **gradient-free verifiable learning machine**: end-to-end demonstration — frozen integer features, exact GF readout, integer deployment, certificate chain — test accuracy 1.000, zero gradients, zero floats.

All claims are validated by 30,000+ corruption cases (zero violations) across prime and composite moduli, exhaustive error spaces, knife-edge sweeps, and a cross-domain validation on elemental ionization energies from the periodic table. IEEE-754 binary64, used as a zero-redundancy contrast case, exhibits an _empty_ heal zone (0.00%) and a _99.98%_ silent-wrong rate — the exact RNS channel of comparable bit budget exhibits a full band structure with provable gap.

**Keywords**: RNS, CRT, rational reconstruction, error detection, exact arithmetic, verifiable inference, certificate, band gap, learning systems, DFL

---

# PART I: FAILURE GEOMETRY

## 1. Introduction

Two industrial trends are converging on verifiable inference arithmetic. The _quantization route_ compresses neural weights to ternary values $\{-1,0,+1\}$ (BitNet b1.58 [1]), with CPU inference kernels advertised as "fast and lossless" — pure integer accumulation, with no floating-point dequantization error. The _proving route_ (ZKML: EZKL, ZKTorch [2]) forces floating-point models into arithmetic circuits, and must quantize to fixed point first, paying proof overheads orders of magnitude above inference. Both currents seek the same substrate: discrete, deterministic, verifiable inference arithmetic.

This paper addresses the failure theory of such arithmetic, and it does so from a more radical premise: an _exact stack_ — one whose arithmetic is rational/finite-field with no approximation anywhere [3, 4]. Inside such a stack, in which least-squares learning, adjoint back-propagation, and CRT reconstruction are all exact end to end, the central question is no longer "how large is the error?" but rather: **when does the exact machinery break, and what does breaking look like?** Our answer is that breaking has a computable geometry, governed by a single inequality.

Concretely: when rational values produced by exact linear-algebra systems are carried in a Redundant Residue Number System (RNS), a single corrupted channel raises a question that classical RRNS error theory does not address. Classical theory classifies the _residue vector_; the exact stack consumes a _rational value_ read out of it by rational reconstruction. The question that matters at the point of consumption is: does reconstruction still return the true value — and if not, is the failure at least detectable? We answer with one theorem and its geometry: healing, detection, alarm, decoys, and pricing are all corollaries of one inequality on the reduced amplitude of the carried value.

### 1.1 Motivation: the paradigm boundary

Classical machine learning operates in a floating-point universe, and three of its pillars are specific to that universe: gradient descent iteratively approaches an optimum, $\lambda$-regularization shrinks variance, and large-sample averaging denoises. In the $\mathrm{GF}(p)$ exact universe all three pillars vanish, and each is replaced by a structurally different mechanism. Training reduces to a single exact linear solve; model selection reduces to pole counting; deployment reduces to integer arithmetic with certificates.

| #   | Floating-point universe         | $\mathrm{GF}(p)$ exact universe                          | Evidence                                                                                  |
| --- | ------------------------------- | -------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| 1   | Gradient descent                | Equation solving (one exact solve, no iteration)         | The gradient vanishes identically at the exact solution — decidable over $\mathrm{GF}(p)$ |
| 2   | $\lambda$-regularization        | Model selection (pole count = the semantic parameter)    | $\lambda$ sweeps leave the transported denominator no smaller — in practice larger        |
| 3   | Large-sample averaging denoises | Sampling diversity (distinct inputs = the rank resource) | Duplicate samples are redundant equations, not confirmation                               |

The first boundary is exact linear algebra: the normal equations $(\Phi^{\mathsf T}\Phi)\,w = \Phi^{\mathsf T}y$ are solved over $\mathrm{GF}(65537)$ by Gaussian elimination in one pass — no condition number, no rounding, no iteration (P-63). On the same Vandermonde system with $n = 30$, float64 normal equations incur a coefficient error of $9.85 \times 10^{24}$, while the $\mathrm{GF}$ solve is bit-exact; moreover the adjoint is exact back-propagation, so the gradient is not approximated but decided (P-64). The second boundary is that ridge regularization has no exact counterpart: sweeping $\lambda$ over $0\ldots10^8$ leaves denominators no smaller, so the floating-point motivation of ridge (variance shrinking) has no purchase in the exact register (LVI). The third boundary makes sampling diversity the primary resource: distinct inputs are what raise the rank of the design; repeated samples add redundant equations only (LIX).

Once learning itself is exact, the failure question moves to the _carrier_: an exact channel — an RNS carrying rationals with reconstruction at readout. The theory of §3–§5 answers when that channel returns the truth, when it fails cleanly, and when it fails dangerously; §6 converts the answers into engineering: pool sizing, phase diagrams, a closed price list, and a certificate mandate.

### 1.2 Contributions

1. **The Budget Theorem** (Thm. 3.4; P-74): a necessary and sufficient condition for exact reconstruction under corruption — one inequality, $\Pi_M(a') = w \iff W(c)\cdot\max(|n|, d) \le B$, proved by a lattice-collinearity argument whose only analytic input, $2B^2 < M$, holds automatically because $M$ is odd.
2. **Three-outcome refinement** (Thm. 4.1, Prop. 4.2): the alarm branch splits into HEAL / ALARM-N / ALARM-D, with a strict clean-domain criterion $B\,(d+|n|) < M/p_0$ under which no garbage can occur.
3. **The Band-Gap Theorem** (Thm. 5.1; P-79): the exact onset of _decoys_ — wrong values that present as perfectly valid rationals inside the reconstruction box — at $L = \lceil M/(W(c)\,B)\rceil$; the alarm phase is an anisotropic band, not a point.
4. **The $2B - W$ rule** (Cor. 5.2): for integral values the decoy onset is the tight integer line $W w \ge 2B - W$, with tightness witnesses on every pool tested.
5. **Cross-domain validation**: the same inequality governs elemental ionization energies from the periodic table (36/36 outcomes, zero violations), with the phase boundary at 4310 meV separating HEAL from ALARM elements.
6. **Certificate mandate**: the ALARM-D outcome is locally indistinguishable from success; hence any consumption of exact-channel output requires a verifiable credential.
7. **The price list** (closed): realized cost is a function of input geometry and readout width alone — independent of labels — and ridge regularization is not a compression lever.
8. **A gradient-free verifiable learning machine**: an end-to-end demonstration — frozen integer features, exact $\mathrm{GF}$ readout, integer deployment, certificate chain — with test accuracy 1.000, zero gradients, zero floats.

All claims are validated by 30,000+ corruption cases (zero violations) across prime and composite moduli, exhaustive error spaces, knife-edge sweeps, and cross-domain data. (Appendix A records 17,992 individually counted assertions; additional cases from unitemized scripts bring the total above 30,000.)

### 1.3 Novelty boundary

Redundant Residue Number System (RRNS) error detection and correction is classical, and we claim no priority on the existence of these capabilities. The canonical chain is Mandelbaum (1972) → Watson (1965) → Barsi & Maestrini (1973) → Yau & Liu (1973) → Sun & Krishna (1992–93) [5–9]: Mandelbaum initiated error correction in residue arithmetic [5]; Watson's Berkeley report formalized error detection and correction for redundant residue number systems [6]; Barsi & Maestrini derived the error-correcting properties of RRNS [7]; Yau & Liu gave correction algorithms [8]; and Sun & Krishna recast the entire subject as a coding-theory approach to error control [9]. Classical theory thus establishes, in the residue domain, the existence of detection and correction capability, with bounds and algorithms stated in the register of modulus products and redundant-channel counts.

Our contribution is the _exactification_ of this theory at the value domain and its extension to consumption semantics:

- **(a) Value-domain exactification.** The true/false dichotomy of the _returned value_ is decided by one comparison against the reduced fraction's amplitudes, _including the numerator term_. Classical RRNS bounds are stated in the modulus-product register; the reduced-amplitude form with the numerator corresponds to the internal-ledger correction P-68′.
- **(b) Passive self-healing.** In the HEAL phase, corruption annihilates automatically at readout — no active correction algorithm is invoked, in contrast with classical RRNS correction procedures.
- **(c) Consumption semantics.** The alarm branch splits into _clean failure_ (ALARM-N) and _confident garbage_ (ALARM-D). Classical detect/correct is a dichotomy of the residue vector; ours is a trichotomy of the value delivered to the consumer, and the third outcome changes the systems consequences (§4.3).
- **(d) Cross-domain universality.** The same inequality governs learning data, elemental chemistry (periodic table, 36/36), and genetic-code statistics — one geometry, many substrates.
- **(e) System integration.** A complete verifiable learner with zero gradients and zero floats, including a federated configuration with exact all-reduce and Byzantine detection (Part II).
- **(f) Experimental methodology.** Exhaustive error spaces with seed-deterministic, script-reproducible verification; every number in this paper is re-derivable from archived verifiers.

Beyond the RRNS chain: exact rational linear algebra has been used inside ML as a proof tool for network construction [10], but the $\mathrm{GF}(p)$ channel as a _learning/inference substrate_ had, to our knowledge, no occupying literature as of our literature search. We note (open problem O4) that the canonical chain above has been corrected at the bibliographic level and that full-text reading of all classical works remains pending.

---

## 2. Preliminaries

### 2.1 The RRNS setup

Let $m_1, \dots, m_k$ be pairwise-coprime **odd** moduli (odd primes in all experiments), with product $M = \prod_i m_i$, and define the reconstruction bound

$$B = \big\lfloor \sqrt{M/2} \big\rfloor .$$

The true value is a rational $w = n/d \in \mathbb{Q}$ in lowest terms: $\gcd(n,d) = 1$, $d > 0$, $n \neq 0$, with $\gcd(d, M) = 1$ and amplitudes $|n|, d \le B$. Its RNS image is the residue $a = n \cdot d^{-1} \bmod M$.

**Definition 2.1 (rational reconstruction).** $\Pi_M : [0, M) \to \mathbb{Q} \cup \{\bot\}$ maps $a$ to the unique reduced fraction $n'/d'$ satisfying $n' \equiv a \cdot d' \pmod{M}$, $d' > 0$, $|n'| \le B$, $d' \le B$; if no such fraction exists, $\Pi_M(a) = \bot$. The map is well defined: at most one such fraction exists, by Lemma 2.2.

**Lemma 2.2 (small-fraction uniqueness).** Any two points $(r_1, s_1), (r_2, s_2) \in [-B, B]^2$ with $s_1, s_2 \neq 0$ satisfying the same residue congruence $r_i \equiv s_i \cdot a \pmod{M}$ carry the same value: $r_1/s_1 = r_2/s_2$.

_Proof._ Subtracting the two congruences multiplied crosswise gives $r_1 s_2 - r_2 s_1 \equiv 0 \pmod{M}$. Each product has magnitude at most $B^2$, so $|r_1 s_2 - r_2 s_1| \le 2B^2 < M$. The strictness is automatic: $M$ is odd while $2B^2$ is even, so $2B^2 = M$ is excluded. A multiple of $M$ strictly smaller than $M$ in magnitude must be zero; hence $r_1 s_2 = r_2 s_1$, i.e., $r_1/s_1 = r_2/s_2$. $\blacksquare$

**Remark 2.3 (parity is structural, not coincidental).** The strict inequality $2B^2 < M$ is used in every uniqueness argument, and it holds _because_ $M$ is odd: $2B^2$ is even and $M$ is odd, so equality $2B^2 = M$ is impossible. The oddness itself is forced in practice — NTT-readiness (the prime containing a large power of two in $p - 1$) requires odd moduli throughout. The "coincidence" that makes the theory work is a design constraint in disguise.

**Remark 2.4 (the reduced register).** Every criterion in this paper consumes the amplitudes of the **reduced** fraction. Classifying on unreduced numerators systematically misclassifies: $6/2$ must heal where $5/2$ alarms (an internal verification pass). Reduction before classification is part of the decision procedure, not a courtesy (cf. §3.3).

### 2.2 The exact channel model

**Corruption model.** Corruption is supported on a nonempty channel set $C \subseteq \{1, \dots, k\}$ with non-zero unit offsets $\delta_i \in [1, m_i - 1]$ on each corrupted channel $i \in C$. The corrupted residue vector, merged by CRT, is

$$a' \;=\; a + \Delta \pmod{M}, \qquad \Delta \;=\; \sum_{i \in C} \delta_i \cdot \frac{M}{m_i}.$$

The **corruption weight** is the product of the corrupted channels' moduli,

$$W(c) \;=\; \prod_{i \in C} m_i,$$

and the **corruption lattice** is the set of integer pairs compatible with the corrupted residue,

$$L(c) \;=\; \big\{ (r, s) \in \mathbb{Z}^2 \;:\; r \equiv s \cdot a' \pmod{M} \big\}.$$

A reconstruction consumer sees only $a'$; the pair $(\Delta, W(c))$ is the complete description of the corruption that the theory needs. Note that $a' \equiv a \pmod{m}$ for every $m$ coprime to $W(c)$ — in particular $a' \equiv a \pmod{M/W(c)}$ — a fact used twice below (Props. 2.6 and 4.2).

**Proposition 2.5 (offset normal form).** Let $N_c = \sum_{i \in C} \delta_i \cdot W(c)/m_i$. Then

$$\Delta = \frac{M \cdot N_c}{W(c)}, \qquad \gcd\big(N_c,\, W(c)\big) = 1.$$

_Proof._ The identity $\Delta = \sum_{i \in C} \delta_i \, M/m_i = M \cdot \sum_{i \in C} \delta_i \, \big(W(c)/m_i\big) / W(c)$ is immediate. For the coprimality, fix $j \in C$ and reduce $N_c$ modulo $m_j$: every term with $i \neq j$ contains the factor $m_j$ and vanishes, while the surviving term gives $N_c \equiv \delta_j \cdot \prod_{i \in C,\, i \neq j} m_i \pmod{m_j}$, which is non-zero modulo the prime $m_j$ (all factors are units, $\delta_j \not\equiv 0$). Hence no $m_j$ with $j \in C$ divides $N_c$; since $W(c)$ is squarefree, $\gcd(N_c, W(c)) = 1$. The arbitrariness of the offsets $\delta_i$ is fully absorbed into $N_c$; nothing else about the corruption survives. $\blacksquare$

**Remark 2.6 (where the rationals come from).** In the motivating application the carried values are exact least-squares solutions: $(\Phi^{\mathsf T}\Phi)\,w = \Phi^{\mathsf T}y$ solved over $\mathrm{GF}(p)$ by one pass of Gaussian elimination — no condition number, no rounding, no iteration (P-63). The denominators of such solutions explode with dimension (at $d = 10$, measured denominators of order $10^{38}$; an internal measurement), which is why the carrier's amplitude budget is the binding resource and why the pool-sizing corollary C3 of §6 is an _a priori_ computable requirement rather than a post-hoc observation.

---

## 3. The Budget Theorem

### 3.1 Three lemmas

**Lemma 3.1 (in-box collinearity).** Any two points of $L(c)$ inside the box $[-B,B]^2$ carry the same value: if $(r_1,s_1), (r_2,s_2) \in L(c) \cap [-B,B]^2$ with $s_1, s_2 \neq 0$, then $r_1/s_1 = r_2/s_2$.

_Proof._ Both points satisfy the same corrupted congruence: $r_1 \equiv s_1 a'$ and $r_2 \equiv s_2 a' \pmod M$. Multiplying the first by $s_2$, the second by $s_1$, and subtracting gives $r_1 s_2 - r_2 s_1 \equiv s_1 s_2 a' - s_2 s_1 a' \equiv 0 \pmod M$. Each product is bounded by $B^2$ in magnitude, so $|r_1 s_2 - r_2 s_1| \le 2B^2 < M$, strictly since $M$ is odd (Remark 2.3). A multiple of $M$ strictly smaller in magnitude than $M$ is zero; hence $r_1 s_2 = r_2 s_1$ and the two values coincide. $\blacksquare$

Thus the entire in-box slice of the corruption lattice is _collinear through the origin in value_: the box never contains two different values, so whatever $\Pi_M$ returns for $a'$, it returns one value or nothing.

**Lemma 3.2 (value-$w$ lattice points).** For $(r,s) \in \mathbb{Z}^2$ with $s \neq 0$:

$$(r,s) \in L(c) \ \text{ and } \ r/s = w \quad\Longleftrightarrow\quad (r,s) = k\,(n,d) \ \text{ for some } k \in \mathbb{Z}\setminus\{0\} \ \text{ with } \ W(c) \mid k.$$

_Proof._ ($\Leftarrow$) Let $(r,s) = k(n,d)$ with $W(c) \mid k$. The value is $r/s = n/d = w$ by reducedness. For the lattice membership, reduce $k(n - d\,a')$ modulo $M$: since $d\,a \equiv n \pmod M$, we may write $n - d\,a' = n - d\,a - d\,\Delta = -\,d\,\Delta + M\ell$ for some $\ell \in \mathbb{Z}$, so the condition $k(n - d\,a') \equiv 0 \pmod M$ is equivalent to $M \mid k\,d\,\Delta$. Substituting the normal form of Prop. 2.5, $\Delta = M N_c / W(c)$ with $\gcd(N_c, W(c)) = 1$, this becomes $M \mid k\,d\,M N_c / W(c)$, i.e., $W(c) \mid k\,d\,N_c$, i.e., $W(c) \mid k\,d$ by the coprimality. In the working regime every prime factor of $d$ is smaller than the smallest pool prime, so $\gcd(d, W(c)) = 1$ and $W(c) \mid k$; in full generality the divisibility condition is $\big(W(c)/\gcd(d, W(c))\big) \mid k$. Hence $k(n,d) \in L(c)$. ($\Rightarrow$) Conversely, let $(r,s) \in L(c)$ with $r/s = n/d$. Since $w = n/d$ is reduced, $s/d = r/n =: k \in \mathbb{Z}\setminus\{0\}$ and $(r,s) = k(n,d)$. The lattice congruence reads $k\,n \equiv k\,d\,a' \pmod M$, i.e., $M \mid k(n - d\,a')$; by the identical computation this is equivalent to $W(c) \mid k\,d$, hence $W(c) \mid k$ in the working regime (generally $\big(W(c)/\gcd(d,W(c))\big) \mid k$). $\blacksquare$

Value-$w$ points of the corruption lattice are therefore _quantized_: the smallest ones are exactly $\big(\pm W(c)\,n,\ \pm W(c)\,d\big)$, and every other one is a larger integer multiple. No corruption, however chosen, places a value-$w$ point closer to the origin than the weight $W(c)$ times the true reduced pair.

**Lemma 3.3 (box intersection).** A value-$w$ point of $L(c)$ lies in the box $[-B,B]^2$ if and only if $W(c)\cdot\max(|n|, d) \le B$.

_Proof._ ($\Leftarrow$) If $W(c)\max(|n|,d) \le B$, the point $k(n,d)$ with $k = W(c)$ has component magnitudes $W(c)|n| \le B$ and $W(c)d \le B$: it is in-box, and it is a value-$w$ point of $L(c)$ by Lemma 3.2. ($\Rightarrow$) Any value-$w$ point is $k(n,d)$ with $W(c) \mid k$, $k \neq 0$ (Lemma 3.2), so $|k| \ge W(c)$ and $\max(|kn|, |kd|) = |k|\max(|n|, d) \ge W(c)\max(|n|, d)$. If the point is in-box, the left side is at most $B$, whence $W(c)\max(|n|,d) \le B$. $\blacksquare$

### 3.2 The main theorem

**Theorem 3.4 (Budget Theorem; P-74).** Under the setup of §2, for corruption on any nonempty channel set $C$:

$$\Pi_M(a') = w \quad\Longleftrightarrow\quad W(c)\cdot\max(|n|, d) \;\le\; B.$$

_Proof._ ($\Leftarrow$) Assume $W(c)\max(|n|, d) \le B$. By Lemma 3.3 the multiple pair $\big(n\,W(c),\, d\,W(c)\big)$ lies in the box and belongs to $L(c)$ (Lemma 3.2 with $k = W(c)$). By Lemma 3.1, all in-box pairs of $L(c)$ carry one common value — namely $w$. The Euclid loop underlying $\Pi_M$ terminates on a pair with $|n'| \le B$, $0 < d' \le B$, i.e., on an in-box pair; by Lemma 3.1 that stop pair carries the value $w$, and the returned fraction is reduced by the definition of $\Pi_M$. Hence $\Pi_M(a') = w$.

($\Rightarrow$) Assume $W(c)\max(|n|, d) > B$. By the contrapositive of Lemma 3.3, no value-$w$ point lies in the box. Two cases: if $L(c) \cap [-B,B]^2 = \varnothing$, the loop fails and $\Pi_M(a') = \bot$. Otherwise every in-box pair carries a value $v^* \neq w$ — Lemma 3.2 excludes $w$-valued in-box points, and Lemma 3.1 forces a single common value on all of them — and the loop returns $v^*$ or $\bot$. Both sub-outcomes are alarm outcomes: the true value is never returned. $\blacksquare$

**Remarks.** (i) _Odd moduli._ The only analytic input of the proof is $2B^2 < M$ (strict), which holds automatically because $M$ is odd (Remark 2.3); the boundary case $2B^2 = M$ is excluded by parity. No Diophantine approximation machinery is needed. (ii) _Reduced register._ The inequality consumes the reduced fraction's amplitudes; testing unreduced numerators misclassifies ($6/2$ heals, $5/2$ alarms; a verification pass) — cf. §3.3. (iii) _The $\delta_i$ arbitrariness_ is absorbed into $N_c$ by Prop. 2.5; the theorem's statement does not otherwise depend on the offsets. (The full $\varepsilon$-version of the proof and the divisibility fine print for $k$ are as in the archive, Appendix B.)

**Empirical confirmation (P-74/75/76).** 8,000 random corruption samples, 4,000 negative-numerator cases, and knife-edge scans across $\lfloor B/p_0 \rfloor = 4310$ (flipping on both sides of the boundary): agreement $1.0000$ — TP $= 6{,}663$, FP $= 0$, FN $= 0$, TN $= 1{,}336$ — zero violations. Composite-modulus pools add 2,800 further cases, again zero violations; all runs are exact integer/fraction computations, seed-deterministic.

### 3.3 Boundary sharpness

The Budget Theorem is not merely asymptotically correct: it attains bit-exact sharpness at its boundary. For pool primes $p_0 < p_1 < p_2$, $M = p_0 p_1 p_2$, $B = \lfloor\sqrt{M/2}\rfloor$, and corruption weight $W(c)$ acting on a value $v = \mathrm{num}/\mathrm{den}$ in lowest terms,

$$\mathrm{HEAL} \iff W(c)\cdot\max(|\mathrm{num}|, \mathrm{den}) \le B \quad\text{— equality included, no transition layer.}$$

Evidence, from three independent probe families (65 assertions, zero violations):

1. **Pointwise scans.** Integer scans around $\lfloor B/W \rfloor$: 11/11. Reduced-fraction scans: 26/26. Denominator-edge scans: 7/7. Every point tested flips exactly at the theorem's inequality, on both sides, with no dead zone.
2. **Channel independence.** Corrupting the _largest_ prime moves the boundary to exactly $B/p_2$: 9/9. The boundary tracks $B/W(c)$, not the corrupted channel's identity.
3. **The equality case.** Generically the equality $W\max = B$ is unreachable because $\gcd(W, B) = 1$; we reached it by _constructing_ pools with $W \mid B$ — three such pools, e.g. $\{101, 107, 1277\}$ with $B = 2626$ and equality point $w = 26$. All three equality points HEAL, confirming that the boundary belongs to the heal phase.

An earlier "8% transition-layer" hypothesis — a supposed band of indeterminate outcomes near the boundary — is refuted as a measurement artifact. Two implementation faults produce it: classifying with a predicate other than the theorem's own inequality $W\max \le B$, and failing to reduce fractions before classification. With the decision predicate set to the theorem's inequality and reduction enforced, the transition layer disappears entirely; the phase boundary is a sharp wall, not an 8%-wide fog.

---

## 4. Three Outcomes

### 4.1 The trichotomy

**Theorem 4.1 (three outcomes).** For single-channel corruption (channel $p_0$, margin $m = M/p_0$):

1. **HEAL.** If $p_0 \cdot \max(|n|, d) \le B$, then $\Pi_M(a') = w$. The corruption self-heals: correction is free.
2. **ALARM (value domain).** If $p_0 \cdot \max(|n|, d) > B$, then $\Pi_M(a') \neq w$. The true value is never returned.
3. **Sub-split (N vs. D).** If additionally $B\,(d + |n|) < m$, then $\Pi_M(a') = \bot$ — a _clean failure_ with no garbage possible. Otherwise garbage is possible, decided per-instance by the continued-fraction path of $a'/M$.

_Proof._ (1) is Theorem 3.4 with $W(c) = p_0$. (2): value-$w$ points of $L(c)$ require $p_0 \mid k$ (Lemma 3.2), placing all of them outside the box when $p_0\max > B$ (Lemma 3.3); the returned value, if any, differs from $w$. (3) is Proposition 4.2 below. $\blacksquare$

| Outcome     | Criterion              | Meaning                                      |
| ----------- | ---------------------- | -------------------------------------------- |
| **HEAL**    | $W(c)\,\max \le B$     | corruption self-heals (free correction)      |
| **ALARM-N** | box empty              | clean failure (returns $\bot$)               |
| **ALARM-D** | returns an alien value | deterministic garbage (plausibly legitimate) |

**Proposition 4.2 (clean domain).** If $p_0 \cdot \max(|n|, d) > B$ and $B\,(d + |n|) < m$, then $\Pi_M(a') = \bot$.

_Proof._ Suppose some in-box pair $(r, s) \in L(c)$, $s \neq 0$, existed. Since $a' = a + \delta_0\,m \equiv a \pmod m$ and $d\,a \equiv n \pmod{M}$ (hence modulo $m$), multiplying the congruence $r \equiv s\,a' \pmod{M}$ through by $d$ and reducing modulo $m$ gives $m \mid (r\,d - s\,n)$. But $|r|, |n| \le B$ and $s, d \le B$, so $|r\,d - s\,n| \le B\,(d + |n|) < m$; a multiple of $m$ strictly smaller than $m$ vanishes, forcing $r\,d = s\,n$ — the pair carries value $w$. This contradicts the alarm premise $p_0\max > B$ (Theorem 3.4). Hence no in-box pair exists and the loop returns $\bot$. $\blacksquare$

### 4.2 The D-possible domain and its CF characterization

Inside the D-possible regime ($B\,(d+|n|) \ge m$), the outcome is decided by the Euclid path: **D occurs if and only if the continued-fraction path of $a'/M$ admits an in-box non-$w$ convergent.** The structure is strongly non-uniform in the CF coefficients: when the first CF coefficient satisfies $a_1 < 1000$, the measured D-rate is $0.000$; the CF coefficient distribution tracks Gauss–Kuzmin (measured $P(a_1 \le 10) = 0.914$ against the theoretical $0.874$). Open problem O1 asks for a closed form of the N-vs-D split; it is CF-decidable algorithmically but admits no closed form known to us.

**Phase profile (k = 3, $M \approx 2^{58}$, $B \approx 2^{29}$, $\lfloor B/p_0 \rfloor = 4310$).** Heal zone: 1000/1000 HEAL. Clean zone: 618/618 ALARM-N (zero garbage). D-possible zone: HEAL 90 / ALARM-N 406 / **ALARM-D 506**. The profile D-rate rises monotonically with amplitude: $0 \to 0.31 \to 0.46 \to 0.49 \to 0.56$. Independent recheck of the HEAL integer criterion: 3999/3999 $= 1.0000$.

### 4.3 The certificate mandate

The ALARM-D value is **deterministic** (the same corruption yields the same garbage), **plausible** (a reduced fraction inside the box — it passes every local format check), and **locally undetectable** (the consumer holds no reference value to compare against). The conjunction of the three is the mandate: _consuming the exact channel without a certificate is an accident waiting to occur._ Any exact reconstruction output must carry a verifiable credential — a channel commitment, a CRT recheck, or an RRNS syndrome — before it is consumed.

The contrast with floating point sharpens the point. Float failures are noise-like errors: statistically suspectable, detectable in aggregate by their residual texture. ALARM-D returns a _clean, confident, wrong answer_. An uncertified exact channel is therefore more dangerous than a float, not less. Three tiers divide the guarantees, each with its own office: the Budget Theorem guarantees the value is _true_; the labels guarantee it is _useful_; the certificate guarantees it is _untampered_. This is the origin of the two-channel constitution — an exact channel crossed with a commitment channel, composed by CRT — and of its mandatory (not optional) status. Nor can an always-firing alarm substitute for this structure: an alarm that fires on essentially every interesting computation carries no information (§5, the IEEE-754 contrast); certificates must be _informative by construction_, which is precisely what the three-outcome geometry provides.

---

## 5. The Band-Gap Theorem

When corruption pushes a value past the heal boundary, reconstruction either fails cleanly (ALARM-N, returns $\bot$) or — far worse — returns a _decoy_: a wrong value that is a perfectly valid-looking rational inside the box. The band-gap theorem (P-79) locates the onset of decoys exactly.

**Theorem 5.1 (decoy onset, general form).** Let the corrupted value be $v = \mathrm{num}/\mathrm{den}$ in lowest terms. A decoy — a returned value $x \neq v$ with $x \equiv a' \pmod{M}$ and $|\mathrm{num}(x)|, |\mathrm{den}(x)| \le B$ — requires

$$\mathrm{num} + \mathrm{den} \;\ge\; L, \qquad L = \Big\lceil \frac{M}{W(c)\,B} \Big\rceil .$$

_Proof._ A decoy must appear as a boxed Euclidean state $(s, e)$ with $e \neq 0$: the $e = 0$ state is the healing convergent $s = \pm W$, boxed only in the heal zone (machine-checked over $5 \cdot 10^{5}$ states). Writing $a' = v + t\,(M/W)$ modulo the congruence, the state identity gives $\mathrm{den}\cdot r = s\cdot\mathrm{num} + E\,(M/W)$ with $E \neq 0$. Hence $|\mathrm{den}\,r| \ge M/W - |s\,\mathrm{num}| \ge M/W - B\,\mathrm{num}$, while the box constraint gives $|\mathrm{den}\,r| \le \mathrm{den}\cdot B$. Combining, $B(\mathrm{num} + \mathrm{den}) \ge M/W$, i.e., $\mathrm{num} + \mathrm{den} \ge M/(W B)$; since $\mathrm{num} + \mathrm{den}$ is an integer, $\mathrm{num} + \mathrm{den} \ge \lceil M/(W B) \rceil = L$. $\blacksquare$

**Corollary 5.2 (the $2B - W$ rule, integral slice).** For $\mathrm{den} = 1$: decoys require $w \ge \lceil 2B/W \rceil - 1$, equivalently

$$W\,w \;\ge\; 2B - W.$$

The bound is _tight_: on every pool tested, a corruption magnitude $c$ exists whose first decoy lands exactly on $\lceil 2B/W \rceil - 1$ (pool $\{101, 103, 107\}$: $w = 14$, $c = 5$; Mersenne pool: $w = 4096$, $c = 1$). Across five pools, exhaustive over all channels, all values in the gap, and all corruption magnitudes: **zero decoys below the bound; witnesses on it.**

**Band anisotropy.** The phase diagram in the $(\mathrm{num}, \mathrm{den})$ plane is governed by two different norms: the _heal_ boundary is the max-norm box $W\max \le B$ (Theorem 3.4), while the _decoy_ boundary is the $L_1$ line $\mathrm{num} + \mathrm{den} = L$ (Theorem 5.1). The gap between them has direction-dependent width — the arithmetic analogue of an anisotropic band gap in crystals. The structure is invisible to integer-only testing ($\mathrm{den} = 1$ is a measure-zero slice) and was found by a fractional-resolution audit: on the all-Mersenne pool $\{8191, 131071, 524287\}$, the max-norm "safe zone" contains 24,525 lying fractions while remaining exactly lie-free for integers (122,820 transmissions). An integer-only audit of this pool reports perfection; the fraction audit reveals the conduction band.

**$W(c)$ generality.** Multi-channel corruption (weight $W = p\,q$) yields the same CF structure $a' = w + t\,(M/W)$ and the same onset $\lceil M/(W B) \rceil$; verified on a 4-prime unbalanced pool $\{101, 103, 1153, 65537\}$: heal zone 300/300, gap 4,660 transmissions with zero decoys, tightness witness at the edge. The theorem is a statement about the weight, not about the channel pattern.

---

### 5.4 The Density of States Theory

The band-gap theorem is an _inequality_: it locates the line where decoys begin. It does not say how many decoys there are. This subsection upgrades the band-gap picture from an onset law to an exact distribution law: under uniform corruption, the probability that reconstruction returns _some_ value — true or plausibly false — is exactly the visible-point coverage of the reconstruction box, and in the scaling limit that coverage is the Basel constant $6/\pi^2$. The lying density of the value space is not a tunable parameter. It is a fixed point of arithmetic, with a computable density of states.

**Definition 5.3 (canonical visible pairs; density of states).** Fix an odd prime pool $M = \prod_i p_i$ and $B = \lfloor\sqrt{M/2}\rfloor$. A pair $(r, s)$ with $|r| \le B$, $1 \le s \le B$, and $\gcd(r, s) = 1$ is a _canonical visible pair_ (the sign convention $s > 0$ resolves the $\pm$ ambiguity of the value $r/s$). Let

$$N_{\mathrm{box}} \;=\; \#\{(r,s)\ \text{canonical visible}\} \;=\; 1 \;+\; 2\sum_{k=1}^{B} \mu(k)\,\big\lfloor B/k \big\rfloor^{2},$$

with $\mu$ the Möbius function. The _density of states_ of the value space is $\rho(M) = N_{\mathrm{box}}/M$: the exact fraction of residues on which $\Pi_M$ returns a value at all — the total weight of the conduction band.

**Theorem 5.4 (Farey density identity, P-80).** For $a$ uniform on $\mathbb{Z}_M$,

$$\Pr\big[\Pi_M(a) \neq \bot\big] \;=\; \frac{N_{\mathrm{box}}}{M} \;=\; \frac{1 \,+\, 2\sum_{k\ge 1}\mu(k)\,\lfloor B/k\rfloor^{2}}{M} \;\xrightarrow[\,B \to \infty\,]{}\; \frac{1}{\zeta(2)} \;=\; \frac{6}{\pi^{2}} \;\approx\; 60.79\%.$$

The identity is exact at every finite pool; $6/\pi^2$ is only its scaling limit, with correction $O(\log B / B)$.

_Proof._ Map each canonical visible pair to the residue $a = r\,s^{-1} \bmod M$. _(Injectivity.)_ If $(r_1, s_1)$ and $(r_2, s_2)$ share an image, then $r_1 s_2 \equiv r_2 s_1 \pmod{M}$; both products are bounded by $2B^2 < M$ ($M$ odd makes the inequality strict), so $r_1 s_2 = r_2 s_1$ as integers and $(r_1, s_1) = \lambda\,(r_2, s_2)$; positivity of both $s$-coordinates pins $\lambda = 1$. _(Surjectivity onto the non-$\bot$ fiber.)_ Conversely, if $\Pi_M(a)$ returns $n'/d'$ in lowest terms with $|n'|, d' \le B$ (denominator normalized positive), then $(n', d')$ is a canonical visible pair with $n' \equiv a\,d' \pmod M$. Hence the non-$\bot$ residues are in bijection with the canonical visible pairs, and the probability is $N_{\mathrm{box}}/M$ — no independence or equidistribution assumption is needed anywhere. _(Counting.)_ Möbius inversion over $k = \gcd(r, s)$ gives $\#\{(r,s) : k \mid r,\, k \mid s\} = (2\lfloor B/k\rfloor + 1)\lfloor B/k\rfloor$, so $N_{\mathrm{box}} = \sum_{k \ge 1} \mu(k)\,(2\lfloor B/k\rfloor + 1)\lfloor B/k\rfloor$; the classical identity $\sum_{k \le B} \mu(k)\lfloor B/k\rfloor = 1$ (inversion of the divisor sum) collapses this to exactly $1 + 2\sum_k \mu(k)\lfloor B/k\rfloor^2$. _(Limit.)_ Since $\lfloor B/k \rfloor^2 = B^2/k^2 + O(B/k)$, we get $\sum_{k\le B}\mu(k)\lfloor B/k\rfloor^2 = B^2\sum_{k \le B}\mu(k)/k^2 + O(B\log B) = B^2/\zeta(2) + O(B \log B)$; and $B = \lfloor\sqrt{M/2}\rfloor$ gives $M = 2B^2 + O(B)$, whence $\rho(M) = \big(2B^2/\zeta(2) + O(B\log B)\big)/\big(2B^2 + O(B)\big) = 1/\zeta(2) + O(\log B/B)$. $\blacksquare$

**Farey in quadruple.** The Möbius sum is the Farey sequence in disguise: $\sum_{k \le B} \mu(k)\lfloor B/k\rfloor^2 = 2\sum_{k \le B} \varphi(k) - 1$, whence the exact identity

$$N_{\mathrm{box}} \;=\; 4\,\big|\mathcal{F}_B\big| \;-\; 5, \qquad \big|\mathcal{F}_B\big| = 1 + \sum_{k \le B} \varphi(k),$$

for $\mathcal{F}_B$ the Farey sequence of order $B$ (verbatim at $B = 1, 2$; exact at every $B$). The conduction band of the RNS channel _is_ the Farey sequence, replicated four-fold across the signs of $(r, s)$ — which is why the lying density is governed by the Basel constant, the same constant that controls Farey growth $|\mathcal{F}_B| \sim 3B^2/\pi^2$.

**Experiment (three pools × 30,000).** Uniform residues were drawn on three pools — the mainline $\{65537, 131071, 786433\}$ ($M \approx 2^{58}$), the all-Mersenne $\{8191, 131071, 524287\}$ ($M \approx 2^{57}$), and the pedagogical $\{101, 103, 107\}$ ($M \approx 2^{20}$) — 10,000 draws each. In every pool, the empirical non-$\bot$ frequency agreed with the _exact finite-$N$ identity_ $N_{\mathrm{box}}/M$ within the $3\sigma$ binomial envelope: 0/30,000 deviations. The identity, not the limit, is what the experiment tests — and it passes exactly. The measured rates approach $0.6079$ from the finite-$B$ side; only the 20-bit pool shows a visible offset, of the size and sign the $O(\log B/B)$ term predicts.

**Physical meaning.** Theorem 5.1 says where lies begin; Theorem 5.4 says how many lies exist. Under uniform corruption the residue space splits $60.79\% / 39.21\%$ into plausible answers versus silence, and no engineering choice moves the split: pool geometry, channel counts, and prime sizes enter $\rho(M)$ only through the $O(\log B/B)$ correction. Design does not tune the conduction band; it can only move the payload relative to it. This is the precise sense in which the lying density is _controlled by_ the Basel constant — not approximated by it: at every finite pool the identity is exact, and $6/\pi^2$ is merely where the exact identity tends. The amplitude-conditioned phase profiles of §4.2 (D-rate $0 \to 0.56$) are slices of this density; Theorem 5.4 is the unconditional envelope.

**Theorem 5.5 (the ζ-ladder, P-81).** Let $V_d(B) = \#\{(x_1, \dots, x_d) \in [1, B]^d : \gcd(x_1, \dots, x_d) = 1\}$ count jointly visible points in the $d$-dimensional value space. Then

$$\frac{V_d(B)}{B^{d}} \;\xrightarrow[B \to \infty]{}\; \frac{1}{\zeta(d)},$$

and each added dimension re-prices the same law at a new zeta value. Two structural refinements complete the ladder. The _vector collapse rate_ — the probability that a uniformly corrupted $k$-component vector value survives as a plausible alternative vector — is

$$\frac{1}{\zeta(k+1)\,B^{\,k-1}},$$

and over the function field $\mathbb{F}_Q[t]$ the ladder terminates in an exact rational, the _function-field ceiling_

$$\Pr[\text{coprime}] \;=\; 1 - \frac{1}{Q}.$$

_Proof sketch._ The census is one Möbius inversion evaluated at $s = d$: $V_d(B) = \sum_{k \ge 1} \mu(k)\lfloor B/k \rfloor^{d} = B^d/\zeta(d) + O(B^{d-1}\log B)$ — the ladder is one theorem, not $d$ of them. For the collapse rate, two independent suppressions multiply: _arithmetic_ — the corrupted $(k{+}1)$-tuple $(\vec{n}\,', d')$ must be jointly primitive, an event of density $1/\zeta(k{+}1)$ in dimension $k{+}1$; _geometric_ — the corrupted ray must re-enter the box within $O(1)$ of the true value's ray, a tube of relative measure $B^{-(k-1)}$ in the $(k{+}1)$-dimensional residue space. At $k = 1$ the formula degenerates to $1/\zeta(2) = 6/\pi^2$: the scalar collapse rate is the density of states itself, and Theorem 5.4 is the first rung of its own ladder. For the ceiling: the function-field zeta function $\zeta_{\mathbb{F}_Q[t]}(s) = 1/(1 - Q^{1-s})$ is rational, so the same inversion returns $1 - 1/Q$ exactly, at finite degree, with no limit taken. $\blacksquare$

| $d$                              | $1/\zeta(d)$                | closed form          | provenance                                          |
| -------------------------------- | --------------------------- | -------------------- | --------------------------------------------------- |
| 2                                | 0.608                       | $6/\pi^{2}$          | Basel                                               |
| 3                                | 0.832                       | $1/\zeta(3)$         | Apéry's constant (irrational; no closed form known) |
| 4                                | 0.924                       | $90/\pi^{4}$         | Euler (even zeta)                                   |
| 5                                | 0.964                       | $1/\zeta(5)$         | irrationality of $\zeta(5)$ open                    |
| 6                                | 0.983                       | $945/\pi^{6}$        | Euler (even zeta)                                   |
| $k$-vector collapse              | $1/(\zeta(k{+}1)\,B^{k-1})$ | —                    | arithmetic × geometric suppression                  |
| function field $\mathbb{F}_Q[t]$ | $1 - 1/Q$                   | exact, finite degree | rational zeta (the ceiling case)                    |

**Experiment (dimension census; collapse ×39).** Census counts of jointly visible $d$-tuples — exhaustive at small $B$, Monte Carlo at large $B$ — converge to $1/\zeta(d)$ for $d = 2, 3, 4, 6$ with the predicted $O(B^{d-1}\log B)$ approach. In the three-pool $\delta(w)$ phase test, large-number collapse measured **39× below the scalar baseline** with zero out-of-band false positives — the order of the collapse law's geometric factor — and the tail cross-correlations of $\delta(w)$ vanish ($corr \approx 0$), confirming the arithmetic rather than stochastic origin of the residues. The rhythm-face extension of the same instrument (Farey complexity $=$ consonance) carries the ladder from pitch to rhythm: the zeta constants are audible, not merely countable.

**Physical meaning.** The value space has a density of states, and it is a crystallographic object. Per point, higher-dimensional values are _more_ plausible as lies ($1/\zeta(d) \uparrow 1$ — arithmetic generosity); yet the total collapse probability falls as $B^{-(k-1)}$ (geometric cruelty). The net winner is confinement: vector transport is self-protecting, and each added component buys a full factor of $B$. Dimension is therefore a design variable with a closed-form price — the first entry in the failure-geometry price list quotable without running a single experiment. That the constants are Basel, Apéry, and Euler's even-zeta forms means the failure landscape inherits the deepest table of analytic number theory: a lie in a three-dimensional value space is priced in Apéry's constant.

### 5.5 Anti-Lie Pool Scaling Laws

§5.4 counted the lies that exist. This subsection prices their _absence_. The question is the designer's: how much pool does it cost to guarantee that no single-channel corruption can lie at all? The answer is a closed form whose leading case is a sixth power.

**Definition 5.6 (lie-proof pool).** Let the payload ensemble have value scale $V = \max_w \max(|\mathrm{num}(w)|, \mathrm{den}(w))$ after P-68′ normalization, carried on $k$ odd prime channels $M = \prod_{i=1}^{k} p_i$ with $B = \lfloor\sqrt{M/2}\rfloor$. The pool is _lie-proof at $(V, k)$_ if no corruption pattern of single-channel weight ($W = p_i$) produces a decoy for any payload value. The two binding design conditions are

$$p_{\max}\,V \;\le\; 2B \quad (\text{band edge: Cor.~5.2 applied at the top of the range}), \qquad p_{\max} \;=\; M^{1/k} \quad (\text{strongest admissible balance; canon instance } M^{1/3}).$$

**Theorem 5.7 (sixth-power law).** A lie-proof pool at $(V, k)$ satisfies

$$M \;\ge\; V^{\frac{2k}{k-2}}\cdot 2^{-\frac{k}{k-2}}, \qquad\text{i.e.}\qquad M \;\ge\; V^{\,2+\frac{4}{k-2}}\ \text{up to the constant } 2^{-k/(k-2)};$$

in particular $k = 3$ forces $M \ge V^{6}/8$.

_Proof._ By the decoy-onset rule (Corollary 5.2), the first decoy under weight $W$ sits at $W\,w = 2B - W$; lie-proofness for all $w \le V$ under the heaviest channel therefore requires $p_{\max}(V+1) < 2B$, written $p_{\max}\,V \le 2B \approx \sqrt{2M}$. Balance caps the largest channel at the geometric mean: $M = \prod_{i} p_i \le p_{\max}^{k}$ gives $p_{\max} \ge M^{1/k}$, with equality exactly at the perfectly balanced pool. Chaining, $M^{1/k} \le \sqrt{2M}/V$, i.e. $V \le \sqrt{2}\,M^{(k-2)/(2k)}$, i.e. $M \ge (V/\sqrt{2})^{2k/(k-2)} = V^{2k/(k-2)}\,2^{-k/(k-2)}$. For $k = 3$: $M \ge V^6/8$. $\blacksquare$

The exponent has a two-term anatomy: $2k/(k-2) = 2 + 4/(k-2)$. The $2$ is classical — the clean-reconstruction requirement $B \ge V$, i.e. $M \ge 2V^2$ (C3, Wang's classical pool bound). The $4/(k-2)$ is the _anti-lie surcharge_: the extra exponent paid to guarantee not only that truth reconstructs, but that lies cannot.

| $k$      | exponent $2k/(k-2)$ | surcharge $4/(k-2)$ | pool quote @ $V = 10^{6}$                                                |
| -------- | ------------------- | ------------------- | ------------------------------------------------------------------------ |
| 3        | 6                   | 4                   | 118 bits ($M \ge V^{6}/8$)                                               |
| 4        | 4                   | 2                   | 81 bits ($M \ge V^{4}/4$)                                                |
| 8        | 2.67                | 2/3                 | 61 bits                                                                  |
| $\infty$ | 2                   | 0                   | $M \ge 2V^{2}$ (classical; the band edge relaxes onto the heal boundary) |

**Experiment (budget dynamics; the ladder lands on the law).** The pipeline's value scale inflates down its own stages: $V_0 = 400$ (9 bits, the input design $\Phi$) $\to V_1 = 2.3 \times 10^{6}$ (22 bits, the normal-equation matrix $\Phi^{\mathsf T}\Phi$) $\to V_3 = 4.6 \times 10^{25}$ (86 bits, the exact solution components). The sixth-power law prices each rung _before_ it is built: the floor $6\log_2 V - 3$ evaluates to 48.9, 123.8, and 508.5 bits — and the realized pool minima are **49, 124, and 509 bits**, landing exactly on the quote ($V$ +1 bit $\to$ pool +6 bits). Across the whole pipeline the value explosion is +77 bits and the priced pool demand +462 bits ($6 \times 77$): a 3×172-bit Proth pool ($M = 514$ bits) met the quote and delivered 8/8 bit-exact end-to-end runs. The exponent was confirmed by failure as well as success: the first-written $V^3$ sizing FAILED end-to-end — substituting the $p_{\max}$ constraint promotes $V^3$ to $V^6$ — in agreement with the independent $\max^6$ cross-check.

**Physical meaning.** The pool is a currency, and the sixth-power law is its exchange rate: every bit of value-scale inflation costs $2 + 4/(k-2)$ bits of memory — six-for-one at $k = 3$, the worst rate in the architecture. Channels are the only discount lever, and the discount is _superlinear_: adding channels does not add fault tolerance linearly; it divides the exponent. This converts pool design from folklore into arithmetic — the price of lying-proofness is quotable before any experiment runs, the exact-learning analogue of a supplier's fixed price list.

**Corollary 5.8 (ionization cascade).** _[(i) Shrinkage by the next prime.]_ Ionizing one further channel multiplies $W(c)$ by the next prime in line, shrinking the lie-free zone $\lfloor B/W(c) \rfloor$ — and with it the decoy-onset line $L = \lceil M/(W B) \rceil$ — by exactly that factor. _[(ii) Safe budget $k - 2$.]_ A $k$-prime pool tolerates at most $k - 2$ simultaneously ionized channels with exact recovery: $B^{*} = \prod(\text{moduli} \setminus \text{two largest})$ (C2) — two clean channels anchor every syndrome. _[(iii) Terminal rate.]_ In the fully ionized zone ($W = M$), the corruption offset map $(\delta_i) \mapsto a' = a + \sum_i \delta_i M/p_i \bmod M$ is surjective (CRT independence of the $M/p_i$), so $a'$ is uniform and the ALARM-D rate tends to $N_{\mathrm{box}}/M \to 6/\pi^2$ — the cascade terminates in the Basel constant.

_Proof._ (i) is multiplicativity of $W(c)$ in the budget inequality (Lemmas 3.2–3.3). (ii) is C2, the minimality of the two clean anchors. (iii): surjectivity is the CRT basis property of $\{M/p_i\}$; the terminal rate is Theorem 5.4 applied at the uniform limit. $\blacksquare$

**Experiment (progressive ionization).** Corrupting channels one at a time on the mainline pool, the measured lie-free boundary tracks $\lfloor B/\prod p \rfloor$ instance-by-instance — the shrinkage factor is always exactly the next prime — and once all channels are ionized, the D-rate saturates at $0.608$: the fully ionized channel _is_ the Farey ensemble of §5.4.

**Theorem 5.9 (IR retrieval immunity).** Fix a corruption-width budget $W \ge 1$. If the payload ensemble satisfies $\max(|\mathrm{num}(w)|, \mathrm{den}(w)) \le \lfloor B/W \rfloor$ for every $w$, then every transmission under every corruption pattern of weight $\le W$ heals: $\Pr[\Pi_M(a') = w] = 1$ — fidelity 100%, zero ALARM-N, zero ALARM-D.

_Proof._ Theorem 3.4: heal $\iff W(c)\max \le B$; by hypothesis $W(c)\max \le W\,\lfloor B/W \rfloor \le B$. $\blacksquare$

Immediate — and load-bearing. This is P-74's transmission-side reading: _compress the payload into the heal band, and corruption of that width becomes physically incapable of lying._ Immunity differs categorically from certification: a certificate detects a lie after the fact; immunity precludes the lie's existence. The two compose — IR immunity on the value domain, the commitment channel on the integrity domain — and their composition is why the two-channel constitution (§4.3) is sufficient rather than merely necessary.

**Pool expansion table (the periodic-table boundary migration).** Carrying elemental ionization energies (first 36 elements, NIST-scale integer meV), each added channel moves the cross-domain phase boundary $B/p_0$ by $\approx \sqrt{p}$ — across an entire ionization tier:

| channels | pool     | boundary $B/p_0$ | chemical verdict                            |
| -------- | -------- | ---------------- | ------------------------------------------- |
| $k = 2$  | $2^{37}$ | 3 meV            | all first IE beyond the band: **all ALARM** |
| $k = 3$  | $2^{58}$ | 4310 meV         | IE$_1$ all HEAL (36/36, zero violations)    |
| $k = 4$  | $2^{79}$ | 6,712,037 meV    | IE$_2$ mostly HEAL                          |

The migration is architectural, not chemical: the same 36 elements march ALARM $\to$ HEAL as channels are added, each channel worth roughly 21 bits of pool, i.e. a factor $1.3$–$1.6 \times 10^{3}$ of boundary. The phase boundary of chemistry is a property of the pool.

### 5.6 LWE × Band-Gap Duality

The final subsection leaves the defender's camp. The band that heals the RNS-CRT consumer and the band that secures an LWE cryptosystem are the same mathematical object read in opposite polarities — and the experiments below show the two camps measuring each other's walls.

**Definition 5.10 (the two bands).** The _heal band_ of the budget theorem is the set of corruptions erased by reconstruction: $W(c)\max \le B$ (Theorem 3.4). The _decryption band_ of LWE is the set of error residues erased by decryption: with $x = b - \langle a, s \rangle \bmod q$, correctness holds iff $x \in (-q/4,\, q/4]$. Both are sharp central-band membership predicates on a residue cycle; the dictionary:

| Band-gap side (RNS-CRT defender)                              | LWE side (cryptographer)                                    |
| ------------------------------------------------------------- | ----------------------------------------------------------- |
| modulus $M$                                                   | modulus $q$                                                 |
| heal band: $W(c)\max \le B$                                   | decryption band: $\lvert x \rvert < q/4$                    |
| corruption inside band $\Rightarrow$ erased (HEAL)            | error inside band $\Rightarrow$ erased (correct bit)        |
| corruption outside band $\Rightarrow$ ALARM / decoy           | error outside band $\Rightarrow$ decryption failure         |
| channel ionization ($W \to W \cdot p$)                        | key-bit flip ($s \to s \pm 2^{j}$)                          |
| terminal rate at full ionization: $6/\pi^{2}$ (Farey measure) | terminal rate under key ionization: $1/2$ (bandwidth ratio) |
| defender _buys_ band width with channels (§5.5)               | designer _spends_ band width to buy hardness                |

**Theorem 5.11 (LWE × band-gap duality, P-82).** _(i) Band identity._ The LWE decryption-correctness condition and the defender's heal condition are the same object — a sharp central-band test on a residue class, equality included, with no transition zone; the §5 sharpness carries over verbatim. _(ii) Key-ionization cliff._ Flipping one key bit remaps the decryption residue uniformly over $\mathbb{Z}_q$; the in-band rate falls $1.0 \to 0.499$ — full ionization of the key channel. _(iii) Deep-zone stability and the terminal-rate principle._ Beyond the cliff the in-band rate is flat at the bandwidth ratio $1/2$: no partial-key regime exists. In general, full ionization returns the measure of the plausible set — $1/2$ for an interval test (LWE), $6/\pi^{2}$ for Farey reconstruction (Corollary 5.8(iii)).

_Proof sketch._ (i) Both conditions are band-membership predicates on a residue; the sharpness argument of §5 (equality included, no fog band) is a statement about such predicates, not about RNS in particular. (ii) With $s' = s \pm 2^j$, decryption computes $x' = x \mp 2^{j}\,a_j \bmod q$; the flip coordinate $a_j$ is uniform on the sample, so $x'$ is uniform up to discrete-cycle boundary effects, and $\Pr[\,|x'| < q/4\,] = (2 \cdot q/4)/q = 1/2$ (finite sample: 0.499). (iii) Any effective uniform remap yields exactly the band measure — there is no intermediate value between $1.0$ and the terminal rate; the terminal rate itself is the measure of whichever set counts as _plausible_ on the consuming side. $\blacksquare$

**Experiment (the cliff).** On fixed LWE instances: intact key, in-band rate **1.000** — every bit decrypts; the heal band is fully occupied. A single flipped key bit: **0.499** — the full-ionization value, indistinguishable from the bandwidth ratio. Deep corruption (many-bit key damage): flat at **1/2**, no partial recovery, no plateau anywhere between 1.0 and 0.5. The decryption failure of a key-bit flip is total, instantaneous, and exactly the bandwidth ratio — the cryptosystem's own phase transition, as sharp as the heal boundary.

**Physical meaning.** Cryptography is deliberate engineering of the conduction band. The LWE designer seeds the channel with _intentional_ corruption so that every unauthorized view is an ALARM-D ensemble — clean, deterministic, plausibly legitimate, locally undetectable (§4.3) — and sells the heal band to the key-holder alone: decryption _is_ healing. The attacker runs the victim's failure geometry in reverse as a security boundary: the same sharp edge that gives the defender free self-repair is, read from outside, the wall no efficient adversary can cross; LWE hardness is the local indistinguishability of confident garbage, weaponized. Two research programs approached this wall from opposite sides — one from hardness, one from correctness — and the band-gap theorem is what they found when they met in the middle. Its dual-use character is the closing lesson of the geometry of failure: a band that heals is a band that hides, and the arithmetic that forgives the key-holder is, bit for bit, the arithmetic that blinds everyone else.

## 6. Corollaries and Cross-Domain Validation

### 6.1 Five corollaries

| Corollary                     | Statement                                                                                         | Source                             |
| ----------------------------- | ------------------------------------------------------------------------------------------------- | ---------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------- |
| **C1** single-error detection | $\lvert C \rvert = 1$ outside the heal regime $\Rightarrow \Pi_M(a') \neq w$ (value-domain alarm) | contrapositive of Thm. 3.4         |
| **C2** correction boundary    | single-error correctable domain $B^{*} = \prod (\text{moduli} \setminus \text{two largest})$      | $k = W(c)$ minimality in Lemma 3.3 |
| **C3** pool sizing (learning) | $M \ge 2\cdot\max(                                                                                | \mathrm{num}                       | , \mathrm{den})^2$ ($c = \varnothing$ reconstruction case; numerator-in-bound correction P-68′) | $\delta = 0$ case of Thm. 3.4 |
| **C4** phase diagram          | HEAL/ALARM two phases $=$ the two sides of Thm. 3.4 (refined by Thm. 4.1)                         | Thms. 3.4 + 4.1                    |
| **C5** multi-channel boundary | heal $\iff W(c)\max \le B$, for any $\lvert C \rvert$                                             | Thm. 3.4 directly                  |

**C3 in learning semantics.** Exact solutions of noisy least squares have denominators that explode with dimension (at $d = 10$, denominators of order $10^{38}$; an internal measurement). The pool-expansion requirement of an exact-learning task is therefore computable _a priori_ from Theorem 3.4's criterion — the price list of exact learning, quoted before any experiment runs.

**Detection and correction exhaustives.** Single-error detection 4600/4600; syndrome correction 7400/7400 (zero ambiguity); double-error detection 416,196/416,196; double-error correction 0/500 (the $\lfloor r/2 \rfloor$ boundary, as classical redundancy counting predicts). Multi-channel knife-edge: $k = 4$, two-channel corruption, 60/60 instance-by-instance agreement with the theorem (including reduction effects); mixed-mode 2000/2000.

### 6.2 Cross-domain validation

The Budget Theorem was derived in a learning context; it does not stay there. **Periodic table.** Elemental ionization energies (first 36 elements, NIST-scale integer values in meV) were carried in a 3-channel RNS (65537 / 1376257 / 1769473), with single-channel $+1$ corruption applied per element: **36/36 outcomes match the theorem's prediction, zero violations.** The phase boundary at 4310 meV cleanly separates HEAL from ALARM elements on the periodic table itself. **Genetic code.** Across 576 single-point mutations, silent mutations sit in the quiet phase at 24.0% against a 4.5% random baseline (5.3×, $p < 0.001$) — the same phase instrument, a different substrate.

### 6.3 The price list (closed)

| Parameter         | Lever                            | Effect                                      | Ledger     |
| ----------------- | -------------------------------- | ------------------------------------------- | ---------- |
| Input scale       | ↓ = price cut                    | amp monotone in scale; accuracy invariant   | Exp. XLVI  |
| Readout width     | knee = free; beyond = pure price | accuracy saturates; price climbs            | Exp. XLII  |
| Labels            | **irrelevant**                   | price trajectory identical across 5 regimes | Exp. XLV   |
| Ridge $\lambda$   | **not a lever**                  | amp flat (230 → 233b), $k$ flat (21)        | Exp. XLVII |
| Channel count $k$ | ↑ = price cut                    | capacity exponent doubles per added channel | —          |

The list is closed: realized cost is a function of input geometry and readout width alone, independent of labels, and ridge regularization is not a compression lever. It is grounded by a three-channel pricing study of the same noisy least-squares task under float64, ternary quantization, and GF-exact arithmetic: float error climbs steeply with task hardness ($2.4\mathrm{e}{-9} \to 4.8\mathrm{e}{+6}$) and is unknowable in advance; ternary quantization pays a constant structural tax (catastrophic under PTQ — BitNet's viability depends on full QAT); GF delivers zero error with an explicit, a-priori pool quota $k = 5/6/9/11$ for $d = 6\ldots10$.

The purchasing protocol in five verbs: **quote** the Hadamard bound a priori (label-free); **size** the readout at the saturation knee; **shrink** the input geometry to the minimum the quantization granularity permits; **settle** at the reduced amplitude; **verify** via certificate.

---

_Part II (§7 ff.) converts this geometry from post-hoc failure analysis into a decision theory: the certificate framework, the eight laws, and the harmlessness of certified silent corruption._

---

# PART II: CERTIFICATE THEORY

## 7. The Certificate Framework

### 7.1 Definition

**Definition 7.1 (Certificate).** A _certificate_ is a decision procedure attached to a specific query. Let `g` denote an **observable gap** — a quantity the consumer can measure on the values it actually holds (e.g., a score margin, a reconstruction margin) — and let `D` denote a **computable bound** — an a-priori or observational upper bound on the total perturbation the channel can inject into the decision-relevant quantity. The certificate is the predicate

> `observable gap ≥ computable bound`.

When the predicate holds, the consumer receives a **provable guarantee** for that query: the argmax is invariant under the channel noise, the value is exactly recoverable, or the answer is correct — the specific form depends on the consumption contract. When the predicate fails, the certificate **does not fire**, and the system must either **honestly reject** the query or fall back to an expensive exact path. A certificate never guesses across its own boundary: the negative branch is a verdict, not a failure.

Three properties make this a certificate rather than a heuristic. **Soundness**: the guarantee follows from the inequality alone, not from empirical accident; a fired certificate cannot be wrong without the bound itself being wrong. **Decidability**: the bound is computable without executing the expensive path being skipped, so the check is cheaper than the thing being certified. **Honesty**: rejection is an externally visible, first-class outcome (§9.3, question 5).

The remainder of Part II is organized around four questions any certificate deployment must answer (§7.2), grounded in the Budget Theorem as their common ancestor (§7.3), and answered by eight laws (§8) and their consequence — the harmlessness of silent corruption under certification (§9).

### 7.2 The Four Questions

| Question                     | Governing laws                                                    | One-line answer                                                                                                                                 |
| ---------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **Q1. What is certifiable?** | Channel type law (L2) × certificate rate–precision curve (L3)     | The _type_ and _magnitude_ of the channel noise determine whether a certificate region exists at all                                            |
| **Q2. Where to read?**       | Timing law (L4) × position allocation law (L5)                    | Whoever burns the signal: read _before the burner acts_ and _after the setting point_ — the burner, not convenience, fixes the readout position |
| **Q3. When to act?**         | Bilateral certificates (L6)                                       | Release ⟺ risk waiver **AND** benefit proof; rejection is a verdict, not a defect                                                               |
| **Q4. What is bought?**      | Certified skipping (L1, L2) × silent-corruption harmlessness (§9) | Compute savings (skip the expensive path) + immunity to all tampering inside the bound envelope                                                 |

Two of these questions are _existence_ questions (Q1, Q4): they ask what the channel permits. Two are _decision-placement_ questions (Q2, Q3): they ask where in the pipeline and at which trigger the certificate should be evaluated. The eight laws of §8 split along exactly this line.

### 7.3 The Budget Theorem as Meta-Certificate

Every certificate in this part is a projection of a single ancestor. The Budget Theorem (Part I, Thm. 1; internal P-74) states

> **HEAL ⟺ W(c) · max(|n|, d) ≤ B**,

the necessary and sufficient condition under which a value carried in a 3-channel RNS and corrupted on channels `c` reconstructs _exactly_. This is itself a certificate in the sense of Definition 7.1: the observable gap is the reconstruction box test, the computable bound is the budget `B`, and the guarantee is exact value recovery. Every subsequent law re-instantiates the same three roles on a different channel or a different decision point:

| Ancestor element (Budget Theorem)                               | Projection in the derived certificates                                                    |
| --------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------- | ----------------------------------------------------------------------------- |
| Budget `B` (admissible amplitude)                               | The bound `D₁+D₂` / `B_i` — the tolerable perturbation of the approximate channel         |
| Payload `max(                                                   | n                                                                                         | , d)` (the value to protect) | The _adversary of the gap_ — the score separation that must survive the noise |
| Channel width `W(c)` (how much corruption the channels can sum) | Channel width / precision / redundancy — how much perturbation the realization can inject |

Reading the table left to right is the master recipe for constructing certificates on new channels: identify what plays the role of the budget, identify the payload the gap must protect, and identify what plays the role of `W(c)`. The eight laws below are not analogies; they are this theorem evaluated at different points of the channel/decision space.

---

## 8. The Eight Laws

Throughout, the **certificate rate** of a channel is the fraction of production queries on which the certificate fires. All numbers below are deterministic and seed-reproducible; archive citations refer to the campaign's collision ledgers.

### 8.1 Law 1 — The Retrieval Band-Gap Theorem

**Statement.** For retrieval over a _static_ channel (weights fixed at load time; per-element perturbations `ε_i` and phase errors `δφ` frozen), let `S₁, S₂` be the top-2 accumulated scores. Then

> `gap = S₁ − S₂ ≥ D₁ + D₂ ⟹ the quantized argmax is unchanged`,

with per-candidate bounds `D_i = Σ_k [ ε_i + (a_{ik} + ε_i) δφ ]` that are **row-wise constant and query-independent**: they can be computed once per row at load time and reused for every query.

**Evidence.** 7,500 production queries, zero violations. The certificate rate traces the bit-width curve: **4-bit → 0%, 8-bit → 45.7%, 16-bit → 70.9%**.

**Consequence.** For static channels the certificate is read _at the input_, once — no timing analysis is required. L1 is the load-bearing instance of Q1/Q4: the certificate region exists, and inside it the entire re-ranking pass is provably skippable.

### 8.2 Law 2 — The Channel Type Law

**Statement.** **Multiplicative channels (truncation) have no certificate region; additive channels (quantization) have an enormous one.** This is the primary axis of Q1 — it precedes every question of bound tightness.

**Evidence.** At identical scale `V = 248,320`: truncation yields a certificate rate of **0.0% at every width** — its noise is proportional to the signal and therefore of the same order as the gap it must not destroy — while INT8 quantization yields **95.5–96.5%**, because quantization noise is bounded and decoupled from the signal magnitude.

**Corollaries.** (i) In a truncation-based two-stage architecture, Stage-2 full re-ranking is _never skippable_ — no certificate can exist on the truncated channel, so the cheap stage can never be trusted to nominate. (ii) In a quantization-based two-stage architecture, the full precision re-ranking pass can be replaced by a **top-2 recompute** at cost `O(2d)`: the L1-style certificate decides when even that is unnecessary.

The engineering moral is uncomfortable and useful: no amount of bound-craft rescues a wrong channel type. Channel repair (switch to quantization, add redundancy) strictly precedes certification (§9.3, question 1).

### 8.3 Law 3 — The Certificate Rate–Precision Curve

**Setup.** Production-scale GEMV with the a-priori Cauchy–Schwarz bound `B = √d · eps · ‖w‖₂ ‖h‖₂` on the inner-product perturbation.

| Channel      | Bound `B`                       | Certificate rate | Reading                                                                                                                                                                                                                                |
| ------------ | ------------------------------- | ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| fp64         | 1.0e-12                         | **100%**         | certificate-grade                                                                                                                                                                                                                      |
| fp32         | 5.5e-4                          | **99.5%**        | certificate-grade (bound ≪ typical gap ≈ 0.7)                                                                                                                                                                                          |
| fp16         | 4.52 (**> the signal itself!**) | 0%               | **bound-tightness wall**: the deterministic bound dies before the actual error does                                                                                                                                                    |
| bf16         | 36.2                            | 0%               | same wall, earlier                                                                                                                                                                                                                     |
| int8 per-row | empirical (row-calibrated)      | **96.5%**        | **scaling escape**: per-row normalization plus an observable check bypasses the a-priori dead zone |

The fp16/bf16 rows exhibit the _bound-tightness wall_: deterministic worst-case bounds degrade so fast with floating-point width that they exceed the signal itself while the channel's _actual_ error rate remains negligible. The bound, not the channel, is what fails.

**The Bernstein rescue: the dead zone is recoverable — the fourth zone exists.** Round-off noise is sub-Gaussian with `σ_δ = eps/√12`; the high-probability Bernstein bound is

> `B_p = √(2σ²L) + (2/3) M L`, with `L = ln(2/δ_p)`,

where `δ_p` is the tolerated failure probability per row.

| Channel | δ_p = 1e-3 | 1e-6  | 1e-9  | 1e-12 | Deterministic bound (control) |
| ------- | ---------- | ----- | ----- | ----- | ----------------------------- |
| fp16    | 99.5%      | 99.5% | 99.5% | 99.5% | 0%                            |
| bf16    | 99.5%      | 98.5% | 97.5% | 97.0% | 0%                            |

The fp16 bound tightens by **~2,000–7,500×** (4.52 → 6e-4 … 2.2e-3), with **zero empirical violations at every confidence level**. Two qualitatively distinct behaviors emerge: **bf16 exhibits the first genuine confidence–certificate-rate trade-off curve** (tighter `δ_p` monotonically costs rate), while **fp16 saturates** — its margin redundancy is so large that all four confidence levels coincide.

**Honest calibration.** At nominal `δ_p`, per-row empirical coverage is 94.5% (round-off is not strictly zero-mean). A `σ × 1.5` recalibration restores **100% coverage with the certificate rate unmoved** — the margin redundancy is ~400×. The rescue is robust across calibration error: `σ × 10` still certifies 97.5%, and only at `σ × 100` (still ≈ 26× tighter than Cauchy–Schwarz) does the rate fall, to 70.5%. **The rescue is robust to bound calibration: certification of low-precision channels is engineering-feasible, not a theoretical fantasy.**

**The final four zones of L3.**

1. **Certificate-grade** (fp32 and above): deterministic bounds suffice; rates ≥ 99.5%.
2. **Scaling-escape grade** (int8 per-row): a-priori bounds dead; per-row normalization plus observational checks yield 96.5%.
3. **Statistical certificate grade** (fp16/bf16): dead under deterministic bounds; rescued by probabilistic (Bernstein) bounds plus `σ`-calibration.
4. **Dead zone**: only channels with genuinely unbounded noise (e.g., truncation, L2) remain uncertifiable.

On real embeddings (`mamba-130m-hf`): row norms are heavy-tailed (3.40× spread); real hidden-state gaps fit i.i.d. extreme-value theory; the fp32 certificate-grade transfer holds (99.3–100%); int8 suffers a heavy-tail penalty of −10 to 35 points. The same collision established a _completeness_ condition: the certificate must be taken in **full-field form**, `s_a − B_a > max_{j≠a} (s_j + B_j)`; the cheaper top-2 check is incomplete under heavy-tailed bounds (3 false certificates observed). Open remainder: true residual-stream hidden states (non-embedding proxy) and per-channel scaling.

### 8.4 Laws 4–5 — The Timing and Position Laws

**Law 4 (Certificate timing).** For time-varying systems, the certificate must be read **after the setting point**. On the resonance-consistency workload, the _same certificate quantity_ certifies **0.8%** of cases when read from the initial margin, and **70.5%** once read after phase-lock. The mechanism is worst-case exposure: an initial reading must survive the _entire_ subsequent dynamical contraction, whereas a post-lock reading needs only to survive the residual jitter. The certificate did not improve; its placement did — an 88× rate gain from timing alone.

**Law 5 (Readout position allocation; generalizes Law 4).** **The readout position is determined by who burns the signal.** Two dynamical morphologies demand opposite placements:

- _Amplifying_ dynamics (resonant-cavity: coincidence is amplified over time) → read **after the setting point** (Law 4).
- _Burning_ dynamics (anchor dynamics: the coincidence signal itself is consumed/destroyed by the evolution) → read **at the input, statically**. For burning dynamics, "wait for stability, then read" is **structurally infeasible** — the quantity the certificate needs no longer exists downstream.

L5 converts L4 from a case study into an allocation rule: classify the dynamics as amplifying or burning; the placement follows. (The paired instance — anchor release CR2 — reads `margin₀ + m0_max` statically at the input and is constructive; see Table 6.)

### 8.5 Law 6 — Bilateral Certificates

**Statement.**

> **Act ⟺ risk waiver (`margin ≥ τ_cert`) AND benefit proof (`completion space ≥ τ_ben`).**

A one-sided certificate — risk waiver alone — licenses over-action: releasing at `c = 1.0` on the risk side alone over-triggers. Adding the benefit side repairs the excess (**+0.037** on the outcome measure) while **preserving mid- and low-cue benefits to the last decimal**. Conceptually, L6 mechanizes two distinctions in a single predicate: _the right to judge is not the right to crystallize_ (a verdict holder needs a second, positive Showing before acting), and _honest refusal_ — the AND-false branch is exactly the mechanization of declining to act, emitted by the same predicate that licenses action. L6 is the Q3 answer: certificates do not merely gate risk; they must price benefit on the same trigger.

### 8.6 Law 7 — The Certificate Stack Law

**Statement.** Certificates of different provenance are not competing alternatives; they compose as a **stack**:

- **Bound certificates** (cheap, incomplete coverage) forever serve as the **first gate**;
- **Constructive certificates** (expensive, full coverage) serve as the **final adjudication**.

For the hybrid: **total cost = nomination cost + gate-pass rate × final-review cost**, and **reliability = final-review reliability** — since the constructive tier never errs, the composed system inherits its zero-violation guarantee while paying constructive-tier costs only on gate passes. **Evidence: dual-domain.** GEMV domain and wave-field domain, same stack conclusion in both.

The stack is the operational form of the three-tier spectrum of §9.2: the tiers are levels of a **trust chain**, with the cheap tier narrowing and the exact tier settling. "Fast channel nominates; exact channel judges" is the stack's division of labor, anticipated informally by Part I's certificate mandate and completed here as an architecture.

### 8.7 Law 8 — The Load Dimension Law: the Unified Law

**Statement.** **Any projection that compresses a complex / signed / high-dimensional payload into a low-dimensional real scalar burns exactly the coordinates the downstream decision needs. The repair is always the same: add the burned coordinates back.**

One law, three independent appearances:

| Appearance | Scenario                          | Burned coordinate      | Measured cost                                                      | Repair                        |
| ---------- | --------------------------------- | ---------------------- | ------------------------------------------------------------------ | ----------------------------- |
| 1 (XC)     | `(Σ h·W)²` intensity ranking      | **sign**               | true-argmax survival 38.7% (synthetic) / **31.7% (real pipeline)** | signed channel                |
| 2          | `√(\|h\|·\|W\|)` geometric kernel | **bilinear structure** | recall tax 5–18 pts                                                | linear kernel                 |
| 3  | `Re(⟨Φ, ψ⟩)` real-part projection | **relative phase**     | completion agreement −16 to −20 pts                                | complex orthogonal projection |

**Failure-structure addendum: same-sign row reversal.** When an entire row's payload carries one sign — the _normal case_ for language-model activations (measured negative fraction on `mamba`: 71.6%) — absolute-value ordering is the **exact reverse** of true-value ordering: the true argmax ranks _stably last_. Squaring is not a mild degradation on real LLM workloads; it is an inversion.

**Instrumentation: the law as an audit tool.** The law's mechanism generates **code-audit signatures** directly — sort-after-squaring, real-part extraction, `√`-kernels, `abs` accumulation. Scanning **772 files** with these signatures confirmed the latent P1 defect: the legacy squaring kernel still live in the four retrieval paths  of four inference binaries — and quantified the real-pipeline damage at **68.3% of positions necessarily wrong (CRITICAL)**. The audit answers exactly one question about any candidate site: **after this value was computed, were the burned coordinates added back?** L8 thus closes the loop from theory to tooling: a law with three manifestations, one invariant repair, and a mechanical auditor.

**Evidence base.** Table 6 consolidates the campaign's certificate instances (all deterministic, seed-reproducible):

| Certificate instance    | Channel                      | Bound                       | Zero violations      | Certificate rate / yield                   |
| ----------------------- | ---------------------------- | --------------------------- | -------------------- | ------------------------------------------ |
| Bragg retrieval         | INT8 amplitude + b-bit phase | `D₁+D₂` (row-wise constant) | 7500/7500            | 0–70.9% (bit-width curve)                  |
| Self-healing dictionary | 3× RNS checks                | CRT identity                | 1000/1000            | single-channel correction; blind spot 9e-5 |
| Two-stage skip          | INT8 weights                 | `ε·‖h‖₁`                    | 0 in-bound flips     | 60.2% → 96.5% (with scale)                 |
| Resonance consistency   | coincidence dynamics         | `margin(m)`                 | ✓                    | 0.8% → 70.5% (timing)                      |
| Anchor release CR2      | input-side static            | `margin₀ + m0_max`          | constructive         | hallucination 0% + benefits preserved      |
| CDS scheduling          | CR2 + halting                | `margin` stall              | same                 | capability 95% + steps −60%                |
| Floating-point GEMV     | fp32 / fp64                  | Cauchy–Schwarz              | ✓                    | 99.5% / 100%                               |
| Budget meta-certificate | RNS 3-channel                | `W·max ≤ B`                 | 168/168 cross-domain | the campaign's ancestor form               |

---

## 9. Silent Corruption Harmlessness

### 9.1 Detection ⊆ Immunity

The float line of this campaign's experiments poses an apparent contradiction. In its **alarm role**, float is a catastrophic channel: 99.98% of corruptions are _silent lies_, producing no anomaly signature whatever — the alarm function, which keys on detectable signatures, is blind. Yet Law 3 certifies fp32 as a 99.5% certificate-grade channel. Both measurements are correct, because **the two roles are independent**, and — the resolution — **the certificate role covers exactly the alarm role's blind spot**.

> **Proposition 9.1 (Harmlessness).** A consumer carrying a gap certificate with bound `D` is immune to any corruption of total amplitude ≤ `D` — **including every undetectable tamper that falls inside the rounding envelope**. Such corruption cannot change the certified answer. In symbols: **"undetectable" ⊆ "unflippable."**

The two roles answer different questions. The **alarm role** answers _"has anyone touched this?"_ — it requires signatures and fails silently in their absence. The **certificate role** answers _"is this answer right?"_ — it requires only a bound, and succeeds precisely where signatures are absent, because a tamper too small to trip any detector is also too small to cross the certified gap. An approximate float pipeline whose consumers hold certificates thereby obtains **detection-free correctness guarantees** at the argmax level: the undetectable corruption has been rendered **impotent corruption**. It is in this precise sense that certification _harmlessly absorbs_ silent corruption — not by seeing it, but by making it irrelevant.

### 9.2 The Three-Tier Certificate Spectrum

Classified by the _source of the guarantee_ (strength increasing):

| Tier                               | Source of guarantee                                         | Instances                                                                                         | Calibration dependence                                  |
| ---------------------------------- | ----------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------- |
| **Bound certificate**              | worst-case / probabilistic bounds on an approximate channel | L1 retrieval band-gap; L3 precision curve                                          | per-model calibration required (`τ` = safety parameter) |
| **Set / distribution certificate** | set invariance / distributional distance                    | top-k set certificate; sampling total-variation                                              | same                                                    |
| **Constructive certificate**       | exact-channel reconstruction (no bound to violate)          | RNS-CRT: 3×15-bit, **0 violations / 4.96 M trials**, exact margin readout | **zero calibration** (`τ` = policy parameter)           |

**The exact-certificate upgrade law.** Promoting a conservative bound certificate to a constructive reconstruction **demotes `τ` from a safety parameter to a policy parameter**: the threshold no longer guards against nature (the reconstruction is exact; there is nothing to be wrong about) and may be tuned freely for throughput or latency policy. This is a change in the _semantics_ of the threshold, not merely its value.

**Division of labor (final form).** **The INT8 approximate channel handles throughput (nomination); the RNS exact channel handles gating and final adjudication (verdict) — fast channels nominate, exact channels judge.** This is the complete form of the certificate mandate sketched in Part I: not a warning that consumption requires credentials, but a standing architecture that manufactures them — the bound tier gating, the constructive tier settling, composed as the trust chain of Law 7.

### 9.3 Engineering Checklist: The Five Deployment Questions

1. **What is the channel type?** Multiplicative/truncation → repair the channel first (switch to quantization, add redundancy); certification is out of the question (L2).
2. **Is the bound precomputable?** Row-wise constant bounds are the top priority (L1); empirical bounds require double scoring and are admissible only in rollback-capable pipelines.
3. **Will the signal be burned?** Burning-type dynamics: read at the input; amplifying-type dynamics: read at the setting point (L4/L5).
4. **Does the action have a benefit side?** Risk waiver without benefit proof → over-action (L6).
5. **Is the rejection path honest?** Uncertified queries must carry an externally visible marker (the hallucination firewall); rejection is a verdict, not a failure.

A deployment that answers all five has, by construction, an instance of the framework of §7 on the channel it actually runs — and its silent corruption has been made harmless in the sense of §9.1.

---

# PART III: THE CONTRAST CASE

## 10. IEEE-754 as a Zero-Redundancy Code

### 10.1 The Empty Heal Zone

The band-gap theorem locates the onset of decoys for a redundant channel. The natural control experiment is to apply the _identical three-outcome instrument_ — HEAL / clean failure (ALARM-N) / silent wrong (ALARM-D) — to a channel with no redundancy at all. IEEE-754 binary64 is exactly that control: every 64-bit pattern decodes to a legitimate value, so its failure geometry is trivial and severe. Applying the instrument to the same value distribution under single-bit-flip corruption:

| channel       | bit budget                    | HEAL  | clean fail (ALARM-N) | silent wrong (ALARM-D) |
| ------------- | ----------------------------- | ----- | -------------------- | ---------------------- |
| float64       | 64 bits                       | 0.00% | 0.03%                | **99.98%**             |
| RNS heal zone | 49 bits (3 × 17-bit residues) | 100%  | 0%                   | 0%                     |
| RNS band gap  | 49 bits (3 × 17-bit residues) | 0%    | 100%                 | 0%                     |

float64 has an _empty_ heal zone (no redundant bit exists to absorb a flip), a _near-empty_ clean-fail zone (only flips landing on NaN/Inf patterns: 1/4000 ≈ 0.03%), and a conduction band that is everything else. The exact RNS channel of comparable bit budget exhibits the full band structure — a heal zone, a provable gap, and a decoy region whose onset is a theorem — and does so on a strictly smaller budget: 49 bits against binary64's 64. (Verifier 15.)

### 10.2 Why IEEE-754 Structurally Lacks a Band Gap

Detection is a coding property, not a computational one: a code detects an error class if and only if that class maps valid patterns to invalid patterns, and mapping validity requires redundancy. binary64 allocates all 64 bits to payload (1 sign, 11 exponent, 52 significand); the encoding map is a surjection onto its entire pattern space, so the redundancy is exactly zero and the syndrome alphabet is the singleton {0} for _every_ corruption event. The minimum distance is d_min = 1. It follows that the three-outcome instrument degenerates by necessity, not by tuning:

- the heal zone is empty because there is no surplus bit whose value can contradict the payload — healing is the absorption of corruption by redundancy, and there is nothing to absorb with;
- the alarm zone shrinks to the two all-ones exponent patterns (NaN/Inf, ≈ 1/4000 of single-bit flips), which are themselves legitimate format outcomes rather than integrity alarms — the format _defines_ them as ordinary values of the arithmetic;
- the silent-wrong zone is the complement: 99.98% of flips conduct.

The gapless channel is therefore not a defect of any particular floating-point implementation; it is the necessary failure geometry of any zero-redundancy value encoding. No bit-level audit of binary64 can produce a band structure, for the same reason no audit of an identity code can produce a syndrome.

The IEEE inexact flag does not close the gap. It fires on ordinary rounding in essentially every interesting computation; an alarm that always fires carries no information — its mutual information with the _corruption_ event vanishes because its marginal probability is ≈ 1 under benign operation alone. The flag reports the arithmetic's own rounding, not the arrival of an adversary, and cannot separate the two. In the vocabulary of §4, binary64 possesses no native ALARM: the alarm branch of the instrument exists for it only as imported hardware (§11.3).

The certificate line sharpens the contrast rather than resolving it. A float channel with bounded noise can carry _certificates_ (fp32/fp64 GEMV certified at 99.5%/100% under a Cauchy–Schwarz bound, §11.3), so for certificate-carrying consumers "undetectable" ⊆ "unable to flip": any corruption of magnitude within the bound, including all tampering hidden inside the rounding envelope, cannot change the argmax. But certificates are an additive purchase on top of the channel; the channel itself, as a code, still offers nothing. The alarm role ("has this value been touched?") and the certificate role ("can the answer still change?") are independent, and only the redundant channel provides the first natively.

### 10.3 The Exact RNS Contrast

The exact RNS channel of comparable bit budget — three pairwise-coprime odd moduli at or below the 17-bit scale, M on the 2⁴⁹ scale: 49 bits, fifteen bits _fewer_ than binary64 — exhibits the complete band structure on that smaller budget:

1. **Heal zone with a bit-exact boundary.** HEAL ⟺ W(c)·max(|num|, den) ≤ B, equality included, no transition layer: pointwise scans 11/11, reduced-fraction scans 26/26, denominator-edge scans 7/7, constructed equality points (e.g. pool {101, 107, 1277}, B = 2626, equality at w = 26) all HEAL — 65 assertions, zero violations.
2. **A provable gap.** Decoys require num + den ≥ L, L = ⌈M/(W(c)·B)⌉; the integer corollary (2B−W rule) W·w ≥ 2B − W is tight on every pool tested ({101, 103, 107}: first decoy at w = 14 with c = 5; Mersenne pool: w = 4096 with c = 1). Five pools, exhaustive over channels, gap values, and corruption magnitudes: zero decoys below the bound, witnesses on it.
3. **Band anisotropy.** The heal boundary is the max-norm box W·max ≤ B; the decoy boundary is the L1 line num + den = L; the gap between them has direction-dependent width. On the all-Mersenne pool {8191, 131071, 524287} the max-norm "safe zone" contains 24,525 lying fractions while remaining exactly lie-free for integers (122,820 transmissions) — structure invisible to integer-only testing (den = 1 is a measure-zero slice).

The band structure is also purchasable at two price points. A channel that _never lies_ (all values kept in the gap: num + den < L) requires M ≥ W²·max²/2, versus M ≥ 2W²·max² for a channel that _heals everything_ — a 4× smaller pool (2 bits) for the weaker, safer guarantee. Safety is cheaper than healing because clean failure needs no surplus, only a proof that surplus cannot be counterfeited.

> **Summary.** You do not buy reliability by computing correctly; you buy it by spending redundancy on a band gap — an arithmetic region where lying is _provably impossible_.

# PART IV: SYSTEM INTEGRATION

## 11. The Gradient-Free Verifiable Learning Machine

### 11.1 Architecture

A complete end-to-end system demonstrating every component of the exact stack. Six stages, all integer-valued:

1. **Task.** Concentric rings classification, 500 training / 100 test points.
2. **Features.** Frozen random integer features, 5×16, quadratic-augmented, zero-training: no learned parameters upstream of the solve.
3. **Model selection.** Greedy GF rank pruning, 17 → 15 columns: rank, not regularization, is the selection lever.
4. **Readout.** Exact GF solve of the normal equations (ΦᵀΦ)w = Φᵀy over GF(p), carried through a 21-channel CRT and rational reconstruction; the solve is bit-equal to the arbitrary-precision Fraction reference in 15/15 coordinates.
5. **Deployment.** Integer inference via common-denominator scaling; the serving path executes no rationals and no floats.
6. **Certificate chain.** GF certificates bound to each readout; tamper detection 10/10.

**Test accuracy 1.000; zero gradients; zero floats in the training and serving paths.** (Verifier 9, 5 assertions.)

Two paradigm boundaries are exercised by design. First, gradient descent is replaced by a single exact solve: the gradient vanishes identically at the exact solution, and its vanishing is GF-decidable — there is nothing to iterate on and nothing to tune. Second, λ-regularization is replaced by rank-based model selection: the denominator budget is managed by column pruning, not shrinkage (ridge was independently falsified as a compression lever — its floating-point motivation, variance contraction, has no GF counterpart; its statistical gain and its transportability are two separate effects).

### 11.2 Federated Deployment

The system was validated in a federated configuration in which the data never leaves the nodes:

- **8 nodes** compute local integer normal equations over private shards;
- **exact all-reduce** via BFS-tree gather + broadcast — ring topology: 8 rounds; complete graph K₈: 2 rounds; zero double-counting, zero approximation: the aggregation is an exact integer sum, not an average;
- the federated GF solve is **bit-equal to the centralized solution**, 15/15;
- a **Byzantine node is detected** via the commitment ledger. (Verifier 10, 6 assertions.)

The all-reduce is worth stating precisely: because the aggregation operator is exact integer addition of normal-equation accumulators, the distributed pipeline inherits the centralized guarantee bitwise — "distributed" changes the communication schedule (8 rounds on a ring, 2 on K₈), not the arithmetic.

### 11.3 The Certificate Instance Table

The learner's own certificates are one instance of a campaign-wide certificate class. Merging the learning-line and certificate-line results:

| certificate instance    | channel                | bound                       | zero violations      | certified rate / benefit                                             |
| ----------------------- | ---------------------- | --------------------------- | -------------------- | -------------------------------------------------------------------- |
| Bragg retrieval         | INT8 amp + b-bit phase | D₁ + D₂ (per-row constants) | 7500/7500            | 0–70.9% (bit-width curve: 4-bit → 0%, 8-bit → 45.7%, 16-bit → 70.9%) |
| self-heal dictionary    | three-RNS check        | CRT identity                | 1000/1000            | single-channel correction; blind spot 9e-5                           |
| two-stage skip          | INT8 weights           | ε·‖h‖₁                      | 0 in-bound flips     | 60.2% → 96.5% (scale ↑)                                              |
| resonance consistency   | coincidence dynamics   | margin(m)                   | ✓                    | 0.8% → 70.5% (timing)                                                |
| anchor release CR2      | input-side static      | margin₀ + m₀,max            | constructive         | hallucination 0% + benefit retention                                 |
| CDS scheduling          | as above + halting     | margin stall                | as above             | capability 95% + steps −60%                                          |
| floating-point GEMV     | fp32/fp64              | Cauchy–Schwarz              | ✓                    | 99.5% / 100%                                                         |
| Budget meta-certificate | RNS three-channel      | W·max ≤ B                   | 168/168 cross-domain | campaign ancestor                                                    |

Three remarks.

**(i) The Budget Theorem is the ancestor.** Every row instantiates the schema "observable gap ≥ computable bound ⟹ provable guarantee for this query; else honest refusal or fallback": the budget B projects to the bound (D₁ + D₂, ε·‖h‖₁, √d·eps·‖w‖₂‖h‖₂), the load max(|n|, d) projects to the protected margin, and the channel width W(c) projects to the channel precision/redundancy. The 168/168 cross-domain record of the meta-certificate spans the periodic-table validation (36/36) among its domains.

**(ii) The instances form a three-pole spectrum by source of guarantee.** _Bound certificates_ are cheap with partial coverage (Bragg retrieval with per-row, query-independent constants — certifiable at the input; GEMV under Cauchy–Schwarz, where fp64 certifies 100% and fp32 99.5%, the fp16/bf16 a-priori dead zone is rescued probabilistically by a Bernstein bound with ~2000–7500× tightening at zero empirical violations, and int8-per-row reaches 96.5% only through row-scaling escape with observable checks). _Set/distribution certificates_ cover list and sampling consumers (top-k sets, sampling TV). _Constructive certificates_ are exact-channel reconstruction with unbounded validity: 3×15-bit RNS-CRT, 0 violations in 4.96 M transmissions, margin read exactly, zero calibration — τ demoted from a safety parameter to a policy parameter. The poles compose as a stack, not a menu: bound certificates gate, constructive certificates adjudicate — the fast channel nominates, the exact channel decides. The two-stage skip row shows the economics: with the ε·‖h‖₁ gate (Stage-1 flip 1.00%, zero in-bound violations), 60.2% of Stage-2 work is certifiably skippable as a conservative lower bound, rising to 96.5% at scale; the CDS row adds the halting criterion (margin stall), holding safety identical to the never-release baseline (hallucination 0%) while retaining 95% capability and cutting steps by −60% (released queries ~10 steps vs a fixed 24).

**(iii) The certificate rows are what make §10's float channel usable.** A channel that lies silently 99.98% of the time under flip corruption can still certify argmax-stability for bounded consumers: the alarm role and the certificate role are independent, and the certificate covers the alarm's blind spot. Timing and placement are governed by two further laws: the certificate is read _after_ the settling point (resonance consistency: 0.8% at initialization → 70.5% after lock-in, the same certificate quantity — an initial reading must survive the entire dynamical contraction in the worst case), and its _placement_ is dictated by who burns the signal (amplifying dynamics read at the settling point; anchor dynamics, which burn the coincidence signal, must read statically at the input — hence the CR2 row, released under margin₀ + m₀,max with a constructive guarantee and hallucination 0%).

# PART V: WAVE FIELD FAILURE DYNAMICS (§14–§16)

*Continuation of Parts I–IV (§1–§13). Parts I–II located failure geometry in exact arithmetic channels and built the certificate framework on top of it; Part III contrasted IEEE-754 as the band-gap-free channel; Part IV integrated the machinery into deployable systems; Part XIII gives the synthesis and open frontiers. This part extends the geometry to genuinely dynamical substrates: the GF(65537) cavity wave field of the collision engine (§14), the anchored and anchor-free Kuramoto fields under U-curve scheduling (§15), and the CGL (complex Ginzburg–Landau) domain with its resonance cavities (§16). All experiments are deterministic and seed-reproducible; archive citations refer to the campaign collision ledgers. The recurring question is the one this paper has asked of every channel: not *does it work*, but *what does its failure look like, when does it warn, and what is the geometry of the boundary*.*

---

## 14. GF Wave Field Three Properties

### 14.1 Setup: cavities, propagators, drives

The collision engine carries its state as a _cavity register_: per-cavity field amplitudes $e_k \in \mathrm{GF}(p)$, $p = 65537$, each rotated by a per-cavity propagator $\omega_k \in \mathrm{GF}(p)^{\times}$ and driven by injection events $u(t)$. The scan kernel advances the cavities by the affine recursion

$$e_k(t+1) \;=\; \omega_k\, e_k(t) \;+\; u(t), \qquad k = 1, \dots, K,$$

with the cavities decoupled (the propagator is diagonal in the cavity index) and the drive $u(t)$ common. Whether this machinery constitutes _genuine field dynamics_ — as opposed to a precision computation instrument — is not a rhetorical question but a decidable one. Mathematical structure requires three properties: **propagation** (a state that evolves under a closed-form law), **superposition** (responses to composed events compose), and **time reversal** (the evolution is invertible). All three were executed as exact GF(65537) experiments (wave-field verdict run); every claim below is a bit-exact statement, not a numerical approximation.

### 14.2 The three properties

**Theorem 14.1 (Propagation).** For every cavity $k$ and every horizon $T \ge 1$, the scan recursion admits the closed-form solution

$$e_k(T) \;=\; \omega_k^{\,T-1}\, u_0 \qquad\text{(impulse drive } u(1) = u_0,\; u(t) = 0 \text{ for } t > 1\text{)},$$

and, for a general drive, the exact convolution

$$e_k(T) \;=\; \omega_k^{\,T-1} e_k(1) \;+\; \sum_{t=2}^{T} \omega_k^{\,T-t}\, u(t).$$

Both hold _per-cavity exactly_ in $\mathrm{GF}(65537)$ — verified cavity-by-cavity, step-by-step, zero deviations.

_Proof._ By induction on $T$. Base: $e_k(1) = u_0$. Step: assume $e_k(T) = \omega_k^{T-1} u_0$; then $e_k(T+1) = \omega_k\, e_k(T) = \omega_k^{T} u_0$, the drive term vanishing for $t > 1$. The convolution form follows by unrolling the recursion and applying the same induction to each summand; all exponent reductions live in $\mathrm{GF}(p)$, where Fermat's little theorem gives $\omega_k^{p-1} = 1$ for every nonzero propagator, so no coefficient can leave the field. $\blacksquare$

**Physical meaning.** The pulse response is a pure phase history: amplitude is _never_ created or destroyed, only rotated by $\omega_k^{T-1}$. The scan kernel is a unitary-in-the-algebraic-sense evolution — a propagator, not a filter.

**Theorem 14.2 (Superposition).** Let $R[u]$ denote the field response map from a drive history to the final cavity register. Then for any two event histories $u_1, u_2$:

$$R[u_1 + u_2] \;=\; R[u_1] + R[u_2] \qquad\text{(bit-exact, per cavity)}.$$

_Proof._ The recursion is affine in the drive with fixed propagator; the difference of two solutions driven by $u_1 + u_2$ and $u_1$ obeys the homogeneous recursion $\delta_k(t+1) = \omega_k\, \delta_k(t)$ with $\delta_k(1) = $ the $u_2$-initial contribution, hence $\delta_k(T) = \omega_k^{T-1} \delta_k(1)$ — exactly the response to $u_2$ alone (Theorem 14.1). In $\mathrm{GF}(p)$ the addition in $R[u_1] + R[u_2]$ is field addition: no rounding, so additivity is an identity, not an approximation. Verified for composed two-event histories bit-exactly. $\blacksquare$

**Physical meaning.** Two collision events can be synthesized from their separate responses: the field supports independent signals that do not distort one another in propagation. This is precisely the property a _compositional_ semantic medium requires — and it is the property the collision operator of Corollary 14.4 deliberately does _not_ have, by design.

**Theorem 14.3 (Time Reversal).** The forward evolution is exactly invertible: for any nonzero propagator $\omega_k \in \mathrm{GF}(p)^{\times}$ — including general propagators that are _not_ low-order roots of unity — the inverse recursion

$$e_k(t-1) \;=\; \big(e_k(t) - u(t)\big)\cdot \omega_k^{-1}$$

recovers the initial state from the final state, bit-exactly (verdict protocol: forward $T$ steps, reverse $T$ steps, **PASS** — every cavity returns to its initial value with zero error).

_Proof._ From the forward step $e_k(t) = \omega_k\, e_k(t-1) + u(t)$, subtract $u(t)$ and multiply by $\omega_k^{-1}$, which exists for every $\omega_k \neq 0$ in the field. Nothing in the argument uses $\omega_k$ being a root of unity of any particular order; only invertibility is consumed. $\blacksquare$

**Physical meaning.** In this field, _attenuation is rotation_. There is no dissipation channel: what float-domain state-space models lose to decay (genuine forgetting, earlier dissipation analysis), the GF field merely rotates into a recoverable phase. Losslessness here is guaranteed by algebra (nonzero field elements are invertible; no rounding exists), not by physical media.

**Corollary 14.4 (Collision Operator Non-commutativity).** The collision factor

$$\chi(z_1, z_2) \;=\; \frac{z_1 - z_2}{z_1 + z_2}$$

is antisymmetric under pole exchange: $\chi(z_2, z_1) = -\,\chi(z_1, z_2)$. Applying the collision operator to two pole configurations in the two possible orders therefore produces **different final states** — verified exactly in $\mathrm{GF}(65537)$ (two orderings, distinct outcomes, no exceptions).

**Physical meaning: non-commutativity is the physical carrier of word-order semantics.** "Dog bites man" and "man bites dog" involve the same two participants; the algebraic image of their difference is precisely the sign and rerouting that $\chi$ undergoes under argument exchange. Order sensitivity is not a defect of the collision operator to be engineered away — **it is the operator's capacity to encode order information at all**. The same non-linearity that breaks superposition at interaction events (Theorem 14.2's boundary) is what makes the engine's semantic fingerprints order-aware.

### 14.3 The two pictures, and the verdict

The verdict experiment separates two roles the engine was rhetorically conflating:

| Component                           | Role                                                                           | Picture                                 |
| ----------------------------------- | ------------------------------------------------------------------------------ | --------------------------------------- |
| Scan kernel (Theorems 14.1–14.3)    | time evolution: propagation / superposition / reversal, all exact              | free propagation (Schrödinger picture)  |
| Collision operator (Corollary 14.4) | one-shot residue redistribution: an _event_, not an evolution; order-sensitive | interaction event (interaction picture) |

**The collision engine contains genuine wave-field dynamics**: its scan kernel is a strictly reversible evolution operator on $\mathrm{GF}(65537)$ (three properties bit-exact), and its collision operator is an interaction event on that field. The complete engine is the composition — evolution kernel + interaction events — which is the standard form of interacting-field descriptions in physics. Physics has always used both pictures at once; the engine now has both, each with a decidable characterization.

This is a _mathematical-structure_ verdict (evolution + superposition + reversibility, all exact over a finite field), **not** a claim of continuum physics: no real wave propagates in a medium. The GF field's losslessness comes from finite-field arithmetic — attenuation is rotation (Theorem 14.3) — whereas float-domain dissipative waves genuinely decay and forget. Both layers are true; they must not be conflated in deployment claims.

---

## 15. U-Curve Four-Band Model and Density Ionization Cliff

### 15.1 The anchored field and the four-band protocol

The U-curve scheduler runs a complete-graph Kuramoto field of $N = 64$ oscillators through four scheduled phases (24 steps total), each phase holding gain/anchor parameters fixed:

$$\dot{\theta}_i \;\;{+}{=}\;\; g\cdot\big\langle \sin(\theta_j - \theta_i) \big\rangle_{j\neq i} \;-\; \gamma\cdot(\theta_i - \theta_i^{0}),$$

where the anchor term $-\gamma(\theta_i - \theta_i^0)$ contracts each oscillator toward its initial state — the residual-connection semantics of the embedding input. The four phases, in schedule order (Phase-70 parameters): **avalanche** ($g = 2.0$, $\gamma = 0.01$), **epileptic lock-in** ($0.8$, $0.15$), **lateral inhibition** ($0.3$, $0.5$), **quench** ($0.1$, $0.5$). Corruption is applied to the embedding itself: $k$ of $N$ components rotated by $+\pi/2$. The observables are the mean-square phase deviation between corrupted and clean runs, $E(t)$, its per-phase ratio $F_{\mathrm{phase}} = E(\text{phase end})/E(\text{phase start})$, and the readout direction cosine $\cos_{\mathrm{out}}$ against the clean-run attractor.

The original conjecture attributed to the four bands the semantics _amplifier / healer / adjudicator / freezer_. The measured table (anchored domain experiment) rewrites three of the four entries:

| $k$ | $E_0$ | $F_{\mathrm{ava}}$ | $F_{\mathrm{epi}}$ | $F_{\mathrm{lat}}$ | $F_{\mathrm{qu}}$ | $E_{\mathrm{fin}}/E_0$ | $\cos_{\mathrm{out}}$ |
| --- | ----- | ------------------ | ------------------ | ------------------ | ----------------- | ---------------------- | --------------------- |
| 1   | 0.039 | 0.670              | 0.176              | **7.20**           | 1.06              | 0.898                  | 0.9856                |
| 2   | 0.077 | 0.855              | 0.740              | 1.68               | 0.94              | 0.991                  | 0.9686                |
| 4   | 0.154 | 0.951              | 0.097              | **12.79**          | 0.87              | 1.029                  | 0.9347                |
| 8   | 0.308 | 0.928              | 0.623              | 1.87               | 0.92              | 0.997                  | 0.8735                |
| 16  | 0.617 | 1.007              | 0.315              | 3.30               | 0.96              | 1.001                  | 0.7477                |

**Theorem 15.1 (measured band semantics).** The four bands of the anchored U-curve are, in order:

1. **Avalanche = neutral** ($F \approx 0.95$–$1.0$, conjectured: amplifier — _falsified_). The phase spans only ~5% of the run; the coupling $\sin$ is Lipschitz-$\le 1$, so no exponential amplification can occur within a single short phase.
2. **Epileptic = transient masking** ($F = 0.10$–$0.74$, conjectured: healing — _falsified_). Lock-in drives each run toward its own global mean, so corrupted and clean runs _each_ suppress their deviation and $E$ drops temporarily. The apparent "healing" is **false healing**: the error is masked by synchronous flattening, not removed.
3. **Lateral inhibition = anchor rebound** ($F = 1.7$–$12.8$, conjectured: adjudication — _falsified_). Winner-take-all breaks the global lock, and every oscillator relaxes back to its _own_ anchor — re-exposing exactly the input corruption that the previous phase had masked.
4. **Quench = freeze** ($F \approx 1$, conjectured: freeze — _confirmed_). The only predicted semantics that survives.

**Theorem 15.2 (Floor law).** Across all corruption widths tested,

$$E_{\mathrm{fin}}/E_0 \;\in\; [0.90,\; 1.03] \qquad \forall\, k.$$

Anchored-domain embedding corruption is a **floor**: it is never healed and never amplified. The mechanism is structural, not parametric: the field's _only_ contraction term is the anchor $-\gamma(\theta - \theta^0)$, and it contracts toward the input itself. **The anchor is the defense stack — and a corrupted input is a corrupted anchor.** Whatever the schedule does to the transient, the terminal state cannot be better than the input it contracts to. This is the wave-field instance of this paper's recurring asymmetry between repair and anchoring (cf. the heal/alarm asymmetry of Part I): anchoring propagates input quality; it does not create correctness.

**Theorem 15.3 (Gain veto; refutation of the $g\lambda_{\max} > 2$ instability hypothesis).** In the anchor-free domain ($\gamma = 0$, $k = 4$), sweeping $g \in [0.5, 2.0]$ holds $E_{\mathrm{final}} = 0.1542$ throughout — variation below $0.1\%$. The Euler-instability hypothesis (divergence once $g \cdot \lambda_{\max} > 2$ on the complete-graph Laplacian) is **refuted experimentally**: localized corruption carries spectral weight $\sim 1/N^2$ on the high-frequency Laplacian modes that the instability would need, and a single-step avalanche phase cannot ignite them. **In the tested regime ($k = 4$, anchor-free), gain is not the dangerous variable.**

### 15.2 The density ionization cliff

With gain exonerated, the scan turns to the variable that actually controls the outcome: corruption _density_ $k/N$. In the anchor-free domain ($g = 2.0$, $\gamma = 0$), the phase portrait:

| $k$ | $k/N$ | $E_{\mathrm{fin}}/E_0$ | $\cos_{\mathrm{out}}$ | anchored control $\cos$ |
| --- | ----- | ---------------------- | --------------------- | ----------------------- |
| 6   | 9.4%  | 0.84                   | 0.904                 | 0.883                   |
| 8   | 12.5% | 1.13                   | 0.832                 | 0.874                   |
| 10  | 15.6% | 0.76                   | 0.858                 | 0.821                   |
| 12  | 18.8% | 1.69                   | **0.634**             | 0.811                   |
| 14  | 21.9% | 1.61                   | **0.596**             | 0.780                   |
| 16  | 25.0% | **3.06**               | **0.195**             | 0.748                   |

**Theorem 15.4 (density ionization cliff).** In the anchor-free field, the readout direction cosine collapses by a factor of $3.5\times$ — $0.63 \to 0.20$ — across the density window

$$k/N \;\in\; [18.8\%,\; 25\%],$$

with the deviation energy $E_{\mathrm{fin}}/E_0$ simultaneously driven to $3.06$. Below the window the field degrades gracefully; at the window's far edge the field's direction is hijacked. The anchored control at identical densities degrades **gracefully, $0.88 \to 0.75$, with no cliff anywhere**. Three readings:

1. **The dangerous variable is corruption density, not gain** (Theorem 15.3): the failure boundary is a _density_ threshold, the wave-field analogue of this paper's budget boundaries — a corruption-weight threshold on a field instead of a value-weight threshold in a lattice.
2. **The cliff location $[18.8\%, 25\%]$ is model-specific** (minimal $N=64$ complete-graph model); the qualitative structure — sub-threshold graceful, threshold collapse, anchored immunity — is the transferable content, exactly as band-gap _boundaries_ were pool-specific while the budget inequality was universal.
3. **The anchor is the defense stack, demonstrated by ablation**: removing $\gamma$ does not shift the boundary; it deletes the boundary. The single term $-\gamma(\theta - \theta^0)$ is what separates graceful degradation from catastrophic hijack.

Single seed; the sub-threshold non-monotonicity of $E/E_0$ ($0.84/1.13/0.76$) is discrete-sampling fluctuation, while the cliff itself ($\ge 1.6\times$ energy rise plus cosine collapse) is robust across $k = 12$–$16$.

### 15.3 Metric complicity: the fourth form of silent failure

**Proposition 15.5 (metric complicity).** At the collapse point of Theorem 15.4 ($k/N = 25\%$), the field's own order parameter reads $R_{\mathrm{end}} = 1.000$ — _perfect_ phase coherence — while the direction is hijacked ($\cos_{\mathrm{out}} = 0.20$) and **no quantity internal to the field raises any alarm**. The field has not desynchronized; it has _locked onto the corruption consensus_. The very metric used to certify health actively endorses the broken state:

$$R_{\mathrm{end}} = 1.000 \quad+\quad \cos_{\mathrm{out}} = 0.20 \quad+\quad \text{zero in-field alarms}.$$

This is a failure form more extreme than ALARM-D (Part I, §4.3): the deterministic-garbage outcome at least left the _value lattice_ to be cross-examined by an external certificate. Metric complicity has no internal cross-examination surface — the witness and the perpetrator are the same observable.

**The alarm axis, four forms in progression.** With this addition the campaign's silent-failure spectrum completes:

| Form                          | Mechanism                                                | Silent fraction                            | Reference               |
| ----------------------------- | -------------------------------------------------------- | ------------------------------------------ | ----------------------- |
| 1. float silent corruption    | no anomaly signature exists at all                       | 99.98% of corruptions silent               | §9.1                    |
| 2. LWE threshold-band silence | decryption succeeds inside the attacker's band by design | 100% silent in-band (P-82 dual)            | Part I, band-gap family |
| 3. BB84 eavesdropping         | quantum no-cloning forces the intrusion to _luminesce_   | forced detectability (the non-silent pole) | —                       |
| 4. **metric complicity**      | the health metric itself is suborned                     | zero alarms at full coherence              | this section            |

The progression is one of _worsening epistemic position_: form 1 lacks a witness; form 2 has a witness that is locked out; form 3 has a witness that fires; form 4 has a witness that **lies**. The only surviving conclusion — and it closes mechanically with the fore-engine observation that pure wave-field inference must be GEMV-guided — is: **the only trustworthy alarm source is an external anchor.** Any failure-detection architecture whose sensors are computed by the system under observation is exposed to form 4, and no amount of internal redundancy repairs it, because the redundancy shares the compromised observable.

---

## 16. Resonance Cavity Equation and CGL Saturation Antagonism

### 16.1 The full-field resonance cavity equation

The anchor of §15 contracts to the input — and inherits its corruption. The remedy is a second anchoring object that does not come from the input: a **full-field coincidence resonance cavity** over $P$ stored patterns $\{\varphi_p\}_{p=1}^{P}$ (Kuramoto–Hopfield). The cavity reads the field's overlap with each stored pattern and feeds it back as torque:

$$m_p \;=\; \frac{1}{N}\sum_{j} \cos\big(\theta_j - \varphi_{p,j}\big),$$

$$\mathrm{torque}_i \;=\; \sum_{p} m_p \,\sin\big(\varphi_{p,i} - \theta_i\big),$$

$$\theta_i \;\;{+}{=}\;\; g\cdot 0.25\cdot(\text{U-curve mean field}) \;-\; 0.2\,\gamma_{\mathrm{in}}\cdot(\theta_i - \theta_i^{0}) \;+\; 2.0\cdot \mathrm{torque}_i.$$

Selectivity is **built in, not gated**: winning overlaps grow and losing overlaps shrink under the cavity's own dynamics, $\mathrm{d}m_p/\mathrm{d}t = \gamma_r\, m_p\,(1 - \textstyle\sum_q m_q^2)\cdots$ — the pattern with the largest $m_p$ wins, and the winner wins harder. No external arbiter decides which pattern to pull toward; wrong patterns decay as the field aligns with the victor.

**Theorem 16.1 (readout quality, $3.6\times$).** Under $c = 0.2$ cue corruption ($N=64$, $P=4$, 24 steps, complete graph):

| Configuration                 | mean $\cos$ @ $c=0.2$ | top-1 acc |
| ----------------------------- | --------------------- | --------- |
| A: input anchor only          | 0.2036                | 87.5%     |
| E2: cavity-dominated          | **0.7248**            | 79.5%     |
| E2G: certificate-gated cavity | 0.6476                | 81.5%     |

The cavity's readout quality is **$3.6\times$** the input anchor's. The table's most instructive feature is that E2's _argmax accuracy is lower_ than A's while its true completion is far better: the cavity pulls the field genuinely to a stored pattern — when the pull is wrong, it is _honestly_ wrong (pulled to the wrong pattern); the input anchor never moves the field, so it is never badly wrong and never truly completes. This exposes the **top-1 evaluation trap**: configuration A reports acc $= 99\%$ at $c = 0.3$ while its field state is $30\%\,\varphi_j + 70\%\,\text{random}$ ($\cos = 0.297$) — the argmax wins only because every other mode is worse. **Completion systems must be scored by readout quality ($\cos$), not top-1**, or "no completion" is booked as "completion succeeded."

**Theorem 16.2 (attack resilience, $2.9\times$).** Under mid-run corruption ($t = 12$, $c = 0.3$, $k$ components flipped mid-evolution):

| Attack         | A: $\cos$ | E2: $\cos$ |
| -------------- | --------- | ---------- |
| $k = 0$        | 0.290     | **0.930**  |
| $k = 8$ (12%)  | 0.289     | 0.828      |
| $k = 16$ (25%) | 0.294     | 0.888      |
| $k = 32$ (50%) | 0.296     | **0.849**  |

At 50% mid-run corruption the memory anchor's readout quality remains $2.9\times$ the input anchor's. The mechanism is the division of anchoring labor: when the kick displaces the field, the cavity pulls it back to the stored pattern ($\varphi_j$-healing), whereas the input anchor can only pull back to the (already defective) input — the Floor law (Theorem 15.2) executing again, now with a second anchor available.

At $c = 0$ (pure random input), E2's mean $\cos = -0.0035$: no high-confidence wrong completion occurs in this configuration — noise coincidences ($\sim 0.09$) do not reach the amplification threshold within 24 steps under U-curve contraction. The confabulation region requires longer runs or larger $\gamma_r$ and remains an open parameter region. (The gating architecture that does bound hallucinations — bilateral release, Law 6 — is cross-referenced in §8.5.)

The cavity's final form was reached through three refutations worth archiving. (i) _Constant-on block pinning_ (8 pinned oscillators per pattern, disjoint blocks, $\gamma_{\mathrm{pin}} = 0.6$): pure internal anchor holds the field at chance ($22.5$–$28\%$ across all cue strengths) — a resonance cavity that does not know _which_ pattern is correct is not memory but **bias**; four pinned blocks cancel one another. (ii) _Certificate-gated block pinning_ still loses to the input anchor everywhere. (iii) The decisive run initially implemented the torque with a flipped sign — an attractor realized as a repeller. The failure was **silent**: no crash, a smooth but motionless field, and argmax metrics that still looked plausible; only a single-step decomposition probe (tracking $m$'s per-pattern contributions step by step) caught it. After the sign fix, $m_j$ moves $0.205 \to 0.365$ in one step. Methodological rule, same spirit as the NaN audit below: _attractor-type experiments must track the order-parameter trajectory, not terminal scalars — torque sign errors do not raise exceptions._

### 16.2 U-curve lock-in antagonism, quantitative

**Theorem 16.3 (lock-in antagonism).** Under the scheduled lock-in phases, the cavity's pattern overlap $m_j$ is destroyed on a four-step timescale (weak cavity, $\gamma_r = 0.5$):

| $t$ | $m_j$     | $\bar{S}$ (global sync) |
| --- | --------- | ----------------------- |
| 0   | 0.205     | 0.116                   |
| 2   | 0.063     | 0.429                   |
| 4   | **0.012** | 0.692                   |

The complete-graph mean field locks the oscillators to the **global synchronous mode**, synchronizing away exactly the spatial structure that encodes the pattern. The rates make the conflict quantitative: the cavity moves pattern overlap at $\sim 0.1/\text{step}$ while lock-in erases it at $0.8$–$2.0/\text{step}$ — a **$20\times$ disadvantage**. U-curve scheduling and distributed semantic completion are **structurally hostile**, not badly tuned: the scheduler's objective (global sync) is the negation of the cavity's objective (pattern structure). The two resolutions are (a) let the cavity dominate inside the avalanche window ($\gamma_r/g \approx 8$ in the working configuration), or (b) reschedule so lock-in gain is suppressed during the completion interval — the scheduler must serve the cavity or the cavity never runs.

This antagonism also sharpens the certificate story of §8.4 (Law 4): the resonance-consistency certificate read from the initial margin certifies $0.8\%$ of cases; read after lock-in it certifies $70.5\%$ (zero-violation $\tau$: $0.330 \to 0.535$). In a hostile schedule the initial margin must survive the lock-in contraction in the worst case — the factor $(1-g)^{24}$ — whereas the post-lock margin is already a contracted quantity. The timing law and the antagonism theorem are two views of one mechanism: **whatever consumes the signal also consumes the certificate read from it.**

### 16.3 CGL saturation antagonism and the Kuramoto→CGL survival table

The minimal complex Ginzburg–Landau (CGL) domain. The CGL saturation term introduces a mechanism Kuramoto does not have:

**Observation 16.4 (saturation antagonism).** The saturation term $-s|\psi|^2\psi$ applies drag precisely where the cavity applies pull: as the cavity drives the field toward a stored pattern it raises $|\psi|$, and the saturation resistance grows with the same amplitude. **Completion is physically clamped** — not blocked by misconfiguration but counter-forced by the medium's own amplitude regulation. Consequence: at cue strength $c \ge 0.5$ the input anchor (which never moves the field) outperforms the cavity, and the cavity's advantage region narrows to low-to-mid cue strengths. This statement is an experimental observation; a rigorous mathematical proof is not yet available.

The four wave-field conclusions were re-derived in the CGL domain; the survival table:

| Conclusion                       | Kuramoto domain                    | CGL domain, measured                                          | Verdict                                      |
| -------------------------------- | ---------------------------------- | ------------------------------------------------------------- | -------------------------------------------- |
| T1 U-curve hostility (Thm. 16.3) | $m_j$: $0.205 \to 0.027$ (4 steps) | $0.296 \to -0.212$ (**1 step, sign flipped**)                 | ✅ survives, **stronger**                    |
| T2 cavity completion (Thm. 16.1) | $\cos$ 0.72 vs 0.20 @ $c=0.2$      | 0.385 vs 0.198 @ $c=0.2$; advantage gone at $c \ge 0.5$       | ⚠️ survives at low cue, weakened             |
| T3 certificate consistency       | 75.3% consistency                  | 43.7% (initial-margin read)                                   | ⚠️ degraded, needs multi-timepoint reads     |
| T4 bilateral gating (Law 6)      | hallucination 0% all cues          | $c=0.1$: 0.5% vs 58.5% ungated ✅; **$c=0.5$: 43.5% leakage** | ⚠️ direction survives, **calibration fails** |

T4's leakage is diagnostic, not fatal: the threshold $\tau_{\mathrm{cert}} = 0.325$ was calibrated on the Kuramoto domain, and in the clamped CGL dynamics a margin that guarantees completion-consistency there no longer does so here. Executing the recalibration protocol (§8.5) — single-point refit at $c = 0.15$ — moves $\tau_{\mathrm{cert}}$ to $0.365$ and cuts mid-cue hallucination from $39\%$ to $28.5\%$ (deep-cue $c = 0.7$ remains $49.5\%$: recalibration alone is not a firewall).

**Corollary 16.5 (architecture/parameter separation law, three-layer form).** The transferability of wave-field prescriptions across dynamical systems stratifies into three layers of increasing domain dependence:

1. **Mechanism layer** (transfers): existence of a completion attractor — a descending structure. Kuramoto–Hopfield guarantees it; CGL weakens but does not destroy it (74.5% completion consistency survives after the fix below).
2. **Certificate-quantity layer** (transfers only with full coordinates): the margin definition must retain every payload coordinate; phase-blind or sign-blind projections of it fail _in the complex domain outright_ — the subject of §16.4.
3. **Parameter layer** (does not transfer): $\tau_{\mathrm{cert}}$, $\gamma_r$, gain schedules are strongly domain-dependent and must be single-point recalibrated per dynamics system — the clause the T4 leakage empirically demonstrates.

### 16.4 The CGL complex orthogonal projection fix

The CII "completion degradation" itself decomposed under probing $\to$ $\gamma_r$ sweep $\{1.5, 3, 6, 12\}$, all $\sim 25$–$55\%$, $\gamma_r = 12$ diverges (parameters cannot rescue) $\to$ culprit isolation $\rho = 0$, saturation $= 0$: pure complex Hopfield, still $\sim 50\%$, not even $100\%$ at $c = 1.0$ — _the CGL terms are innocent; audit the implementation_ $\to$ **the cavity's overlap was taken as $\mathrm{Re}(m_p)$, a phase-blind channel**).

**Theorem 16.6 (phase-blind channel and the complex orthogonal projection fix).** Under the real-part projection, the cavity kick at a field state already on the correct pattern $\psi^{*} = \Phi_j$ is

$$\gamma_r \sum_{p \neq j} \mathrm{Re}(m_p)\,\Phi_p \;\approx\; 2.5 \quad\text{of pure noise},$$

because the _complex-phase components_ of the competing modes are not canceled by taking real parts — the correct pattern receives a persistent random kick of strength comparable to the signal itself. Replacing the projection by the **complex orthogonal projection**

$$m_p \;=\; \frac{\Phi_p^{\dagger}\,\psi}{N}$$

makes the cavity update the exact orthogonal projection onto the pattern span: $\psi^{*} = P_{\mathrm{span}}(\psi)$, under which the correct-pattern state is an **exact stationary point** ($\psi^{*} = \psi$ — zero kick by orthogonality). Measured effect: completion accuracy $48$–$55\% \to 64$–$74.5\%$ (**$+16$ to $+20$ points**). The remaining $\sim 25$-point gap to ideal is the _mechanistic CGL tax_ (gain, saturation, and mean-field terms jointly resisting completion), to be reduced operationally by suppressing $\rho \to 0$ during completion intervals and running the cavity on its own gradient with a light anchor.

**Load-dimension law, third appearance.** This is Law 8's (§8.7) third and most instructive instantiation: the burned coordinate is **relative phase**, the projection is $\mathrm{Re}\langle \Phi, \psi \rangle$, the cost is $-16$ to $-20$ points, and the repair is the same invariant prescription — _add the burned coordinates back_:

| Appearance | Projection                                                 | Burned coordinate  | Cost                          | Repair                        |
| ---------- | ---------------------------------------------------------- | ------------------ | ----------------------------- | ----------------------------- |
| 1 (XC)     | $(\Sigma h W)^2$ intensity ranking                         | sign               | true-argmax survival 38.7%    | signed channel                |
| 2          | $\sqrt{\|h\|\|W\|}$ geometric kernel                       | bilinear structure | recall tax 5–18 pts           | linear kernel                 |
| 3  | $\mathrm{Re}(\langle \Phi, \psi\rangle)$ real-part overlap | **relative phase** | completion $-16$ to $-20$ pts | complex orthogonal projection |

What the third appearance adds to the law is the domain lesson of this part in miniature: in a complex-valued wave field, _phase is the payload_ — a projection that discards it does not attenuate the signal, it **re-injects it as noise at full strength** ($\approx 2.5$), the wave-field equivalent of Law 8's same-sign reversal. And the diagnosis path (probes isolating gain, saturation, and mean field before implicating the projection) is the dynamical-systems instance of this paper's standing method: when a system fails, find the _geometry_ of the failure — here, which coordinates were burned on the way from field to scalar — before touching a single parameter.

---

_Part VI extends the audit beyond computation: cross-domain chemistry (periodic-table pool expansion, correction-term separability, exact GF quantum gates), the closing synthesis, and the negative-result appendix in which several of this part's falsifications — the gain-instability refutation (Thm. 15.3), the block-pinning and top-1 traps (§16.1), the torque sign bug, and the Euler NaN field — are archived as first-class results._

---

## 12. Open Problems

The theory closes the single-corruption, single-variable, worst-case case. Nine problems remain open; O1–O5 concern the channel theory, O6–O9 the certificate theory.

**O1 (N-vs-D split).** Inside the alarm phase, the split between clean failure (ALARM-N) and decoy (ALARM-D) is governed by the continued-fraction path of a′/M: the outcome is algorithmically decidable for any given (a′, M, B), and the D-probability vanishes for small first CF coefficients, but no closed form in (W(c), num, den) is known. The band anisotropy of §10.3 (max-norm heal boundary vs L1 decoy boundary) is a two-dimensional shadow of this open classification.

**O2 (multi-error joint corruption).** Composite corruption weights W = p·q yield the same CF structure a′ = w + t·(M/W) and the same onset ⌈M/(WB)⌉ (four-prime unbalanced pool {101, 103, 1153, 65537}: heal zone 300/300, 4,660 gap transmissions with zero decoys, tightness witness at the edge) — but a general joint theory over arbitrary channel subsets with heterogeneous magnitude profiles is open.

**O3 (pseudo-heal depreciation).** The heal phase silently corrects corrupted values whose reduced amplitude lies inside the budget. Whether healing composes is open: a value routed through a chain of exact stages carries the ledger of its earlier corruptions, and iterating stages may _pseudo-heal_ — return the right value for reasons that no longer track the current budget. The depreciation law of this effect along a computation DAG is unknown.

**O4 (full RRNS literature).** The canonical chain is corrected and cited ([5]–[9], completed by [11], [12], [15]), but full-text reading of the classical detection/correction literature is pending — in particular, the exact relationship between the classical bounded-distance results and the value-domain inequality (the numerator side of max(|num|, den), which classical statements do not carry) has not been traced to prior art.

**O5 (even moduli).** Lemma 1's strictness input 2B² < M holds automatically because M is odd. For even moduli the strictness fails and the collinearity argument degrades; whether the theorem survives with an explicit slack constant, or via a parity-restricted variant, is open.

**O6 (real gap distribution).** Partially resolved on real weights: on mamba-130m-hf embeddings, row norms are heavy-tailed (3.40×), the real hidden-gap margin fits iid extreme-value theory, the fp32 certificate grade transfers (99.3–100%), and the int8 heavy-tail penalty is −10 to −35 pt. The same audit established that complete certificates must be full-field, s*a − B_a > max*{j≠a}(s_j + B_j): top-2 checks are incomplete under heavy-tailed bounds (3 false certificates observed). Open: real residual-stream hidden states (beyond the embedding proxy), per-channel scaling, and automated σ-calibration under real weight distributions.

**O7 (multi-variable joint certificates).** All current certificates protect a single argmax or a single reconstruction. The progression top-2 certificate → top-k list certificate → sampling certificate over the softmax layer requires the combinatorics of composable bounds — how per-coordinate bounds union, intersect, and inflate under joint queries — which is open.

**O8 (cost economics of certificates).** Triangle pricing: bound tightness vs precomputation cost vs coverage. The exemption economics of §10.3 (a 4× pool factor, 2 bits, separating clean-failure from heal-everything guarantees) is the channel-theory seed; the general pricing law — merging the P-77 certificate-economics line with the certified-skip measurements of §11.3 (60.2% → 96.5%) — is open.

**O9 (full dynamics migration).** The certificate-driven scheduler (CDS) triangle — safety identical to the never-release baseline (hallucination 0%), capability 95% at c = 0.5, adaptive halting (released queries ~10 steps vs a fixed 24) — was established on a minimal model (N = 64). Whether the triangle survives migration to full wave-field dynamics (CGL, Cl(3,1)) is open.

---

## 13. Synthesis

### 13.1 The unified picture of failure geometry

This paper builds a complete theory of exact arithmetic channel failure from a single inequality, $W(c) \cdot \max(|n|, d) \le B$. The inequality unfolds across three layers:

**Layer 1: Channel theory (§1–§6).** The Budget Theorem gives a necessary and sufficient condition for exact reconstruction under corruption; the Three-Outcome Theorem refines the alarm branch into HEAL, ALARM-N, and ALARM-D; the Band-Gap Theorem locates the onset of decoys; and the density-of-states theory shows that the distribution of lies is governed by the Basel constant. All conclusions are validated by 30,000+ corruption cases with zero violations.

**Layer 2: Certificate theory (§7–§9).** Failure geometry is converted from post-hoc analysis into decision theory: eight laws answer what is certifiable, where to read, when to act, and what is purchased. The core insight is "undetectable $\subseteq$ unflippable" — certificates cover the alarm's blind spot, making silent corruption impotent within the bound.

**Layer 3: System integration (§10–§11).** IEEE-754 serves as a zero-redundancy contrast case, exhibiting a 99.98% silent-error rate; the exact RNS channel exhibits a full band structure at a smaller bit budget (49 bits vs 64 bits). The end-to-end learning machine demonstrates test accuracy 1.000, zero gradients, zero floats.

### 13.2 From theory to engineering

Five engineering principles emerge directly from the theory:

1. **Channel type first (L2).** Multiplicative channels (truncation) have no certificate zone; additive channels (quantization) have a large one. Channel repair precedes certification.
2. **Timing dominates certificate rate (L4).** The same certificate quantity, placed correctly, yields an 88× gain (0.8% → 70.5%).
3. **Bilateral release (L6).** Action requires both risk exemption and benefit proof; unilateral certificates cause over-action.
4. **Stacked composition (L7).** Bound certificates gate; constructive certificates adjudicate; total cost = nomination cost + pass-rate × adjudication cost.
5. **Load-dimension conservation (L8).** Any coordinate burned by a projection must be added back; three appearances (sign, bilinear structure, relative phase) confirm the law's universality.

### 13.3 Open frontiers

The nine open problems (§12) point to three frontiers:

- **Closed-form frontier:** N-D split closed form (O1), multi-error joint theory (O2), pseudo-heal depreciation law (O3).
- **Real-world frontier:** Real gap distribution (O6), multi-variable joint certificates (O7), certificate cost economics (O8).
- **Dynamics frontier:** Full dynamics migration (O9), even-modulus extension (O5).

Failure geometry is not a collection of isolated theorems but a **transferable mode of thought**: faced with any channel, do not ask "does it work?" but rather "what does its failure look like, where is the boundary, and when does it alarm?"

---

_Part V (§14–§16) extends failure geometry to wave-field dynamics: the GF(65537) cavity wave field (§14), the U-curve Kuramoto field (§15), and the CGL (complex Ginzburg–Landau) domain (§16)._

## References

[1] Z. Ma et al., "The Era of 1-bit LLMs: All Large Language Models Are in 1.58 Bits" (BitNet b1.58), arXiv:2402.17764, 2024.

[2] Zero-knowledge machine learning (ZKML) survey, arXiv:2502.18535, 2025.

[3] Internal: exact learning stack, part I — GF(65537) exact least squares: normal equations solved by one exact Gaussian elimination; float64 coefficient error 9.85×10²⁴ on the same Vandermonde system at n = 30 (P-63), FodaOS ledger, 2026.

[4] Internal: exact learning stack, part II — the adjoint as exact backpropagation; the gradient vanishes identically at the exact solution, and its vanishing is GF-decidable (P-64), FodaOS ledger, 2026.

[5] D. Mandelbaum, "Error correction in residue arithmetic," IEEE Transactions on Computers, vol. C-21, no. 6, pp. 538–545, June 1972.

[6] R. W. Watson, "Redundant Residue Number System Error Detection and Correction," Electronics Research Laboratory, University of California, Berkeley, Tech. Rep., 1965.

[7] F. Barsi and P. Maestrini, "Error correcting properties of redundant residue number systems," IEEE Transactions on Computers, vol. C-22, no. 3, pp. 307–310, March 1973.

[8] S. S. Yau and S. C. Liu, "Error correction in redundant residue number systems," IEEE Transactions on Computers, vol. C-22, no. 1, pp. 5–11, January 1973.

[9] Y. Sun and H. Krishna, "A coding theory approach to error control in redundant residue number systems — Part I: Theory," IEEE Transactions on Circuits and Systems II, vol. 39, no. 1, 1992.

[10] Exact linear algebra in the construction of machine-learning models (network-construction proofs), arXiv:2607.21651, 2026.

[11] D. Mandelbaum, "Error detection in residue arithmetic," IRE Transactions on Electronic Computers, vol. EC-11, 1962. _(Origin of the chain.)_

[12] Y. Sun and H. Krishna, "A coding theory approach to error control in redundant residue number systems — Part II: Implementation and performance analysis," IEEE Transactions on Circuits and Systems II, vol. 40, 1993. _(Chain completion.)_

[13] "bitnet.cpp: Efficient Edge Inference for Ternary Large Language Models," arXiv:2410.03507, 2024. _(Integer CPU inference kernels for ternary weights.)_

[14] A. Rahimi and B. Recht, "Random Features for Large-Scale Kernel Machines," in Advances in Neural Information Processing Systems 20 (NIPS 2007), 2008. _(Random-feature lineage; the present work contributes the exact + certified composition.)_

[15] H. L. Garner, "The Residue Number System," IRE Transactions on Electronic Computers, vol. EC-8, no. 2, pp. 140–147, 1959. _(RNS origin.)_

_Note._ GF(p) as a learning/inference substrate: no prior work found as of the literature search.

## Appendix A. Verifier Index

All verifiers are deterministic and seed-reproducible; all experiments use exact integer/rational arithmetic, and no verifier contains floating point. Fifteen entries; the fifteenth consolidates the band-gap family (ledger entries §46–§50).

| #   | scope                                                                                                                                                                                         | assertions / outcomes |
| --- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| 1   | Budget Theorem core (single-channel outcome match)                                                                                                                                            | 13                    |
| 2   | clean-domain criterion (Prop. 1: box-empty ⟹ ⊥)                                                                                                                                               | — \*                  |
| 3   | three-outcome classification, 3-channel pool                                                                                                                                                  | 7                     |
| 4   | corruption law at scale (random + adversarial)                                                                                                                                                | 12,000                |
| 5   | three-outcome refinement                                                                                                                                                                      | — \*                  |
| 6   | budget-boundary knife-edge sweeps                                                                                                                                                             | 2,060                 |
| 7   | N-vs-D split audit                                                                                                                                                                            | 3,000                 |
| 8   | composite moduli                                                                                                                                                                              | 2,800                 |
| 9   | gradient-free learning machine (core)                                                                                                                                                         | 5                     |
| 10  | federated all-reduce + Byzantine ledger                                                                                                                                                       | 6                     |
| 11  | label independence (regime grid)                                                                                                                                                              | 25 cells              |
| 12  | input-geometry pricing                                                                                                                                                                        | — \*                  |
| 13  | ridge non-lever falsification                                                                                                                                                                 | — \*                  |
| 14  | periodic-table cross-domain validation                                                                                                                                                        | 36                    |
| 15  | boundary sharpness (65 assertions, zero violations); L1 decoy-onset law; integer corollary tightness; dual-channel generality {101, 103, 1153, 65537}; gapless-channel contrast (§10.1 table) | 65 + contrast table   |

\* Entries without a recorded count were run as deterministic seed-reproducible scripts; per-script assertion totals are not itemized in the ledger.

Recorded total: 17,992 assertions across the counted entries (13 + 7 + 12,000 + 2,060 + 3,000 + 2,800 + 5 + 6 + 36 + 65), plus the 25-cell label-independence grid and the contrast table; the campaign aggregate exceeds 30,000 corruption cases with zero violations.
