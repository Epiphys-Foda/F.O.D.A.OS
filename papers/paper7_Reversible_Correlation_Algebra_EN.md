# FodaOS Unified Field Theory Series VII: The Reversible Correlation Algebra — the Complete Quantum Gate Catalog, Gate-Group Semantics, and the Classical Uses of Quantization

## FodaOS Unified Field Theory Series VII: The Reversible Correlation Algebra — the Complete Gate Catalog, Gate-Group Semantics, and Classical Quantization as a Computing Paradigm

---

**Author**: Pan JinWen [Cypher Pan]

**Abstract**: This paper is the seventh in the FodaOS Unified Field Theory series and answers a question that must be answered: when "quantum gates" are constructed exactly on classical machines, what can quantum technology actually be used for? The third paper of this series already ruled that exact simulation over GF fields enjoys no quantum speedup; accordingly, this paper rewrites the question from "quantum computing" into "a taxonomy of the classical value of quantum algebra" and gives an affirmative answer. Foundation: the Fermat prime $p=65537$ gives $\mathrm{GF}(p)^*\cong Z_{2^{16}}$ — the entire field is a binary phase circle, and the physically universal gate set $\{H,T,\mathrm{CNOT}\}$ embeds bit-exactly (VII1/VII2). Result 1 (the complete quantum gate catalog): a four-way classification by "physical attainability" — Class A physically isomorphic gates (Pauli/Clifford/T/QFT≡NTT/multi-qubit circuits verified in practice), Class B hyper-physical linear gates (the full $\mathrm{GL}_2\approx 1.8\times 10^{19}$, Frobenius conjugation, Born-bridge dual-field certification), Class C nonlinear reversible gates (the full symmetric group $S_{65537}\approx 10^{287199}$ — the entire family impossible in principle under physical linearity, with SPN gate cryptography already run), Class D structural gates (Yang-Baxter/Fibonacci anyons/Cl(4,1) conformal family/projection/damping); the exchange theorem (VII4) rules that the two gate groups commute and neither contains the other — quantization is not simulation but a strict extension. Result 2 (gate = versor): Cartan–Dieudonné unifies the entire catalog as products of reflections, and the three mechanical classes become a complete algebraic classification (VII33); the C14′ verdict experiment is 14/14 all green — classical logic gates = versors = wave-field operators in a bit-level closed loop over Cl(4,1)×GF(65537) (VII39/40). Result 3 (gate-group semantics and the use taxonomy): a reversible alphabet (free rollback/counterfactual reasoning), group-closure certifiability, and closed forms for the structural fingerprint and the leakage spectrum (VII35/36); the three-tier list of classical uses — seven items of rent already paid (E91 watermark, QFT≡NTT, SPN gate cryptography, Grover deterministic permutation, gate-residual adapter, entanglement-based memory, zero-knowledge vault), twelve mountable items (QEC→classical error correction, Möbius equivalence testing, damping gate = dissipation operatorization, etc.), and four hardware-era exits (exact simulators, protocol testbeds, MPS compression, XEB zero-error benchmarking). Result 4 (exactness theorems and boundaries): the A/B/C decomposition answers "why the measurements are exact" (VII12) — state structure and dynamics retained, destructive measurements removed; five boundaries stated without embellishment (no speedup / amplitude wall / rightful naming of the alphabet / nonlinear value / physical boundaries). The position in one sentence: the value of quantization lies not in quantum speedup but in the reversible correlation algebra — physical quantum is a subset of it, not its ceiling. All formulas have been machine-verified item by item in Appendix B.

**Keywords**: reversible correlation algebra, quantum gate catalog, GF(65537), Cl(4,1), phase domain, nonlinear reversible gates, gate-group semantics, classical uses of quantization, versor, Cartan–Dieudonné, Born bridge, structural fingerprint, dual-track formalism, spectral decomposition

---

## 1 Introduction

### 1.1 Problem Statement: The Value Crisis

This series has constructed quantum algebra exactly on classical machines: [Paper3] completed the integerization of the Clifford+T gate set, QFT, teleportation, and QEC over GF(65537); Paper 6 §6 loaded quantum gates into the residue table (gate residues), and §8 used grade involution and the Hodge star to separate the left and right tracks; the newly landed Cl(4,1) dual-channel suite on the mainline (12+10 gates) closes the three-rung ladder from scalars → $M_2$ → conformal algebra. The question therefore becomes unavoidable: **the gates outnumber physical quantum gates by tens of times — what can quantum technology actually be used for?**

This question carries a presupposition that must be dismantled first: **"the uses of quantum gates = the uses of quantum computing."** The uses of quantum computing (Shor factoring, Grover search, quantum simulation) rely on the superposition speedup and interferometric measurement of quantum hardware, while exact classical simulation enjoys no speedup at all — [Paper3] has already ruled. If the question is left at the level of "quantum computing," the answer is "no use for now."

But this presupposition is wrong. In the system of this paper, gates were never "instructions of quantum computing"; they are a **reversible-transformation alphabet and a correlation algebra** — their value holds independently on classical machines, and there is one extension direction that physical quantum can never cover. This paper lays out this value in full.

### 1.2 Three Routes: The Position of This Paper

| Route | What it is | Status |
| --- | --- | --- |
| Hardware quantum computing | Superposition speedup on physical qubits | Waiting on hardware; this paper provides it with an exact verifier and a protocol testbed (§9.3) |
| Quantum-inspired approximation | Relaxed/sampled versions of quantum algorithms (quantum annealing → simulated annealing, etc.) | Standard technique; not covered in this paper |
| **Exact finite-field quantization (this paper)** | **Bit-exact** reconstruction of quantum-algebraic structures (gates/QFT/QEC/entanglement/anyons/conformal) over GF fields + physically impossible nonlinear extensions | Built by the six prior papers of this series; this paper supplies the complete catalog and the use taxonomy |

The third route relates to the first two as follows: **for hardware quantum, it is the exact verifier** (chips rely on simulators before tape-out — the same logic); **for quantum-inspired methods, it is exactification** (approximation → zero error). Its own principal value — the reversible correlation algebra — is independent of both and stands on its own as a classical computing paradigm.

### 1.3 Main Results

The theorems of this paper are numbered with the VII prefix. Main results:

1. **Theorem VII1 (phase domain)**: $\mathrm{GF}(65537)^*\cong Z_{2^{16}}$ (3 is a primitive root, $3^{32768}\equiv-1$) — the entire field is a phase circle of order $2^{16}$, and **every nonzero field element is an exact binary phase**.
2. **Theorem VII2 (exact embedding of the physically universal set)**: $H=2040\begin{psmallmatrix}1&1\\1&-1\end{psmallmatrix}$, $T=\mathrm{diag}(1,16)$ ($T^2=S=\mathrm{diag}(1,256)$, $T^8=I$), CNOT as a permutation matrix — the physically universal gate set $\{H,T,\mathrm{CNOT}\}$ is **bit-exact** over this field; the full Pauli family includes $Y=iXZ=\begin{psmallmatrix}0&-256\\256&0\end{psmallmatrix}$ ($Y^2=I$).
3. **Theorem VII3 (gate-count metrology)**: linear hyper-physical gates number $|\mathrm{GL}_2(\mathbb{F}_p)|=(q^2-1)(q^2-q)\approx1.845\times10^{19}$; nonlinear reversible gates $|S_{65537}|$ reach **287,199 decimal digits** — the precise form of "gates outnumber the physical ones by tens of times": what is added is an **algebraic alphabet**, not quantum computing power.
4. **Theorem VII4 (exchange theorem)**: the GF gate group and the physical gate group commute without containing each other (§4.4): the intersection ⊇ the physically universal set; GF uniquely has nonlinear reversible gates and structural gates; the physical side uniquely has continuous phases, which GF approximates via on-demand field extension (VII10).
5. **Theorem VII5 (the nonlinear reversible gate family)**: every permutation over $\mathrm{GF}(p)$ is a reversible gate — $p!$ of them, impossible in principle for physical quantum because of linearity; SPN cryptographic gates (cubing permutation, 7-gate dual channel) are an already-run instance — **this is the first family by which GF quantization strictly exceeds physical quantum**.
6. **Theorem VII6 (Möbius gates)**: fractional linear gates $x\mapsto\frac{ax+b}{cx+d}$ form $\mathrm{PGL}_2(\mathbb{F}_p)$ with $|\mathrm{PGL}_2|=q(q^2-1)\approx2.81\times10^{14}$, 3-transitive on the projective line — a natural testing group for compiler semantic equivalence.
7. **Theorem VII7 (Frobenius conjugation gate)**: on the extension field $\mathrm{GF}(p)(\omega)$ ($\omega^2=5$, with 5 verified to be a quadratic non-residue), $\sigma(a+b\omega)=a-b\omega$ is an order-2 automorphism gate — **taking the conjugate = one pass of Frobenius**.
8. **Theorem VII8 (anyon gates)**: the golden ratio $\varphi=\tfrac12+\tfrac{\omega}{2}$ satisfies $\varphi^2=\varphi+1$ **bit-exactly** — the fusion phases of Fibonacci anyons exist exactly in this field, and the gate sets of topological quantum computing can be simulated exactly.
9. **Theorem VII9 (the conformal gate family)**: Cl(4,1) provides four families of conformal gates — rotor (rotation + translation + dilation in one, $h'=Rh\tilde R$), translator, dilator, inverter ($1/x$, nonlinear inversion) — unifying the five kinds of geometric transformations and eliminating nonlinear-activation lookup tables over GF fields.
10. **Proposition VII10 (on-demand field-extension phases)**: non-binary phases exist in extension fields — $3\mid p^2-1$, so the third roots of unity $\omega_3\in\mathrm{GF}(p^2)$; for any order $N$ ($\gcd(N,p)=1$), take the minimal $k$ such that $N\mid p^k-1$, and one obtains $\omega_N\in\mathrm{GF}(p^k)$ — **phase resolution is purchased on demand**.
11. **Proposition VII11 (the use taxonomy)**: the classical uses of quantization fall into three tiers — rent already paid (E91 entanglement watermark, QFT≡NTT, gate-residual adapter, entanglement-based memory, Grover deterministic permutation, SPN gate cryptography), mountable (QEC→classical error-corrected storage/channels, counterfactual reasoning, Möbius equivalence testing, damping gate = dissipation operatorization), hardware-era exits (exact simulators, protocol testbeds, MPS compression).
12. **Rightful naming and boundary setting**: the no-speedup verdict is reaffirmed; the $2^N$ amplitude wall is unchanged; "gates outnumber by tens of times" = the size of an algebraic alphabet, **not** quantum computing power; the "non-physicality" of nonlinear gates is precisely their value — physical linearity is a constraint of nature, not a limitation of computation.
13. **Theorem VII16 (division of labor among prime families)**: Fermat primes govern power-of-2 phases (Born bridge), and Mersenne primes $p\equiv1\ (\mathrm{mod}\ 4)$ govern fifth-root-of-unity phases (Jones bridge) — a triple strike: the entire Fermat family ($n\ge2$; $F_1=5$ is the modulus 5 itself and not among them) satisfies $F_n\equiv2\ (\mathrm{mod}\ 5)$ and hence cannot host Fibonacci anyons (death sentence for $\zeta_{10}$); $\mathrm{GF}(65537^2)$ has $\varphi$ but no $\zeta_{10}$ ($p^2-1$ has no factor 5), so the smallest complete field is $\mathrm{GF}(65537^4)$; the Mersenne criterion $10\mid 2^p-2\Leftrightarrow p\equiv1\ (\mathrm{mod}\ 4)$ — M13/M17 ✓, M31 ✗ (§2.3).
14. **Theorem VII17 (Born bridge)**: all amplitudes of Clifford+T circuits lie in $\mathbb{Z}[1/\sqrt2,i]$, and the Born weight $|c|^2=(x^2+y^2)/2^k$ is **always a dyadic rational**; GF field images undergo rational reconstruction via "try-$k$ lifting," and dual-field (65537, 131071) consistency = the certificate of exactness; when the denominator exceeds the power-of-2 capacity ($2^{16}$), the system **fails loud, not silent** (§4.2).
15. **Theorem VII18 (the exact Grover angle)**: GF realizability splits into two cases — when $\sqrt N\in\mathrm{GF}(p)$, the physical angle is already exact ($N=9$: $\sin\theta=1/3$, $\cos\theta=2\sqrt2/3$ enters the field via $\sqrt2=4080$, zero error over the full amplitude); in the general case, a Grover-type exact amplification operator is defined by the Pythagorean angle $(\cos\theta,\sin\theta,r)=(4,3,5)$ (a design choice, not corresponding to an integer $N$), with the doubled angle exact along the 7-24-25 chain; the Chebyshev closed-form golden anchor $A_2=241/243$ agrees independently along both routes (§5.2).
16. **Theorem VII19 (integrability is detectable)**: Yang-Baxter integrable collisions form a **rare proper subfamily of unitary gates, and the rarity is detectable** — the CNOT negative control (unitary but failing YBE) is detected exactly, element by element; YBE factorization makes $n$-body collision $=O(n^2)$ — **structural speedup**, independent of quantum speedup and tensor compression (§6.1).
17. **Proposition VII32 (the simulator's privilege gate set)**: the three physical-quantum prohibitions (no cloning / irreversible collapse / peeking destroys) map on the GF side to three freedoms (cloning gate → counterfactual verification, exact $U^\dagger$ → circuit-equivalence certificates, full-amplitude audit → an $O(1)$ replacement for tomography) — the fourth class $U(n,\mathrm{GF}(p))$ consists of "not better quantum gates, but gates of another family"; **not a player but a referee** (§8.6).
18. **Theorem VII33 (gate = versor, the Cartan–Dieudonné unification)**: every orthogonal transformation is a product of ≤n reflections, and gates unify as versor sandwiching $M'=VMV^{-1}$; the three mechanical classes = the complete versor classification — permutation = basis-vector permutation, phase = even versor (rotor), reflection = odd versor (**H is a reflection, not a rotation**, $\det H=-1$); the pseudoscalar $I_5$ is central ⟹ the G5 fingerprint is invariant under the full Pin group (reflections included). Boundary setting: finite-field gate groups are finite matrix groups (no Solovay–Kitaev universality; the phrase "universal quantum gate set" is banned); the exactness ledger — permutation classes are exact over any field, and only phase/reflection classes reap the Fermat-prime dividend (§7.1).
19. **Theorem VII34 (unification of the triviality firewall)**: $\mathrm{is\_trivial}\iff H_1=0\wedge H_2=0\iff|\sum_i u_i|=\sum_i|u_i|\iff D=0\iff D_1=R_1\iff T(T)=T$ — homology checks, PCD, Bragg replay, and Kleene self-reference are five expressions of one and the same triviality invariant (the algebraic form of Meissner expulsion: detecting topological singularity, not checking numerical errors); the simplest algebraic form of the Kleene fixed point: the fixed points of $x\mapsto x^2$ are $\{0,1\}$ (iteration of a nonzero element always lands on 1) — the bootstrap tower = vacuum-state self-consistency.
20. **Theorems VII35 + VII36 (structural fingerprint and leakage spectrum)**: fingerprint invariance — once the type code pins down the $e_1$ axis, "fingerprint = rotor invariants of the Spin subgroup with a fixed axis" is upgraded from convention to theorem (pinned to a rotatable vector component, the check would necessarily blow up); closed forms and measurements of the leakage spectrum — $G_1\times G_2\to G_3$ with probability $3/5$ (measured 166/256 and 163/256), $G_2\times G_2\to G_4$ with probability $3/10$ (measured 77/256), and $\to G_5$ zero leakage as a trivial closed form — the 36-cell closure table is exactly the node write-permission table.
21. **Theorem VII37 (the three-leg isomorphism) + two corollaries of the Born bridge**: the in-field unitary algebraic engine / Born lifting bridge / out-of-field sampling ↔ unitary evolution / Born rule / measurement sampling — "randomness cannot grow inside the field" is a boundary drawn by quantum mechanics itself, not a defect; order and positive definiteness are attributes read out only after lifting to ℚ (carrier ≠ semantics); the dual-field Born certificate is at the same time an existence proof for RNS four-layer zero-synchronization parallelism (not one cross-prime message between prime fields until the CRT confluence) (§4.2b, §10).
22. **Proposition VII38 (the gate/collision boundary is decidable at compile time) + engineering extension**: a pure gate circuit = one that never invokes $\odot/\downarrow/\Delta$ at any point — the absence of a surplus region inside the homomorphic image is decided at compile time from the operator-invocation table, and compiler correctness = algebraic invariant; the XEB zero-error benchmark generator (the fourth hardware-era exit); the Cl(4,1) suite totals 62 files and about 364 gates, all green (50+ reports, 0 failures), and the CGA master formula $\langle S_1,S_2\rangle=\tfrac12(r_1^2+r_2^2-d^2)$ unifies all tangent-sphere conditions (§6.3, §9.3).
23. **Theorems VII39 + VII40 (the C14′ bit-level closed loop, 14/14 all green)**: the seven-dimensional evidence chain for classical logic gates = versors = wave-field operators (versor face / permutation face / wave-field direction / orthogonality bridge $TT^\top=I$ / the three GF constants / falsification / determinism) — sign-phase bookkeeping ($X$ line-reflection sign flips penetrate composition: routing is gate logic, sign is phase, i.e., the GA form of Gottesman–Knill phase bits); linear extension (superposed outputs = linear combinations of basis outputs, classical computation is a special case of wave-field computation on the standard basis, and surplus attribution thereby becomes subtraction measurement); the half adder = the first fully compiled and correctly executed classical program in the engine's history. A narrowed novelty claim: the gate correspondence is textbook material (Bennett 1973/Toffoli 1980); this paper is the first to treat it as a compile-time invariant of a wave-field dataflow engine and to close the loop at the bit level over Cl(4,1)×GF(65537) (§7.1).
24. **Extension theorems (VII20–VII31)**: 13 new theorems covering field reasoning, the CGA theorem suite, exactness supplements, and extended gate families; further extensions appear in VII33–VII56 —
    | Theorem | Topic | Location |
    | --- | --- | --- |
    | VII20 | Field reasoning = five polynomial-algebra equivalences | §4.2c |
    | VII20′ | Four-layer parallelism and complexity pins | §4.2b |
    | VII21 | Explicit homomorphism $Cl(4,1)\cong M(4,\mathbb C)$ | §6.3 |
    | VII22–25 | CGA tangent spheres / dual representation of circle-lines / triangle center lines / spectrum of idempotents | §6.3 |
    | VII26 | Trinity collapse {3,2,1} | §8.7 |
    | VII27 | The 32-dimensional inventory | §8.8 |
    | VII28 | AOS/SOA duality | §8.8 |
    | VII29 | Wave-particle duality = poles (LSZ) | §14.1b |
    | VII30 | Exact dynamics of the Grover spiral | §5.2 |
    | VII31 | PCD = ACD arithmetic-consistency divergence | §8.7 |
    | VII33 | Gate = versor (Cartan–Dieudonné unification) | §7.1 |
    | VII34 | Unification of the triviality firewall | §8.7 |
    | VII35–VII36 | Structural fingerprint + leakage-spectrum closed forms | §8.8 |
    | VII37 | The three-leg isomorphism | §10 |
    | VII38 | Gate/collision boundary decidable at compile time | §8.7 |
    | VII39–VII40 | Sign-phase bookkeeping + linear extension (C14′) | §7.1 |
    | VII41 | Residueon table = spectral decomposition (dual-track duality) | §1.4 |
    | VII42–VII43 | Bivector Lie algebra + Cartan decomposition | §6.3 |
    | VII44–VII45 | Class E topological gates + Class I distributed gates | §6.5 |
    | VII46–VII48 | KS enumeration + zero-norm repair + quantum-as-query | §8.6/§4.2b/§8.4 |
    | VII49–VII50 | Class F chaotic gates + Class G quantum-walk gates | §6.5 |
    | VII53–VII56 | Universal representation + memory wall + UTF-32 + multimodal deflection | §16.2/§3.4/§2.2b/§8.5 |

### 1.4 From the Residue Field to the Dual-Track Formalism: Path Review and the Upgrade Verdict

**Step one: the residue field — the exact representation of waves.** The starting point of the system is the wave-field ontology: if everything is a wave, what is the exact representation of a wave? The answer lies not in approximation libraries but in analytic structure — the scattering matrix is inherently poles + residues, and Green's functions and causal propagators are naturally rational functions; **the residue field is the native language of scattering, not its simulator** (§6.1). [Paper1] accordingly grounded the physical unified field in the residue-field program $\Psi(z)=\sum_k r_k/(z-z_k)^{n_k}$: a finite number of parameters (pole locations / residue amplitudes / orders) exactly encodes a rational wave field, and the residue theorem supplies free of charge the ledger "global activity = sum of local residues."

**Step two: the residueon table — the discrete data atom of waves.** Once the wave field is to be loaded into a computer, the question inverts to "the wave-field representation of operators and weights." The diagonalized form of recursive weights (SSM/Mamba types) exposed the answer: the characteristic parameters of the state space are precisely poles (Paper 6 §17.6, pole surgery); attention = the spatial-domain Green function, and the residueon table = the frequency-domain pole decomposition — the two spectral decompositions are duals of each other (Paper 6 VI23/24). [Paper4] established $(z,r,n)$ as the three-branch primitive, and [Paper5] established the residueon table as the sole IR of the bootstrap compiler — **the residueon table is the data form of the spectral decomposition theorem**:

**Proposition VII41 (the spectral-decomposition essence of the residueon table and the dual-track duality)**. For a diagonalizable linear operator $U=\sum_k\lambda_k P_k$: the pole $z_k$ = the eigenvalue $\lambda_k$, and the residue $r_k$ = the eigenprojection $P_k$ — the residueon table represents any diagonalizable operator **exactly and losslessly**, without recourse to any geometric algebra. Verdict table: the poles of NOT are $\{+1,-1\}$, of S $\{1,i\}$, of T $\{1,16\}$, of CNOT $\{1,1,1,-1\}$ — the seemingly mysterious "phase" of a quantum gate is just a particular pole location (cf. Appendix A: $i=256$ and $\zeta_8=4096$ are exact in the field). From this follows the **dual-track formalism**: wave-field computation is the body, the **residueon table = the frequency-domain/spectral track** (pole resonance, filtering, partial fractions), and **Clifford = the spatial-domain/geometric track** (reflection, routing, orthogonality) — two languages for the same object, mathematically dual; the entire verification of C14′ can be reproduced using the residueon table alone. ∎ (The spectral decomposition theorem is standard linear algebra; the verdict table is checked line by line against the Appendix A constants.)

**Step three: why upgrade to Clifford at all — three exclusive increments.** Since the residueon table can do it (and did it first — the compiler, wave-field computation, and dark-state memory all ran through within the residueon-table framework first), there are three verdict reasons for the upgrade:

1. **Rules change from manually defined to algebraically intrinsic**. In the residueon-table system, dark states are defined as by-products of operations, order conservation is an engineering convention, and collision order-raising is a self-set rule — boundaries must be measured by oneself, and leakage must be hunted down by one's own experiments. In Clifford these are all theorems: the complete G5 boundary is a necessity of Hodge duality and order arithmetic; rotor order preservation and versor self-inversion are direct corollaries of Cartan–Dieudonné (VII33); the leakage spectrum has both closed forms and measurements (VII36). **The mathematics community has already finished proving the correctness; this paper merely recognized that the residueon system happens to fall inside this structure.**
2. **Access to a century-old general-purpose knowledge base**. Gottesman–Knill bounds, error-correcting code theory, robot conformal kinematics, interference/diffraction/topological effects of fields — all bounds can be translated over directly (§7.1 academic positioning); there is no need to reinvent the wheel in every direction, and the system's findings can thereby be understood and reused by other fields.
3. **Higher-order extension slots**. G3 dark states / G4 conformal / G5 topological charge are closures that come with the algebra; extension upward along the grade has no structural discontinuity. Doing higher orders in the residueon table requires manually adding fields, adding rules, and adding checks, which invites structural holes — the leakage spectrum of VII36 ($G_3/G_4$ are not safe containers) is the empirical proof.

**Upgrade verdict**: Clifford is not the engine (the engine has always been the residueon table); it is the **skeleton and the extender** — it upgrades the two-gate correspondence from "an artificially constructed engineering map" to "an intrinsic mathematical-physical structure." The implementation strategy is **layered reuse**: the runtime layer uses the residueon table (lightweight, direct, easy to deploy), while the compilation-design layer uses Clifford (grade as the type system, theorems as boundary checks); the two convert into each other losslessly — the residueon table is the low-order explicit projection of Clifford multivectors, and Clifford is the high-order complete expansion of the residueon table (round-trip bit-identical verified, Paper 6 §6.4).

### 1.5 The Record of Rejected Alternatives: Why Not Fourier, Wavelets, and Others

The complete answer to "why not use X" has two layers: **whether X already serves in the system** (most do), and **why X does not serve as the ontological representation** (rejected one by one):

| Candidate | Post held in the system | Reason for not serving as the ontological representation |
| --- | --- | --- |
| Fourier analysis | **In service**: QFT≡NTT (§3.4); every convolution of the ≋ operator collects rent | A global basis has no locality; analytic structure is lost — a rational wave field is exactly encoded by finitely many poles, while a Fourier expansion needs infinitely many coefficients for localized/singular features; frequency-domain multiplication = convolution but pointwise multiplication has no local algebra; truncation is lossy |
| Wavelet analysis | The idea is absorbed: multiresolution = nested residueon fields (fractal children bookkept exactly by order, [Paper4]) | A fixed mother wavelet is a basis expansion, not analytic structure — it does not encode pole/zero semantics; wavelet coefficients have no multiplicative algebra (no carrier for the geometric product / collision); truncation is lossy; exact wavelet theory over finite fields is immature |
| Padé / orthogonal-polynomial spectral methods | Padé is the approximation-side shadow of the residue field | This paper uses **exact** partial fractions, not approximation; global spectral bases such as Chebyshev fall under the same rejection as Fourier |

| Matrix groups / Lie algebras | — | Transformations present but no grade bookkeeping: dark states / topological charges are homeless (the slot semantics of the leakage spectrum has nothing to attach to); no versor reflection semantics — VII39's sign bookkeeping has no carrier |
| Quaternions / dual quaternions | — | Specialized to 3D / rigid bodies; no 5-dimensional conformal unification (rotation+translation+dilation+inversion in one, §6.3); no grade data type (§8.5 modality table) |
| Tensor network MPS | **In service**: compression outlet (§9.3) | A compression form, not an ontology: truncation approximation conflicts with the three-non principle |
| Floating-point complex field ℂ | The departing party of floating-point customs (Paper6 §17.5) | Rounding noise makes bit-level verdicts impossible — C14′'s mutation 20/20 would necessarily break, and the dual-domain consistency certificate and the leakage spectrum 166/256 all rely on integer exactness; the absence of rounding ambiguity is the hardest version of "zero hallucination" (§7.1) |

In one sentence: **Fourier handles global oscillation, wavelets handle scale localization, residueons handle analytic singularities** — the three entrances of wave-field computation each hold a post, and new entrances may yet appear; this paper takes residueons as ontology and Clifford as skeleton because the analytic and geometric structure of the target objects (scattering / propagators / recursive weights / logic gates) happens to be the native territory of exactly these two, and only finite-field arithmetic can deliver bit-level verdicts. ∎

### 1.6 Paper structure

§1.4 reviews the path from the residue field to the dual-track system and the upgrade verdict; §1.5 records the rejected alternatives. §2 foundations (§2.0 textbook-vocabulary correspondence; phase domain + extension field). Part One (§3–§7), the full quantum gate catalog: Class A physical isomorphs; Class B hyperphysical linear (including the Born bridge §4.2b, four-layer parallelism VII20′, and field inference = polynomial algebra five equivalences §4.2c/VII20); Class C nonlinear reversible; Class D structural gates (including the Cl(4,1) gate-family theorem group §6.3/VII21–25); and the master table. Part Two (§8) gate-group semantics (including the triviality-firewall unification, structural fingerprints and the leakage spectrum, the 32-dimensional inventory VII27, and the AOS/SOA duality VII28). Part Three (§9) a taxonomy of classical uses. Part Four (§10–§14) exactness theorems — why measurement is exact: the A/B/C decomposition and non-destructive measurement (VII12), the pseudo-real-number criterion (VII13), integration = finite sum (VII14), and the no-uncertainty duality of the arithmetic domain (VII15) — plus the residue-field vs. quantum-field comparison. Part Five (§15) boundaries. Part Six (§16) engineering measurements and validation. §17 conclusion. Appendix A constants table; Appendix B validation records (B.16 extended validation); Appendix C glossary; references.

---

## 2 Foundations: the phase domain and the extension field

### 2.0 Finite-field quantum mechanics: a correspondence with textbook vocabulary

Readers familiar with textbook quantum mechanics can first use the table below to hook the standard vocabulary onto the finite-field form of this paper; the complete integer-ized formalism of states, evolution and measurement is given in [Paper3]. This paper does not re-establish axioms, but only extends on top of it: a catalog extension (Part One), a semantics extension (Part Two), and a uses extension (Part Three).

| Textbook concept | GF(65537) form | Location in this paper |
| --- | --- | --- |
| State vector $\lvert\psi\rangle=\alpha\lvert0\rangle+\beta\lvert1\rangle$ | Vector over $\mathbb{F}_p^k$; amplitudes are field elements | §3.1, [Paper3] |
| Superposition | Linear combination: the in-field image of the $H$ gate maps basis vectors to uniform superposition | §3.1–§3.2 |
| Phase | Multiplicative phase factor: elements on the phase circle of order $2^{16}$ ($i=256$, $T$ phase 16) | §2.1 (VII1) |
| Entanglement | Non-factorizable tensor-product states: the exact in-field form of the Bell state | §3.3b, §8.4 |
| Measurement (Born rule) | Born readout = $2^{16}$-grid counting of squared amplitudes; probabilities lifted to $\mathbb Q$ for readout via the Born bridge | §10 (VII12), §4.2b (VII17) |
| Collapse | Nonexistent — readout does not destroy the field (non-destructive measurement); random sampling is placed outside the field | §10 (VII12/VII37) |
| Gates | Invertible matrices and permutations over GF, four-way classified by "physical attainability" | Part One (§3–§7) |
| Decoherence / noise | Not modeled — exact arithmetic has no rounding; judging real hardware requires injecting a noise model (§8.6) | §11, §15 |

Reading guide: the narrative unit of this paper is the "class of gates" (A physical isomorphs / B hyperphysical linear / C nonlinear reversible / D structural gates), not "quantum phenomena"; the infrastructure in textbook order has been handled by [Paper3], and this paper's task is to give the full catalog and answer "what can it be used for". The essential dividing line between finite fields and standard quantum mechanics (the null norm phenomenon) is in VII47.

### 2.1 Phase domain theorem

**Theorem VII1 (phase domain)**. $p=65537=2^{16}+1$, so $\mathrm{GF}(p)^*$ is a cyclic group of order $2^{16}$ (3 is a primitive root: $3^{32768}\equiv-1$). **Corollary: every nonzero element $a$ of the whole field satisfies $a^{2^{16}}=1$ — the entire field is a phase circle divided into 65536 equal parts**; all Dyadic phases $e^{i\pi/2^m}$ ($m\le15$) of physical quantum gates exist in this field with zero error, and no physical quantum computer can claim to cover Dyadic angles "more continuously" than it. ∎ (Appendix B.2.)

**Lemma (cyclotomic criterion)**. $\mu_N\subseteq\mathrm{GF}(p)\iff N\mid p-1$ — the cyclotomic formulation of the integer-ization of H/S/T: $65537\equiv1\ (\mathrm{mod}\ 8)$, so $\mu_8$ splits completely in the field (the cyclotomic reading of VII1).

### 2.2 Key constants and the extension field

| Constant | Value | Identity |
| ---------------- | ------------ | ----------------------------------------------------- |
| $i$              | 256          | $256^2\equiv-1$                                       |
| $\sqrt2$         | 4080         | $4080^2\equiv2$                                       |
| $2\sqrt2$        | 8160         | $8160^2\equiv8$ (exact CHSH value)                    |
| $T$-gate phase   | 16           | $16^2\equiv i$, $16^4\equiv-1$, $16^8\equiv1$         |
| $1/2,\ 1/4$      | 32769, 49153 | —                                                     |
| $\omega$ (extension field) | $\omega^2=5$ | 5 is a quadratic non-residue ($5^{32768}\equiv-1$); $x^2-5$ is irreducible |

Extension field $\mathrm{GF}(p^2)=\mathrm{GF}(p)(\omega)$, with multiplication $(a,b)(c,d)=(ac-5bd,\ ad+bc)$; Frobenius automorphism $\sigma(a+b\omega)=a-b\omega$. $p^2-1=2^{17}\cdot3\cdot10923$ — **non-binary phases start here**: the cube root of unity $\omega_3\in\mathrm{GF}(p^2)$ (Proposition VII10).

### 2.2b UTF-32 → GF(65537): characters are field elements

**Proposition VII55 (UTF-32 native encoding)**. The Unicode Basic Multilingual Plane (BMP) has exactly $2^{16}=65536$ code points (U+0000 through U+FFFF; among these, the 2048 surrogate code points U+D800–U+DFFF are not characters, and the mapping reserves them unused), while $\mathrm{GF}(65537)$ has exactly $65537$ elements — **a pointwise bijection**:

$$\text{U}+\text{code} \;\longleftrightarrow\; \text{the }(\text{code}+1)\text{-th nonzero element of }\mathrm{GF}(65537).$$

Every Unicode character — Chinese characters, English letters, code symbols, mathematical notation — **is a GF(65537) field element**. No BPE, no vocabulary file, no tokenizer training: **the tokenizer is eliminated by algebra**.

| Character | Unicode code point | GF(65537) element | Semantics |
| ---- | -------------- | -------------- | ------------------- |
| 中   | U+4E2D = 20013 | GF(20013)      | Chinese character = 1 token |
| A    | U+0041 = 65    | GF(65)         | English letter = 1 token |
| {    | U+007B = 123   | GF(123)        | Code symbol = 1 token |
| ∀    | U+2200 = 8704  | GF(8704)       | Mathematical notation = 1 token |
| 🜋    | U+1F70B (SMP)  | Requires extension field | Supplementary plane = extension-field encoding |

**Triple elimination**:

1. **Eliminating the tokenizer**: UTF-32 code points are GF elements; encoding = table lookup (the identity mapping), decoding = inverse lookup. BPE's merge operations, the vocabulary file, unk tokens — none of these exist.
2. **Eliminating the Chinese disadvantage**: Chinese = 1 token/character (vs 1.41 tokens/character for current BPE); the encoding cost of Chinese and English is **fully equal** — Chinese is no longer a "second-class citizen".
3. **Eliminating vocabulary-extension surgery**: new languages, new symbols, new emoji — Unicode already covers them; **adding a character does not require adding a vocabulary row**, because characters are themselves field elements.

**GF operations = character operations (arithmetic layer, not semantic layer)**. The addition, subtraction, multiplication and division of the GF field are computable and invertible at the character-encoding level:

- Multiplication: character modulation (Paper6 gate-residual logic — invertible: "中"×"A"÷"A"="中", Appendix B.11b)
- Frobenius $x \to x^2$: character-field conjugation
- Inverse: taking the inverse of a character (the algebraic form of decoding/decompilation)
- Addition: closed and computable within the field, but **carries no** character semantics (see the boundary at the end of this section — "中+A" is not a meaningful character)

**Connection to the existing pipeline**: the current Mamba-130M uses GPT-NeoX byte-level BPE (Chinese at 1.41 tokens/character; generation emits text piece by piece). After switching to UTF-32 native encoding: Chinese at 1 token/character, each token maps exactly to one GF element, and the vocabulary dimension of lm_head changes from 50280 to 65536 (or takes a subset as needed) — **this is not vocabulary-extension surgery but the algebraic replacement of the tokenizer**.

**Relation to ARC**: the ARC arithmetic resonance computer of [Paper2] listed UTF-32 as one of its four native types from the very start of its design (GF(p), Cl(4,1), Tensor, UTF-32) — this paper confirms its number-theoretic basis: the phase circle of order $2^{16}$ of the Fermat prime $p=2^{16}+1$ **exactly covers the entire code point space of the Unicode BMP**. This is no coincidence: the choice of the Fermat prime simultaneously optimizes the Born bridge (§4.2b) and Unicode encoding — two constraints pointing at the same $2^{16}$. A third instance: the 65536 vocabulary of RWKV-7-class linear RNNs is likewise $2^{16}$ — token indices and field elements align naturally (§1.4 spectral track).

**Boundary**: the UTF-32 → GF mapping is a bijection, not an isomorphism — GF addition/multiplication has **no** natural semantic interpretation at the character level ("中+A" does not equal a meaningful character). The semantics of GF operations come from gate algebra (§6) and field evaluation (§2.2), not from character encoding itself. Encoding is a channel, not semantics. ∎ (The bijection is verified point by point in Appendix B.11b.)

### 2.3 The prime-family division-of-labor theorem

**Theorem VII16 (prime-family division of labor)**. Different prime families carry different phase algebras, with complementary roles:

1. **Fermat handles powers-of-2 phases**: $p-1=2^{16}$ gives binary phases across the whole field (VII1), and the denominator capacity of the Born bridge is exactly $2^{16}$ — the Born bridge is the exclusive wage of the Fermat prime.
2. **The anyon death sentence of the Fermat family**: all Fermat primes satisfy $F_n\equiv2\ (\mathrm{mod}\ 5)$ ($n\ge2$; $F_1=5$ is the modulus 5 itself, not within scope), so $\left(\tfrac{5}{F_n}\right)=\left(\tfrac{2}{5}\right)=-1$ — $\sqrt5$ is always a quadratic non-residue, and $\varphi$ can only enter the extension field; moreover $p^2-1$ has no factor 5, so $\zeta_{10}$ (the Fibonacci R-matrix phase) **has no foothold in the entire Fermat family**.
3. **Mersenne handles fifth-root-of-unity phases**: $M_p$ contains $\zeta_{10}\Leftrightarrow10\mid 2^p-2\Leftrightarrow p\equiv1\ (\mathrm{mod}\ 4)$ — M13=8191 ✓, M17=131071 ✓, M31 ✗. **The natural domain of the Jones bridge (braid invariants) is the prime family $\{8191,131071\}$**.
4. **The minimal complete field**: $\mathrm{GF}(65537^4)$ supplies both $\varphi$ and $\zeta_{10}$ — the complete R/F gate family of Fibonacci anyons closes in the fourth-order extension field.

**Prime selection therefore becomes an architectural decision**: Born-bridge circuits run on the Fermat domain, Jones braid grading runs on the Mersenne domain — the third wage of the dual-domain exchange (the first two: cross-domain verification, RNS parallelism). ∎ ($p\equiv2\ (\mathrm{mod}\ 5)$ and $5\nmid p^2-1$ verified in Appendix B.13.)

---

# Part One: the full quantum gate catalog

The catalog is four-way classified by "physical attainability". Notation: [Verified] = machine-verified by this series / the mainline suite; [Constructed] = defined in this paper, with a GF representation given.

## 3 Class A: physically isomorphic gates (what hardware can do, we do exactly)

### 3.1 The full Pauli family and Clifford

| Gate | GF definition | Identity | Status |
| ------------- | --------------------------------------------------------------- | ---------------- | ------ |
| $I$           | $\mathrm{diag}(1,1)$                                            | —                | —      |
| $X$           | $\begin{psmallmatrix}0&1\\1&0\end{psmallmatrix}$                | $X^2=I$          | [Verified] |
| $Z$           | $\mathrm{diag}(1,-1)$                                           | $Z^2=I$          | [Verified] |
| $Y$           | $\begin{psmallmatrix}0&-256\\256&0\end{psmallmatrix}$ ($=iXZ$) | $Y^2=I$, $YZ=iX$ | [Verified] |
| $H$           | $2040\begin{psmallmatrix}1&1\\1&-1\end{psmallmatrix}$           | $H^2=I$          | [Verified] |
| $S$           | $\mathrm{diag}(1,256)$                                          | $S^2=Z$          | [Verified] |
| Clifford conjugation | $ZXZ=-X$                                                 | —                | [Verified] |

The single-qubit Clifford group (generated by $H,S$) has 24 elements — octahedral symmetry replayed exactly in the GF field.

### 3.2 The phase ladder and the T gate

**Theorem VII2 (exact embedding of the physical universal set)**. Define $T=\mathrm{diag}(1,16)$: $16^2\equiv256=i\Rightarrow T^2=S$; $16^8\equiv1\Rightarrow T^8=I$ — $T$ is exactly the physical $\pi/4$ phase gate, **of order exactly 8**. Thus the physical universal set $\{H,T,\mathrm{CNOT}\}$ all enter the field exactly, and by VII1, any $R(k\pi/2^m)=\mathrm{diag}(1,\,3^{k\cdot2^{15-m}})$ (3 is the primitive root; $3^{2^{15-m}}$ has order exactly $2^{m+1}$; for $m=2$, $3^{2^{13}}=4096$, a conjugate channel of the $T$ phase 16 — note that 16 itself has order only 8, and phases of order $>8$ must be generated via the primitive root 3) is exact for all $m\le15$ — **however many rungs the physical gate ladder has, this field has just as many, not one missing**. ∎ (Appendix B.3.)

### 3.3 Multi-qubit gates and permutation gates

CNOT (4×4 permutation), CZ, SWAP, **Toffoli** (CCNOT, 8×8 permutation), **Fredkin** (CSWAP) — all are permutation matrices, bit-exact in the GF field. Permutation gates are the first batch of Class A gates that are physically "hard to do" (multi-qubit coherence) but classically "free" (Class C will push this point to the extreme).

### 3.3b Multi-qubit circuits in practice: phase estimation, teleportation, the stabilizer tableau

Class A goes beyond single gates — complete circuits run bit-exactly in the GF field:

- **Quantum phase estimation (QPE)**: 3 counting qubits + 1 eigenstate; the 8th root of unity $(h,h)$ exact ($h=1/\sqrt2=2040$); pipeline = uniform superposition → phase kickback → inverse QFT → exact eigenstate reconstruction (all 16 components checked); Born readout of the phase fraction — the $T$ gate eigenphase reads out $1/8$, the $S$ gate $1/4$, the $Z$ gate $1/2$, all with zero error.
- **Teleportation**: Bell preparation → Bell measurement decoding → Pauli correction (all four of $I/X/Z/XZ$ exact one by one) — **fidelity $F=1$**. Physical teleportation is limited by decoherence and imperfect Bell measurement; in the GF field the fidelity is always 1: this is not "better teleportation" but "the algebraic ideal form of teleportation" (a reference baseline). Dense coding is isomorphic: 4 Paulis recover 2 classical bits, capacity $=2$ exactly.
- **CHSH/Bell violation**: optimal angles $(0,\pi/4,\pi/8,3\pi/8)$; $S=2\sqrt2=8160$ exact, $S^2\equiv8$; classical bound 2 — **the 16 groups of measurement assignments are enumerated in pure integers**; the Bell violation does not need a single floating-point number.
- **Stabilizer tableau method**: Clifford circuits take the polynomial path ($2^n$ never appears) — GHZ states verified up to **64 bits** (63 $Z_iZ_{i+1}$ generators + an $X^{\otimes n}$ membership proof; the $2^{64}$ components of the state vector and the $2^{128}$ entries of the density matrix are both impossible to fit in memory, while the tableau method runs in milliseconds); pushback membership criterion (true stabilizers accepted, pseudo-stabilizers rejected with phase $i$).

### 3.4 QFT ≡ NTT

The classical exact form of the quantum Fourier transform is the number-theoretic transform: replace $\omega=e^{2\pi i/n}$ of $\mathrm{QFT}_n$ with a primitive root of order $n$ and you obtain the NTT. This is the **oldest rent** in the "classical uses of quantum technology": convolution acceleration, big-integer multiplication, spectral analysis — the ≋ operator of this series collects it every day. QEC decoding (stab–edge measurement) likewise falls within GF linear algebra (§9).

**Proposition VII54 (the memory wall of period extraction)**. Shor period extraction requires the amplitude sequence $f(x)=a^x\bmod N$ to be present in the field fully explicitly (values of $f$ at RSA-2048 scale already require a multi-prime RNS payload just to enter the field): extraction is completed exactly within GF(65537) via the NTT, floating-point-free throughout, if and only if the period $T$ divides $2^{16}$ (the NTT length constraint, VII1); exact extraction of a general $T$ requires explicit storage of $\Theta(T)$ amplitudes — for the RSA-2048 modulus $N\approx2^{2048}$, the multiplicative order of a random base is typically of the same order as $N$, i.e., $\sim2^{2048}$ amplitudes must all lie in memory; **every amplitude must lie in memory, and the cost is proportional to the state-space dimension**. Combined with the subexponential algorithms of the classical number field sieve on the other side, period extraction constitutes the cleanest worked example of the no-acceleration verdict (§15): what the GF-exact side buys is bit-exactness and auditability, not a polynomial-to-exponential flip. ∎ (Order argument: $\mathrm{ord}(2)=32$, $\mathrm{ord}(3)=2^{16}$, see Appendix A; the general form of the amplitude wall is in Paper6 VI9.)

## 4 Class B: hyperphysical linear gates

### 4.1 Arbitrary GL₂ matrix gates

Physical single-qubit gates are constrained by realizability; this field provides **all** of $\mathrm{GL}_2(\mathbb{F}_{65537})$:

$$|\mathrm{GL}_2(\mathbb{F}_q)|=(q^2-1)(q^2-q)=18{,}447{,}588{,}507{,}229{,}618{,}176\approx1.845\times10^{19}.$$

Every element is an invertible linear gate — programmable gain-dissipation, certifiable reversible mixing. Uses: the gate-residual adapter (Paper6 §10.3, i.e., low-rank adaptation on the residueon table), reversible feature-mixing layers.

### 4.2 The Frobenius conjugation gate

**Theorem VII7**. On $\mathrm{GF}(p)(\omega)$ ($\omega^2=5$) define $\sigma(a+b\omega)=a-b\omega$: $\sigma$ is a field automorphism of order 2 ($\sigma^2=\mathrm{id}$), and $\sigma(\omega)=-\omega$ is exactly the second root of $x^2-5$ — **taking the conjugate = running Frobenius once**. Uses: the "mirror flip" operator of the complex semantic field (real part kept, imaginary part negated), the field-theoretic form of chirality operations. ∎ (Appendix B.8.)

### 4.2b Born bridge theorem: dyadic rationality of Clifford+T amplitudes

**Theorem VII17 (Born bridge)**. All amplitudes of a Clifford+T circuit lie in the ring $\mathbb{Z}[1/\sqrt2,i]$: $c=(x+yi)\cdot 2^{-k/2}$ ($x,y\in\mathbb Z$), so the Born weight

$$|c|^2=\frac{x^2+y^2}{2^k}\quad\text{is always a dyadic rational}.$$

The GF-field image $(x^2+y^2)\cdot 2^{-k}\bmod p$ undergoes rational reconstruction via "trial-$k$ lifting" (if $v\cdot 2^k\bmod p$ falls into the small-integer band, the numerator $m$ is obtained); a single field is plagued by false positives — **simultaneous agreement of the dual fields (65537, 131071) = a certificate of exactness**; when circuit depth pushes the denominator beyond the power-of-2 capacity ($2^{16}$), lifting fails — **fail-loud, not fail-silent**; deeper circuits add primes via RNS. The power-of-2 size of the Fermat prime was chosen precisely for this bridge (VII16). ∎ (Lifting examples verified in Appendix B.13.)

**Corollary (the ℚ-side readout of order and positivity)**. The $|c|^2$ computed in the field is merely a GF element — non-negativity and order do not exist in the field, nor need they: they are properties read out after lifting to ℚ, just as the probabilities of a floating-point simulator do not live in the IEEE 754 bit patterns but in the real numbers those bit patterns represent. **Carrier ≠ semantics** — the objection "finite fields have no probabilities" is thereby dissolved: the probabilistic semantics is carried by the lifting bridge as a whole and does not require pointwise carriage within the field. ∎

**Corollary (the dual-domain certificate = an existence proof of RNS parallelism)**. The RNS form slices the circuit into parallel pieces by amplitude pairs $(i,\,i+2^q)$, with **not a single cross-prime message** between prime fields until the CRT rendezvous — the $t_{born}$ dual-domain certificate proves the correctness of zero-synchronization splitting in the very same act of verifying exactness. IEEE floating-point rounding noise cannot be decomposed by modulus, so this parallelism is the exclusive wage of the GF form. ∎

**Proposition VII20′ (four-layer parallelism and the complexity peg)**. The parallelism space of the GF circuit engine has four layers; the first three are perfect, and the fourth is bounded by theorem:

| Layer | Content | Source of parallelism | Floating-point-side counterpart |
| -------------- | ----------------------------------------------- | -------------------- | ------------------------------------------------ |
| 1 Intra-gate parallelism | Single-qubit gates touch only amplitude pairs $(i,\,i+2^q)$, zero dependencies | Standard embarrassingly parallel | Yes |
| 2 Inter-field parallelism | RNS decomposes naturally by prime, zero cross-prime messages, CRT convergence only at the end | **The algebraic nature of modular arithmetic** | **Structurally absent** (rounding errors are globally coupled and cannot be split by modulus) |
| 3 Inter-circuit parallelism | VQE ensembles / parameter sweeps / Monte Carlo | Sampling independence | Yes |
| 4 Entanglement-structure parallelism | Classical simulation complexity ∝ amount of entanglement, not qubit count | Theorem-bounded | Same |

The fourth layer is **theorem-shaped, not an engineering limitation**, and it has three quantitative throughlines: ① Gottesman–Knill — Clifford circuits (low entanglement) are polynomially simulable; ② tensor networks — classical complexity $\sim\chi$ (bond dimension) $\sim$ entanglement entropy, polynomial at low entanglement, exponential at volume law; ③ **stabilizer rank** — the classical simulation complexity of Clifford+T circuits is determined by the number of T gates; the more T gates, the exponentially larger the stabilizer rank. **T count is the knob that pushes a circuit from the simulable region toward the non-simulable region** (the quantitative face of boundary 1 in §15), and the GF field reproduces both regions exactly. Boundary annotation: "$\Rightarrow$" (simulable ⟹ no acceleration) holds almost by definition; "$\Leftarrow$" (no acceleration ⟹ simulable) depends on complexity assumptions (BQP≠BPP) and remains open — and precisely because of this, the exponential explosion a simulator encounters in the high-entanglement region is **not an implementation defect but the logical signature that quantum advantage exists**: classical resources cannot cross a line defined as "one that classical resources cannot cross". ∎

**Proposition VII47 (the null norm phenomenon and the $\mathrm{GF}(p^2)$ extension-field repair)**. The vector $(1,i)$ has norm $|1|^2+|i|^2=2$ in the complex field $\mathbb C$, but in GF(65537):

$$\mathrm{norm}(1,i)=1^2+256^2=1+65536=65537\equiv 0\pmod{65537}$$

— **the norm of a nonzero vector is zero**; finite fields violate the positive-definiteness axiom of the complex Hilbert space inner product. Root cause: $i=256$ makes $i^2\equiv-1$, so $1+i^2\equiv 0$. Repair: the quadratic form $x^2+y^2$ degenerates over $\mathrm{GF}(p)$; one needs the extension field $\mathrm{GF}(p^2)$ or must switch to a split quadratic form ($x^2-y^2$ does not degenerate) — the same "extend the field when it is not large enough" discipline as VII10's on-demand extension-field phases. **This phenomenon is not a defect but a feature**: it marks the **essential dividing line** between finite-field quantum mechanics and standard quantum mechanics — this framework is a discrete simulation tool, not a replacement for standard quantum mechanics (Paper3 Theorem 2); the Born bridge (VII17), when lifting across fields, is precisely what bypasses this dividing line to read probabilities out into $\mathbb Q$. ∎ (Null norm verification: $1+256^2\equiv 0\pmod{65537}$ holds bit-exactly, Paper3 §3.2.)

### 4.2c Field inference = polynomial algebra: the five-equivalence theorem

**Theorem VII20 (field inference = polynomial algebra, five equivalences)**. The core operations of the residue field engine are **exactly equivalent (not analogous)** to polynomial algebra — all five identities machine-verified bit-exactly:

1. **Sweep = Horner evaluation**. The recursion $e(t+1)=\omega\,e(t)+u(t)$ unrolls iteratively to $e(T)=\sum_{s=0}^{T-1}\omega^{T-1-s}u(s)$, which is exactly the Horner evaluation of the polynomial $P(x)=\sum_s u(s)x^{T-1-s}$ at $x=\omega$ — the pole-resonance loop is a polynomial-evaluation loop.
2. **Field snapshot = multipoint evaluation**. With each cavity taking a different $\omega_k$, $E(\omega_k)=P(\omega_k)$ — the field snapshot $\{E(\omega_k)\}$ is the evaluation of the same polynomial at multiple points.
3. **Invertible recovery = Lagrange interpolation**. Given $\{(\omega_k, E(\omega_k))\}$, when the number of cavities ≥ the sequence length (polynomial degree + 1), Lagrange interpolation **uniquely and exactly recovers** $P$ — bit-exact invertibility with a hard condition (too few cavities leaves the system underdetermined and loses information; there is no free lunch).
4. **Membership query = root-polynomial evaluation**. For a set $S$ construct $Q(x)=\prod_{s\in S}(x-s)$; then $s\in S\iff Q(s)=0$.
5. **Common semantics = roots of the GCD**. For the root polynomials $Q_1,Q_2$ of two semantic streams: $s\in S_1\cap S_2\iff Q_1(s)=0\wedge Q_2(s)=0\iff s$ is a root of $\gcd(Q_1,Q_2)$ — the Euclidean algorithm **computes the semantic intersection exactly** over finite fields, with no approximation and no error.

**Positioning discipline (three boundaries)**: ① this is "polynomial algebra", not "physical waves" — an exact discrete algebraic structure that needs no wave-field picture to reconcile it; ② "semantics" here means **discrete symbol sets** — "common semantics = roots of the GCD" is exact detection of a symbol-level intersection operation, not full semantic understanding; ③ invertible recovery presumes the number of cavities ≥ the sequence length. ∎ (Each of the five equivalences machine-verified; implementation note: multiplying the polynomial by $(z-s)$ requires supplementing the $z\cdot P(z)$ term, otherwise the root set is wrong.)

**Structural meaning of the five equivalences**: they unify the five seemingly distinct engine operations — sweep, snapshot, recovery, query, intersection — into a single polynomial-algebraic framework, complementary to VII41 (residueon table = spectral decomposition): VII41 says what the residueon table can **represent** (diagonalizable operators), VII20 says what the engine is **computing** (polynomial evaluation/interpolation/GCD). Together, the algebraic identity of the wave-field engine is fully revealed: **polynomial algebra (VII20) on the spectral track (VII41)**.

### 4.3 Extension-field phases and non-binary orders

**Proposition VII10**. $p^2-1=2^{17}\cdot3\cdot10923$, so the cube root of unity $\omega_3\in\mathrm{GF}(p^2)$; in general, a phase of any order $N$ ($\gcd(N,p)=1$) exists exactly in the minimal extension field $\mathrm{GF}(p^k)$ ($N\mid p^k-1$) — **phase resolution is purchased by extending the field on demand**, at the cost of representation width only. ∎

### 4.4 The exchange theorem

**Theorem VII4 (exchange theorem)**. Let $\mathcal{G}_{\mathrm{GF}}$ denote the GF gate group (all of Classes A∪B∪C∪D) and $\mathcal{G}_{\mathrm{phys}}$ the group of physical unitary gates. Then: ① $\mathcal{G}_{\mathrm{phys}}\cap\mathcal{G}_{\mathrm{GF}}\supseteq$ all Dyadic phase gates and permutation gates (including the physical universal set, VII2); ② $\mathcal{G}_{\mathrm{GF}}\setminus\mathcal{G}_{\mathrm{phys}}\supseteq$ nonlinear reversible gates (VII5) and algebraic structural gates (§6) — excluded in principle by physical linearity; ③ $\mathcal{G}_{\mathrm{phys}}\setminus\mathcal{G}_{\mathrm{GF}}$ = continuous phases (a GF finite field can only supply finite-order phases, approximated on demand via extension fields, VII10). **Conclusion: quantization is not a simulation of quantum computation but its strict extension — an exchange at the intersection, containment in neither direction.** ∎

## 5 Class C: nonlinear reversible gates (an entire family impossible under the principles of quantum mechanics)

### 5.1 The full symmetric group

Physical quantum evolution must be linear (unitary); this is a constraint of nature. Classical GF gates are free of this constraint: **any permutation over $\mathrm{GF}(p)$ is a reversible gate** — $|S_{65537}|=65537!$, with **287,199 decimal digits**. This is the first family by which GF quantization strictly exceeds physical quantum: not "somewhat more than physics," but **an entire class that physics can never, in principle, produce**.

### 5.2 Executed instance: SPN cipher gates

The cubic-power SPN permutation network (7 gates, dual channels, avalanche ≥75%, wrong-key mismatch ≥87%) is an active member of this family — **using nonlinear reversible gates as ciphers**. Quantum hardware cannot build nonlinear gates, so this use is closed in principle to physical quantum while being a native capability of GF quantization.

**Theorem VII18 (Grover's exact rotation angle: two exact tracks)**. The GF realizability of the physical Grover rotation angle $\sin\theta=1/\sqrt N$ splits into two cases.

**Case 1 (the physical angle is already exact)**: when $\sqrt N\in\mathrm{GF}(65537)$, no substitute is needed — $N=9$: $\sin\theta=1/3$ is exact, and $\cos\theta=2\sqrt2/3$ enters the field digit by digit via $\sqrt2=4080$ (Appendix A); the Chebyshev closed form $\sin((2k+1)\theta)$ yields the golden anchors $A_0=1/3\to A_1=23/27\to A_2=241/243$ (the peak, $k=2$) $\to A_3=-1511/2187$ (the overshoot falling back; the sign change is the physical fact of passing through the peak) — **the closed form and the full-amplitude simulation agree independently along two routes**.

**Case 2 (the Pythagorean substitute angle)**: when the real rotation angle of a general $N$ cannot enter the field, a Grover-type deterministic amplification operator is defined by the **Pythagorean rational angle** $(\cos\theta,\sin\theta,r)=(4,3,5)$ — note that this angle corresponds to no integer $N$ ($\sin\theta=3/5\Rightarrow N=25/9$); it is a design choice of the amplifier, not an approximation of physical Grover; all iterations are exact along the Pythagorean chain:

$$\cos2\theta=\tfrac{7}{25},\quad\sin2\theta=\tfrac{24}{25}\ (7\text{-}24\text{-}25);\quad \cos4\theta=-\tfrac{527}{625},\ \sin4\theta=\tfrac{336}{625}.$$

The two cases share a **structural corollary**: the overshoot-fallback forms a "Grover clock" — the iteration count can be precomputed from the closed form, so the search depth is known a priori; each iteration's amplification is fraction arithmetic, not numerical approximation — the irrational angle of physical hardware can never be digit-exact. ∎ (The double-angle chain and the Chebyshev closed form are verified in Appendix B.13.)

**Proposition VII30 (Exact dynamics and optimal stopping of the Grover spiral)**. 2-bit Grover is a pure cycle of period 48 (predictable); **3-bit Grover is not a cycle but a spiral** — the state-vector recursion $a'=6a+14b$, $b'=-2a+6b$, with eigenvalues $\lambda=6\pm i\sqrt{28}$, $|\lambda|=8$ (amplification by 8 per step), $\arg\lambda\approx41.4°$ (rotation by 41.4° per step). Over the reals, every step of this spiral is a floating-point approximation; **in the GF field, every step is the exact value of the recursion formula** (bookkeeping note: the recursion matrix $\left(\begin{smallmatrix}6&14\\-2&6\end{smallmatrix}\right)$ is a similar representation of the $8\times$ rotation matrix in a non-orthogonal basis — its eigenvalues $8e^{\pm i2\theta}$ share the same angle as the $e^{\pm i2\theta}$ of physical unitary dynamics, and "amplification by 8 per step" is a coordinate rescaling that clears denominators, with physical amplitudes recovered after normalization; "not a cycle" also holds on the physics side: $\cos2\theta=3/4$ is rational, so by Niven's theorem $2\theta/\pi$ is irrational and the true Grover orbit never closes exactly) — the complete hit–overshoot sequence can be precomputed ($k=1$–$5$ hits ✓, $k=6$ overshoot ✗, $k=7$ transition, $k=8$ re-hit ✓), **without needing the exact value of $N$ to "guess" the iteration count** — deterministic scheduling rather than probabilistic trial and error. Practical value: the iteration counts of database search / SAT solving / cipher brute-forcing are upgraded from "probabilistic guessing" to "exact precomputation"; regarding noise resistance, the GF spiral orbit is fully deterministic, so any value deviating from the orbit = an error — a natural error-correcting code. Physical Grover's optimal stopping $\lfloor\pi/4\sqrt N\rfloor$ is an approximate formula; the GF field gives **the digit-exact boundary of the hit window**. ∎ (The 3-qubit orbit recursion $20\to176\to832\to-1280\to-3071$ is machine-verified in the §16 suite "3-qubit Grover orbit verdict: 19 assertions all green".)

### 5.3 Möbius gates and affine gates

**Theorem VII6**. The fractional linear gates $x\mapsto\dfrac{ax+b}{cx+d}$ ($ad-bc\ne0$, acting on the projective line $\mathbb{F}_p\cup\{\infty\}$) form $\mathrm{PGL}_2(\mathbb{F}_p)$, of cardinality $q(q^2-1)\approx2.81\times10^{14}$, and act **3-transitively** on the projective line (any three points can be sent to any three points by a unique gate). Uses: a testing group for compiler semantic equivalence (the cross-ratio invariant), obfuscation, and white-box. The affine gates $x\mapsto ax+b$ ($q(q-1)$ of them) are its parabolic subfamily. ∎

### 5.4 Conformal inversion gate

$1/x$: nonlinear, an involution, the fifth conformal transformation — converging with the rotor (rotation), the translator (translation), and the dilator (dilation) in Cl(4,1) (§6). The inversion gate promotes "reciprocal" to a geometric operation: near and far are interchanged, points and hyperplanes are interchanged.

**Candidate (a new C-class family)**: elliptic-curve point addition is a rational permutation over GF extension fields — the EC point-addition gate can serve as a candidate for a new family of C-class nonlinear reversible gates (listed alongside the full symmetric groups of §5.1 and Möbius/PGL₂ of §5.3). The physical analogy "group addition corresponds to entangled superposition" is not a claim of this paper.

## 6 Class D: Structural gates

### 6.1 Hopf/Yang-Baxter R gate

$R=\mathrm{diag}(q,q^{-1})$ ($q=3$, $q^{-1}=21846$) satisfies the Yang-Baxter relation (verified in the series) — a braid group gate, the algebraic foundation of braided concurrency (Paper Six §6.1, §11.5).

**Integrability criterion (VII19)**. Element-by-element verification of $R_{12}R_{13}R_{23}=R_{23}R_{13}R_{12}$ on 8×8 collision matrices: the swap gate $P$ is integrable ✓ (both sides degenerate simultaneously to the three-leg reversal permutation $w_0$); the diagonal family $\mathrm{diag}(1,2,3,5)$ is **integrable as a whole family** ✓; the **CNOT negative control** — unitary but failing YBE, detected exactly, element by element. Conclusion: **integrable collisions are a rare proper subfamily of unitary gates, and their rarity is detectable**. YBE factorization makes $n$-body collision $=O(n^2)$ — a structural speedup, independent of quantum speedup and tensor compression; the scattering matrix is natively poles plus residues, and **the residue field is scattering's native language, not its simulator** (rigorous version and literature anchors: the inverse scattering transform IST, Trogdon & Olver 2016, SIAM; the Painlevé criterion: if all movable singularities are poles, the equation may be integrable).

**Hopf demarcation**: in this section the word "Hopf" is backed by concrete structures — the Connes–Kreimer algebra (rooted trees/Feynman graph renormalization, 1998), combinatorial Hopf algebras (Schmitt/Rota), the Faà di Bruno Hopf — not by metaphorical labeling; the labeling-style usage has been refuted by an axiom-level check (the coassociativity/counit/antipode axioms are not satisfied; deleting dead code is not a multiplicative inverse). The antipode $S$ is an **anti-homomorphism** ($S(ab)=S(b)S(a)$), and $S^2=\mathrm{id}$ holds only when the algebra is commutative or cocommutative; group-like elements always have $S(g)=g^{-1}$ — when a gate group element serves as a group-like element, "antipode = inversion gate," which is the algebraic naming of the free rollback of §8.1.

### 6.2 Anyon gates (Fibonacci phases)

**Theorem VII8**. In the extension field $\mathrm{GF}(p)(\omega)$ ($\omega^2=5$), $\varphi=\tfrac12+\tfrac{\omega}{2}$ satisfies

$$\varphi^2=\varphi+1\quad\text{digit-by-digit exact}$$

($\varphi^2=(6/4,\ 2/4)=(3/2,\ 1/2)$, $\varphi+1=(3/2,\ 1/2)$, component-wise congruence in GF). The **complete gate family** of Fibonacci anyons lands here exactly: non-Abelian fusion $\tau\times\tau=1\oplus\tau$; **R-matrix eigenvalues** — vacuum channel $\zeta_{10}^6$, $\tau$ channel $\zeta_{10}^3$ — note that $\zeta_{10}$ lies **neither** in $\mathrm{GF}(65537)$ nor in $\mathrm{GF}(65537^2)$ ($5\nmid p-1$ and $5\nmid p^2-1$, VII16; a 2-group contains no element of order 10); the R phases are realized exactly in the Mersenne field $\mathrm{GF}(131071)$ ($5\mid 131070$) or the fourth-order extension $\mathrm{GF}(65537^4)$; the **F matrix** $\begin{psmallmatrix}\varphi^{-1}&\sqrt{\varphi^{-1}}\\\sqrt{\varphi^{-1}}&-\varphi^{-1}\end{psmallmatrix}$; the Jones polynomial = the integer trace of a braid word ($\sigma\sigma^{-1}$ uses $\pm\zeta_{10}^3$; braid deformation does not change the trace). Physical Fibonacci anyons require approximate deformations and ultra-low temperatures; the GF field family is zero-error and zero-temperature (the fusion algebra in $\mathrm{GF}(65537^2)$, the F matrix's $\sqrt{\varphi^{-1}}$ components extending at most one more order, the R phases in $\mathrm{GF}(131071)$ or $\mathrm{GF}(65537^4)$) — **the gate set of topological quantum computing as a whole enters the range of exact simulation** (for the complete division of labor among fields, see VII16). ∎ (Appendix B.8.)

**Complexity anchors**: the Solovay–Kitaev compilation constant $c\approx3.97$, error $\varepsilon\approx L^{-1/c}$; number-theoretic SK (Harrow–Recht–Chuang 2002) reaches the asymptotically optimal $c=1$ ($O(\log(1/\varepsilon))$) via number-theoretic constructions; the Kauffman bracket base $c\approx3$, with the Freedman–Larsen–Wang exponential separation — the conversion from braid length $L$ to adjudication precision has literature anchors, from which the adjudication depth of row 33 of the master table (Jones/Kauffman) can be budgeted.

### 6.3 The Cl(4,1) conformal gate family

Four families: the rotor $R=\exp(-B/2)$ ($h'=Rh\tilde R$; rotation + translation + dilation in one, **eliminating nonlinear activation lookup tables in the GF field**), the translator, the dilator, the inverter (§5.4). The dual-channel suite of 12+10 gates has closed the three-rung ladder (scalars → $M_2$ → Cl(4,1)). The following five groups of theorems provide the algebraic foundation for this gate family (digit-by-digit machine verification over GF(65537); the CGA suite is all green):

**Theorem VII21 (Matrix representation $Cl(4,1)\cong M(4,\mathbb C)$)**. The Weyl–Brauer construction gives an explicit algebra homomorphism: the five $\gamma$ matrices are generated by Kronecker products of Pauli matrices — $\gamma_1=\sigma_1\otimes I_2$, $\gamma_2=\sigma_2\otimes I_2$, $\gamma_3=\sigma_3\otimes\sigma_1$, $\gamma_4=\sigma_3\otimes\sigma_2$, $\gamma_5=i\,\sigma_3\otimes\sigma_3$ ($i=256$), satisfying the Clifford relations $\gamma_j^2=\pm I$ and $\{\gamma_i,\gamma_j\}=0$. All 32 basis blades map to 4×4 matrices $M(b)=\prod_{i:b_i=1}\gamma_{i+1}$, and any element $a$ maps to $M(a)=\sum_i a_i M_i$. **The homomorphism property $M(a\cdot b)=M(a)M(b)$ is machine-verified on random elements** — not merely at the basis level ($M_A M_B=\pm M_C$, consistent with the frozen table), but a complete algebra isomorphism. The pseudoscalar image $\gamma_1\gamma_2\gamma_3\gamma_4\gamma_5=-i\,I_4$: the central element maps to a scalar matrix, and the center of Cl(4,1), $\{1,\ I_5\}$ (the pseudoscalar), aligns exactly with the center of the matrix algebra. The $i$ factor of $\gamma_5$ is precisely the matrix form of the hyperplane direction $e_5^2=-1$ — **the Fermat prime's $i=256$ supplies three sites in one stroke: the Born bridge (§4.2b), chirality (Paper Six VI4), and the matrix representation (this theorem)**. ∎

**Theorem VII22 (The CGA tangent-sphere master formula)**. For a sphere $S=P(c)-\tfrac12r^2e_\infty$ (center $c$, radius $r$), the CGA inner product yields a **single master formula unifying all tangency conditions**:

$$\langle S_1,S_2\rangle=\tfrac12\!\left(r_1^2+r_2^2-d^2\right),\qquad d=|c_1-c_2|.$$

The derivation uses only three CGA identities: $\langle P(c_1),P(c_2)\rangle=-\tfrac12|c_1-c_2|^2$ (dot product = squared distance), $\langle P(c),e_\infty\rangle=-1$, and $\langle e_\infty,e_\infty\rangle=0$. Three-branch readout: **external tangency** ($d=r_1+r_2$) ⟹ $\langle S_1,S_2\rangle=-r_1r_2$; **internal tangency** ($d=|r_1-r_2|$) ⟹ $+r_1r_2$; **orthogonality** ($d^2=r_1^2+r_2^2$) ⟹ $0$. A point = a sphere of zero radius: the power formula $\langle P(x),S\rangle=\tfrac12(r^2-|x-c|^2)$ is a special case of the master formula. Closed forms for tangent-sphere construction: $r_3=\tfrac12(d-r_1-r_2)$ and $c_3=c_1+\tfrac12(d+r_1-r_2)\,\hat e$ — given two disjoint spheres, the common tangent sphere is written down directly (the smallest subproblem of the Apollonius problem). In GF(65537), tangency is purely algebraic: no square roots, no inequalities; $\langle S_1,S_2\rangle=\pm r_1r_2$ holds for all field elements. ∎

**Proposition VII23 (Direct/dual double representation of circles and lines)**. The circle $C=P_1\wedge P_2\wedge P_3$ (grade-3) and the dual circle $C^*=S_1\wedge S_2$ (grade-2) are interchanged by the Hodge star, $C=\star C^*$; likewise for the line $L=P_1\wedge P_2\wedge e_\infty$ and the dual line $L^*=\pi_1\wedge\pi_2$. Incidence determination is unified as the wedge-product zero test $P\wedge C=0$ — four CGA points are concyclic ⟺ five-dimensional linear dependence; in the circle equation, the $e_\infty$ coefficient becomes a linear combination of the spatial coordinates and the $e_0$ coefficient, and the 4×4 decision determinant is identically zero. The dual representation gives circles from two spheres and lines from two planes: **the same geometric object has exactly equivalent encodings in the two slots grade-2/grade-3**, and which slot to take is set by the computational scenario (intersection uses the dual wedge product; containment uses the direct wedge product). ∎

**Proposition VII24 (CGA closed forms for the triangle center-line family)**. The circumcircle $C=P_1\wedge P_2\wedge P_3$; the circumcenter $O$ is equidistant, $\langle O,P_1\rangle=\langle O,P_2\rangle=\langle O,P_3\rangle$ (the CGA inner product = $-\tfrac12$ squared distance, so equal distances mean equal inner products); the centroid $G=(A+B+C)/3$ lies on the median ($(G-A)\times(M-A)=0$, $M=(B+C)/2$); the orthocenter $H=A+B+C-2O$ falls on all three altitudes ($AH\cdot BC=0$ follows directly from the circumcenter's equal distances $|OB|=|OC|\Rightarrow|C|^2-|B|^2=2O\cdot(C-B)$); the **Euler line** — $O,G,H$ are collinear with $OG:GH=1:2$, which holds automatically from $G=(H+2O)/3$ and needs no independent proof. ∎

**Proposition VII25 (Idempotent spectrum and projection gates)**. The Euclidean vector yields the idempotent $p=(1+e_1)/2$: $p^2=p$ (since $e_1^2=1$); the complement $q=(1-e_1)/2$ satisfies $p+q=1$ and $p\cdot q=0$ — the instantiation of the projection gates $P_\pm$ of §6.4. The hyperbolic idempotent $f=(1+e_+e_-)/2$: $(e_+e_-)^2=-e_+^2e_-^2=+1$, $f^2=f$, orthogonal to its complement $g$. **Commuting idempotents are closed under products**: $e_1$ commutes with $e_+e_-$ (their opposite signs on $e_+,e_-$ cancel), hence $(pf)^2=p^2f^2=pf$ — idempotents compose multiplicatively within the Spin subgroup. Nilpotent basis: $e_\infty^2=e_0^2=0$ while $\langle e_\infty,e_0\rangle=-1$ and $\{e_\infty,e_0\}=-2$ (a pure scalar) — the algebraic root system of null-cone geometry. ∎

**Spectral corollary**: together, VII21–VII25 pin all five phase lines of the Cl(4,1) gate family — the **matrix aspect (VII21), the metric aspect (VII22 tangency/distance), the representation aspect (VII23 dual slots), the center-line aspect (VII24), and the projection aspect (VII25)** — into GF(65537); the conformal gate family is no longer merely "computable" — every step is backed by algebraic identities that machines can re-verify. The Cl(4,1) row of class D in the gate catalog is upgraded from "family description" to "theorem group."

**Proposition VII42 (The bivector Lie algebra $\mathfrak{so}(4,1)$)**. The grade-2 bivector space of Cl(4,1) (10-dimensional) forms a Lie algebra $\mathfrak{so}(4,1)$ under the commutator $[B_1,B_2]=B_1\cdot B_2-B_2\cdot B_1$ — **6 gate machine verification**: (B1) bivector closure: $[B_1,B_2]$ is a pure bivector (100 random trials); (B2) the Jacobi identity holds; (B3) $\dim\mathfrak{so}(4,1)=10$; (B4) rotor conjugation preserves the Lie structure: $[RB_1\tilde R, RB_2\tilde R]=R[B_1,B_2]\tilde R$ (50 random trials); (B5) bivectors act on vectors: $[B,v]$ is a pure vector; (B6) infinitesimal rotation: $[B,v]=2(B\cdot v)_1$. **Compiler significance**: an optimization pass (a rotor) not only preserves grade (the outer automorphism) but also preserves the Lie algebra structure — an optimization pass is an automorphism of $\mathfrak{so}(4,1)$, and compiler optimization runs at zero loss under the protection of group-theoretic identities. ∎ (cl41_bivector_lie 6/6 all green.)

**Proposition VII43 (Cartan decomposition $\mathfrak{so}(4,1)=\mathfrak{so}(4)\oplus\mathfrak{p}$)**. The Lie algebra of the spacetime symmetry subgroup admits a Cartan decomposition: $\mathfrak{so}(4)$ (spatial rotations, 6-dimensional) + $\mathfrak{p}$ (lifts/boosts, 4-dimensional) — **6 gate machine verification**: (K1) $[\mathfrak{so}(4),\mathfrak{so}(4)]\subseteq\mathfrak{so}(4)$ (subalgebra); (K2) $[\mathfrak{so}(4),\mathfrak{p}]\subseteq\mathfrak{p}$ (rotations act on lifts); (K3) $[\mathfrak{p},\mathfrak{p}]\subseteq\mathfrak{so}(4)$ (the commutator of two lifts returns to rotations); (K4) $\dim\mathfrak{so}(4)=6$; (K5) $\dim\mathfrak{p}=4$; (K6) the Cartan involution $\theta$ is a Lie algebra automorphism: $\theta([B_1,B_2])=[\theta(B_1),\theta(B_2)]$. Read together with the VII26 trinity collapse: the 6 dimensions of $\mathfrak{so}(4)$ = 3-dimensional spatial rotations $\otimes$ 2-dimensional self-duality (corresponding to 3 generations of fermions), and the 4 dimensions of $\mathfrak{p}$ = spacetime lifts (corresponding to 2 classes of bosons) — the dimension count $6+4$ of the Cartan decomposition is isomorphic, in group representation theory, to the $3+2$ of Standard Model particle classification. ∎ (cl41_cartan 6/6 all green; together with cl41_bivector_lie and cl41_expm it forms the Lie algebra → exponential map → Cartan decomposition trilogy.)

### 6.4 Projection and damping gates (legitimate irreversibility)

The projection gates $P_\pm=\tfrac12(1\pm\hat A)$ (grade involution chiral projections; idempotent and orthogonal) and the damping gates $D_\gamma=\gamma\cdot\mathrm{id}$ ($\gamma<1$) are **irreversible yet legitimate** — classical machines allow dissipative operators, which correspond exactly to the dissipation terms and the law of forgetting in the unified field equations (Paper Six §12). Quantum hardware cannot build them (non-unitary); the classical field cannot do without them (without damping there is no forgetting and no stabilization). The mirror-image supplement to class C: **linear irreversibility** is also an exclusively classical capability.

### 6.5 Extended gate families: four new gate families beyond the quantum gate catalog

**Proposition VII44 (Class E topological gate: the Jones polynomial adjudicator)**. A braid word $\sigma\in B_n$, via the R-matrix representation (VII19 Yang-Baxter), maps to a matrix $R(\sigma)$ whose trace gives the exact value of the **Jones polynomial** $V_L(t)$ at $t=e^{2\pi i/k}$ — invertible computation of a knot invariant. Evaluation comes in two tiers, each assigned to its own field: (1) evaluation at arbitrary points of the polynomial — exact integer evaluation in GF(65537) at $t=16$ (a primitive 8th root, the in-field image of $e^{i\pi/4}$); (2) evaluation at Fibonacci anchors — standard Jones/Fibonacci TQFT takes the 5th root $t=\zeta_5$: $\zeta_5\in\mathrm{GF}(131071)$ ($5\mid 131070$) while $\zeta_8\notin\mathrm{GF}(131071)$ ($131070=2\cdot 3\cdot 5\cdot 17\cdot 257$, whose power-of-2 part is only $2^1$) — the literature anchor values for the trefoil/cinquefoil are cross-checked digit by digit (the §16 suite "Jones adjudication @GF(131071)", 5 gates PASS). **This is the core instance of "adjudicator supremacy"**: quantum hardware can only sample-estimate knot invariants, while the GF field delivers **exact adjudication** — not faster than quantum, but an exactness quantum cannot give. Read together with the three privilege gates of VII32: the cloning gate does counterfactual verification, the audit gate does full-amplitude readout, and the Jones gate does topological adjudication — three venues of adjudication authority, each performing its own duty. ∎ (The three libraries — braid groups, Hopf algebras, and Fibonacci topological computation — are in service; the Jones adjudication suite is in §16.)

**Proposition VII45 (Class I distributed gate: incremental transmission)**. The distributed evolution of the residue field $\psi(z)=\sum_k r_k/(z-z_k)$ requires transmitting only the **pole deltas** $(\Delta z_k, \Delta r_k)$ rather than the full field — transmitting compressed deltas plus verifiable fingerprints = wavefront propagation of the residue field. The synchronization gate transmits three kinds of information between nodes: (1) rule changes (rotor updates $R\to R'$), (2) pole collision events (changes in $z_k,r_k$), and (3) G5 fingerprint verification. Bandwidth $=O(K)$ ($K$ = the number of changed poles) rather than $O(\text{data volume})$ — the gate form of the same principle as "incremental transmission of the residue field" in §9.2. Uses: distributed AI (the model is not transmitted; only cognitive rule changes are), federated learning (gradients = residue deltas), and blockchain consensus (the G5 fingerprint = state-consistency verification). **Boundary**: pole matching must tolerate quantization jitter (an exact-match spectrum is too brittle; $\epsilon$-neighborhood matching is required). ∎ (The incremental transmission of §9.2 is a special case; the bandwidth analysis is given by $|\Delta\psi|\propto|\Delta z_k|+|\Delta r_k|$.)

**Proposition VII49 (Class F chaos gate: the residue field representation of $e^{iHt}$)**. The evolution operator $U=e^{iHt}$ of a quantum chaotic system ($H$ a random matrix/Hamiltonian) is represented in the residue field as **pole dynamics**: the eigenvalues of $H$ = pole positions $z_k$, eigenvector projections = residues $r_k$, and $e^{iHt}$ = each pole rotating independently, $r_k\to r_k\cdot e^{iz_k t}$. In the GF field this rotation is an **exact discrete orbit** ($e^{iz_k t}\to g^{z_k t\bmod(p-1)}$, with $g=3$ a primitive root) — **exact chaos**: GF orbits have zero rounding error, a third species that neither physical hardware nor floating-point simulators can provide. Together with the VII30 Grover spiral it belongs to the "exact GF-orbit prediction" family: chaos is not unpredictability but **excessively long orbits** — the GF field can precompute any number of steps digit by digit. **Boundary**: eigendecomposition of a large matrix $H$ costs $O(n^3)$ in the GF field (the same as classically), and chaos's "sensitive dependence on initial conditions" manifests in the GF field as "orbit period $|p-1|$"
. ∎ (Exact chaos is verified by the chaos adjudication suite; eigendecomposition = VII41 spectral decomposition.)

**Proposition VII50 (Class G quantum walk gate: coin + shift = residue field + graph structure)**. The coin operator $C$ (superposition) and shift operator $S$ (hopping on the graph) of the quantum walk are represented in the residue field as: **coin = pole superposition** (after $C$ acts, a single pole becomes a superposition of multiple poles) and **shift = pole position rewrite** ($S$ sends $z_k\to z_{\text{neighbor}(k)}$). The walk's propagator $U^t=(S\cdot C)^t$ is an **exact discrete orbit** in the GF field — the algebraic form of search algorithms (Grover = a quantum walk on the complete graph) and graph algorithms (reachability = the walk hitting the target pole). It connects to the VII30 Grover spiral: Grover search is the special case of a quantum walk on the complete graph, and VII50 generalizes it to arbitrary graph structures. **Advantage**: the residue field encodes graphs natively (poles = nodes, residues = edge weights), and the walk = pole dynamics, with no extra data structures needed. ∎ (Grover = complete-graph walk is a special case of VII30; the graph encoding is given by the pole–node mapping.)

## 7 Gate catalog master table

| # | Gate | GF definition | Class | Order/cardinality | Physically obtainable | Use | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | $I/X/Z/Y$ | Pauli family | A | 4 | ✓ | basis flip / phase flip | [verified] |
| 2 | $H$ | $2040[1,1;1,-1]$ | A | 2 | ✓ | superposition generation | [verified] |
| 3 | $S$ | $\mathrm{diag}(1,256)$ | A | 4 | ✓ | phase gate | [verified] |
| 4 | $T$ | $\mathrm{diag}(1,16)$ | A | 8 | ✓ | universal set member | [verified] |
| 5 | $R(k\pi/2^m)$ | $\mathrm{diag}(1,\,3^{k\cdot2^{15-m}})$ | A | $2^{m+1}$, $m\le15$ | ✓ (finite m) | phase ladder | [verified] |
| 6 | CNOT/CZ/SWAP | 4×4 permutation | A | 2 | ✓ | entanglement generation | [verified] |
| 7 | Toffoli/Fredkin | 8×8 permutation | A | 2 | ✓ (hard) | reversible classical computation | [constructed] |
| 8 | $\mathrm{QFT}_n$ | ≡ NTT$_n$ | A | $n$ | ✓ | convolution/spectrum | [verified] |
| 9 | arbitrary $\mathrm{GL}_2$ gate | all invertible 2×2 | B | $\approx1.8\times10^{19}$ | ✗ | gate residual adapter | [verified] |
| 10 | Frobenius/conjugation gate | $\sigma(a+b\omega)=a-b\omega$ | B | 2 | ✗ | mirror/chirality | [constructed] |
| 11 | extension-field phase gate $\omega_3$ | $3\mid p^2-1$ | B | 3 | ✗ | non-binary phase | [constructed] |
| 12 | Paley-Hadamard family | QR sign matrix | B | $2(q+1)$ type | ✗ | large Hadamard | [constructed] |
| 13 | full symmetric group $S_p$ | arbitrary permutation | **C** | $\approx10^{287199}$ | **in principle ✗** | ciphers / reversible classical computation | SPN [verified] |
| 14 | Möbius gate | $\mathrm{PGL}_2$ | C | $\approx2.8\times10^{14}$ | **in principle ✗** | equivalence testing / obfuscation | [constructed] |
| 15 | affine gate | $x\mapsto ax+b$ | C | $q(q-1)$ | **in principle ✗** | linear perturbation | [constructed] |
| 16 | conformal inversion gate | $1/x$ | C/D | 2 | **in principle ✗** | near–far interchange | [constructed] |
| 17 | power gate | $x\mapsto x^k$ | C | invertible when $\gcd(k,2^{16})=1$ | **in principle ✗** | exponential perturbation | [constructed] |
| 18 | Yang-Baxter R gate | $\mathrm{diag}(q,q^{-1})$ | D | — | ✓ (anyon hardware) | braid | [verified] |
| 19 | anyon φ gate | $\varphi^2=\varphi+1$ | D | finite (divides $p^2-1$) | ✓ (topological hardware) | topological simulation | [verified] |
| 20 | Cl(4,1) rotor family | $h'=Rh\tilde R$ | D | continuous→GF | partial | conformal dynamics | [verified] |
| 21 | projection gate $P_\pm$ | $(1\pm\hat A)/2$ | D | idempotent | ✗ (non-unitary) | chiral routing | [verified] |
| 22 | damping gate | $\gamma\cdot\mathrm{id}$ | D | — | ✗ (non-unitary) | forgetting/stabilization | [constructed] |
| 23 | Born readout | $\arg\max_k\vert r_k\vert^2$ | readout | — | measurement correspondence | decision | [verified] |
| 24 | phase estimation | inverse QFT + Born readout | A | — | ✓ | exact readout of T/S/Z phase fractions $1/8,1/4,1/2$ | [verified] |
| 25 | teleportation | Bell chain + Pauli corrections | A | fidelity $F=1$ | ✓ (degenerate) | control baseline | [verified] |
| 26 | dense coding | 4 Pauli ↔ 2 bit | A | capacity 2 | ✓ | — | [verified] |
| 27 | stabilizer tableau | polynomial path | A | GHZ-64/128 | ✓ | 64 bits at millisecond scale | [verified] |
| 28 | cloning gate | homomorphic copy | privilege | — | **in principle ✗** | counterfactual verification | [constructed] |
| 29 | time-reversal gate | exact $U^\dagger$ | privilege | — | ✗ (noise) | circuit equivalence certificate | [constructed] |
| 30 | audit gate | full amplitude $O(1)$ | privilege | — | **in principle ✗** | mid-circuit assertions / rare events | [constructed] |
| 31 | YBE integrable family | collision matrix | C/D | proper subfamily | partial | structural speedup $O(n^2)$ | [verified] |
| 32 | Yang-Baxter watermark | $w\in\mathbb{Z}/4$ LSB | D | order 4 | — | authentication | [verified] |
| 33 | Jones/Kauffman | braid-word trace in the Mersenne field | D | — | — | exact adjudication of BQP-complete tasks | GF(131071) adjudication, 5 gates all green (single-knot anchor cross-check) |
| 34 | Cauchy attention | $\frac{1}{2\pi i}\oint\psi p\,dz=\sum_k r_k p(z_k)$ | readout | $k$ poles | — | resonant retrieval / the residue-field native form of attention | [constructed] |

How to read this: class C (nonlinear reversible) and the damping/projection gates of class D are the two great families that **physical quantum lacks in principle while GF quantization owns natively** — this is the first layer of meaning of "quantization can be used this way too."

### 7.1 Gates = versors: the Cartan–Dieudonné unification

**Theorem VII33 (versor unification)**. The Cartan–Dieudonné theorem (valid over fields of characteristic $\ne2$; GF(65537) qualifies): every orthogonal transformation is a product of at most $n$ hyperplane reflections. Hence all linear gates of this paper are unified as **versor sandwiching** $M'=VMV^{-1}$ ($V=v_1v_2\cdots v_k$, a product of vectors) — the rotor is merely the special case of an even versor ($\mathrm{Spin}\subset\mathrm{Pin}$). The three mechanical classes are thereby upgraded from engineering categorization to a **complete algebraic classification**:

| Mechanical class | Gate examples | versor identity | Geometry |
| --- | --- | --- | --- |
| permutation class | X / CNOT / Toffoli | basis blade permutation | coordinate rearrangement (G1 tier) |
| phase class | S / T | even versor (rotor) | orientation-preserving rotation |
| reflection class | H | **odd versor (grade-1)** | $\det H=-1$: **H is a reflection, not a rotation** |

**The G5 guardrail automatically covers the full Pin group**: the pseudoscalar $I_5$ is a central element in odd-dimensional Cl(4,1), and for every invertible $V$ (including odd versors/reflections), $VI_5V^{-1}=I_5$ — fingerprint invariance extends for free from the rotor layer to the Pin layer, and reflections cannot move the G5 slot either; the write-permission matrix correspondingly adds an eligibility row for the reflection class.

**Fermat prime accounting (the credit ledger of exactness)**: The permutation class consists of 0/1 matrices, **exact over any field**, taking no advantage from GF(65537); the true beneficiaries of the Fermat dividend are the phase class ($\zeta_8=4096$, $i=256$) and the reflection class ($\sqrt2=4080$) — the load-bearing wall is $p\equiv1\ (\mathrm{mod}\ 8)$ (2 is a quadratic residue and $p\equiv1\ (\mathrm{mod}\ 4)$). Switching fields (e.g., to the Fermat prime $F_3=257$, likewise $\equiv 1\ (\mathrm{mod}\ 8)$) requires re-verifying only the phase/reflection rows — note that $F_4=2^{32}+1$ is composite ($641\times 6700417$) and cannot serve as a field.

**Boundary delineation**: ① the finite-field gate group is a **finite matrix group** — continuous universality and Solovay–Kitaev approximation theory do not exist over finite fields, and this paper does not use the phrase "universal quantum gate set"; $T$ within the field is merely the order-8 element $16$, not a "non-Clifford resource"; ② the correct boundary statement: the gate layer as a whole is classically simulable, and the engine's computational surplus lives outside the homomorphic image of the gates (collision coupling and ≋ interference), independent of whether the gate set contains T — inside the homomorphic image is a surplus-free zone, and the finite-field dynamics of GF guarantee that no numerical noise on the dividing line masquerades as surplus (the hardest version of "zero hallucination": the only source of hallucination is structural error, not numerical drift). ∎ (versor tests: versor decomposition gate 6/6 — norm $V\cdot\mathrm{rev}(V)=|V|^2$, right inverse $V^{-1}=\mathrm{rev}(V)/|V|^2$, odd versors preserve the norm; Spin/Pin group axioms gate 7/7 — rotor closure, $R\tilde R=1$, inner product preservation, **Pin reflection $v\cdot w\cdot v^{-1}=-w$ verified by measurement**.)

**The C14′ verdict experiment: 14/14 bit-level closed loop**. The three-layer unification "classical logic gate ↔ Clifford versor ↔ wave-field operator" is verified at the bit level over GF(65537) — a seven-strand evidence chain interlocking with one another, such that a break in any one strand would be exposed by the others:

| Dimension | Evidence | What it proves |
| --------- | -------- | -------------- |
| versor aspect | NOT/CNOT sandwich products, self-inverse $V^2=1$, routing + sign bookkeeping | gate = versor (geometric) |
| permutation aspect | Toffoli 8-state permutation ($\lvert 110\rangle\leftrightarrow\lvert 111\rangle$), half-adder truth table | gate = permutation of basis vectors (combinatorial) |
| wave-field direction | $MV(5e_1+7e_3)$ through the pipeline $=5\cdot(-e_2)+7\cdot(-e_+)$, bit-for-bit equal | wave-field computation = linear extension of gate action |
| orthogonality bridge | $T\cdot T^\top=I$ | gate = orthogonal transformation → versor qualification (operational form of the CD theorem) |
| GF constants | $\sqrt2=4080$, $i=\pm256$, $\zeta_8=4096$ | exact in-field arithmetic (intrinsic to number theory, not tuned) |
| falsification | incrementing a coefficient by one always breaks it (20/20); swapped wrong pairs caught on the spot | the criterion is tight, with no room for fudged results |
| determinism | forward and reverse computations agree | reproducible |

Experimental carriers: NOT gate $=(e_1+e_2)\cdot\mathrm{is}_2$, CNOT gate $=(e_3+e_+)\cdot\mathrm{is}_2$ ($\mathrm{is}_2$ being the normalized versor factor); the sandwich action exactly reproduces the basis-vector routing ($e_1\leftrightarrow e_2$, $e_3\leftrightarrow e_+$).

**Theorem VII39 (sign–phase bookkeeping)**. Classical logic gates in versor representation carry phase bookkeeping for free: $X$ is a line reflection ($\det=-1$), flipping the signs of the orthogonal-complement basis vectors, and the minus sign penetrates the composite operator $W=V_cV_x$ all the way to $e_+$ — **routing is gate logic, signs are phase**. This is the GA form of the phase bit in Gottesman–Knill tableau simulation: classical logic is the **magnitude projection** of wave-field computation; phase information is discarded at the classical layer yet precisely preserved and propagated bit for bit in the full wave-field algebra — the phase gap between classical and quantum is filled by sign bookkeeping (a mechanism-level unification). ∎

**Theorem VII40 (linear extension)**. Wave-field computation = the linear extension of gate computation: the output of a superposition state passing through the versor pipeline equals, bit for bit, the linear combination of the per-basis-vector outputs weighted by the coefficients (measured $MV(5e_1+7e_3)\to 5(-e_2)+7(-e_+)$) — classical computation is a special case of wave-field computation on the standard basis, and "ordinary computation corresponds to wave-field computation" is pinned down from a philosophical insight as a linear-algebra fact. Engineering corollary: the linear-extension baseline turns "surplus attribution" from a definition into a **subtraction measurement** — any nonlinearity measured in an end-to-end run is, by definition, surplus from the collision layer (outside the homomorphic image); the control group of the interference experiments is thereby constructed. ∎

**Milestone**: the half-adder $(a,b,0)\to(a,\,a\oplus b,\,a\wedge b)$ correct in all four rows, with the carry-before-sum temporal discipline achieved in a single pass — the first fully compiled and correctly executed classical program in the engine's history; order of operations = order of the versor product = wave-field evolution timeline. The Landauer cost account of AND is redeemed in step (§8.1).

**Academic positioning (novelty boundary)**. The gate correspondence itself is textbook material — Bennett (1973) proved that making logic reversible pays no thermodynamic price; Toffoli (1980) gave the universal reversible gate; "reversible gates = permutation matrices ⊂ unitary matrices" is chapter one of quantum computing textbooks; finite-field quantum mechanics also has precedents: Schumacher–Westmoreland's Modal QM (2012), James–Ortiz–Sabry (2011), Chang–Minic–Takeuchi (2013). The reason Modal QM stalled at the toy stage — finite fields lack order structure and admit only possibility, not probability — is exactly what this paper's Born bridge (VII17) and three-leg isomorphism (VII37) solve: probability semantics is carried wholesale by the lifting bridge, and no order is needed within the field. Hence the novelty claim of this paper **narrows** to: the first use of this correspondence as a **compile-time invariant** of the wave-field dataflow engine, and the first **bit-level closed loop** on Cl(4,1)×GF(65537) — the parts are old (Bennett/Toffoli/Gottesman/Schumacher), the machine is new. There is also a recent Coq-formalized No-Go result: reversible computation cannot derive quantum structure, and what is missing is precisely the superposition axiom — this paper stands on the correct side of that axiom with field superposition $\oplus$ as ontology: the gate correspondence (the reversible part) alone can never reach the wave field, and the nonlinear coupling + interference layer is irreducible. External corroboration: RWKV-7 uses the generalized Delta rule to lift the state-tracking expressiveness of linear RNNs from $TC^0$ to $NC^1$-complete — the expressiveness ceiling of linear mechanisms is once again broken by data-dependent nonlinear coupling, in the same direction as this paper's judgment. Unified-representation verdict table: the two columns, quantum gates (§3–§6) and classical logic gates (C14′), both closed at the bit level; for the periodic-table line, the two confirmable points (the periodic table = a pure integer function of Z [the VII13 chemical instance]; shell closure = structural isomorphism with the poles of the residue field [analogy level]) — see §14.2 — **the "shell ↔ grade isomorphism" is insufficiently evidenced and is not claimed in this paper**. **Clifford positioning**: all verification of C14′ can be reproduced purely with the residueon table (the spectral-decomposition path, Proposition VII41, §1.4) — Clifford is not a "can it be done" prerequisite, but the skeleton that upgrades the correspondence from an engineering mapping to an algebraically intrinsic structure; the truly missing ingredients were the ontological perspective of "operators as wave fields" and the engineering discipline of the GF(p) bit-level closed loop — the tools (the residueon table, Clifford) have long existed.

---

# Part Two: Gate Group Semantics

## 8 The Fourfold Semantics of Gates as Cognitive Operators

### 8.1 The Reversible Alphabet: Free Rollback and Counterfactual Reasoning

Update rollback on the group = multiplicative inverse (free); algebraically, rollback of additive updates = log bookkeeping (the delta is already stored). Two higher-order capabilities follow: ① **traceless trial-and-error** — injection/mutation/rule writes are all revocable (100% bit-level restoration upon injection-line revocation is empirically verified); ② **counterfactual reasoning** — open a branch off the pole table, run alternate reasoning, then diff; "what if" as a first-class operation, at the cost of one snapshot. Counterfactual thinking is a core function of human cognition, and this architecture is the architecture that makes it free. **Bit-level redemption of the reversibility cost account (C14′)**: the Landauer cost of bringing the irreversible AND into the reversible wave-field algebra = ancilla bits + garbage lines — the Toffoli gate, with the target line initialized to 0, carries $a\wedge b$; the four input groups are exact row by row, the ancilla carries the erased entropy, and the whole remains reversible; the half-adder $(a,b,0)\to(a,\,a\oplus b,\,a\wedge b)$ is correct in all four rows — the temporal logic of classical circuits maps losslessly onto the product order of wave-field operators.

### 8.2 Group Closure with Certificates

Gate composition stays within the group ($X^2=I$ exactly); updates are bounded, auditable, and never diverge — the prerequisite for the gate-residual adapter (tens of thousands of agents sharing a gate basis table + individual $\Delta R$) to hold. The reservoir's greatest pain point (the spectral-radius bet) is eliminated by group theory.

**Duality of verification instruments**: the semantic fingerprint = cross-time mutual agreement within a single implementation; the quadruple independent-implementation cross-check (Rust main compiler / independent Rust rewrite / ψ bootstrap port / ψ direct-to-WASM) = same-moment cross-implementation mutual agreement, with **bit-level identity as the sole qualification line; any divergence is a defect, and the byte position of the divergence is the position of the defect**. Duality law: the DFL discipline holds $\Leftrightarrow$ any introduced nondeterminism must immediately reveal itself in the mutual agreement check — discipline and verification are dual to each other; testing is not the first instrument for detecting discipline violations, mutual agreement checking is. Verdict record: ψ→GPU all 48 cores, three paths, gen64 all BIT-IDENTICAL; G1 50280/50280 against the gold standard; NV/Intel × Vulkan/GL adapter matrix bit-level identical.

### 8.3 The Phase Data Type

$i=256$ provides the phase arithmetic, and phase is the **semantic carrier**: $\pm\pi/2$ encodes causal polarity (opposite-polarity causal chains converge → destructive interference necessarily occurs → PCD spikes: contradiction detection is the geometry of the field, requiring no learning); chirality = Hodge complex structure ($\pm i$ eigenvalues, Paper Six Theorem VI4); harmonic phase locking $\omega_A/\omega_B=p/q$ = cross-domain analogy.

### 8.4 Entangled Associative Storage

Field-multiplication entanglement (the product field's residue $ab/(p_1-p_2)$ is indecomposable) = a storage mechanism for non-decomposable associations; entanglement lifetime ∝ pole order (Paper Six Theorem VI8) — association is memory.

**Proposition VII48 (quantum as database query)**. The three layers of quantum-stack operations unify as residue-pool operations — **state = poles in residue pool** (ket $|j\rangle$ = a dictionary with residue $r=1$ at pole $z=j$), **gate = pool transform** (unitary gate = pole rewriting: X gate = pole swap, H gate = pole superposition, CNOT = dual-pole associative write), **measurement = Born bridge aggregation** (exact rationals $\to 2^{16}$ counts: every measurement outcome lands on a $2^{16}$ lattice point, and the counts sum to $65536$). Five-gate machine verification: X gate Born count $=65536$ on $|1\rangle$; H gate exact superposition $\sqrt2$, after algebraization Born counts $32768/32768$ (exact half split); Bell state $P(\text{same})=1$/$P(\text{diff})=0$; all Born bridge counts landing on $2^{16}$ lattice points; deterministic fingerprints stable across rebuilds. **"Quantum as query" is not an analogy but an engineering implementation**: the same residue-pool interface (the three primitives write/read/evolve) simultaneously carries quantum state storage, gate transforms, and Born readout — quantum circuits are expressed natively in a data query language, with no quantum hardware abstraction layer needed. ∎ (Verdict suite: all five gates green; the unification probe is anchored on Paper Three's T gate, with Paper Four's Born rational reconstruction as baseline.)

### 8.5 Clifford Deflection = Multimodal Unification

**Proposition VII56 (multimodal deflection)**. Different modalities (text/code/image/audio) should not be different models — they should be **different grade components of the same Clifford algebra multivector**. The 32-dimensional blade space of Cl(4,1) naturally provides a graded structure for modality encoding:

| Grade | Component | Modality encoding | Cognitive semantics |
| ----- | --------- | ----------------- | ------------------- |
| $G_0$ scalar | 1 channel | abstract semantics/text | "what it is" |
| $G_1$ vector | 5 channels | spatial direction/embedding | "where it is" |
| $G_2$ bivector | 10 channels | spatial relations/image/3D | "how it relates" |
| $G_3$ trivector | 10 channels | nested structure/code hierarchy | "how it composes" |
| $G_4$ quadrivector | 5 channels | spacetime relations | "when and where" |
| $G_5$ pseudoscalar | 1 channel | time series/audio/video | "when it happens" |

**Inter-modality translation = the Clifford geometric product (deflection)**. Given a multivector encoding text, $M_{\text{text}} \in G_0 \oplus G_1$, deflection through the conformal rotor $R$ (the sandwich $R M_{\text{text}} \tilde{R}$) **rotates** the semantics into the $G_2$ subspace (image representation) — no separate image encoder/decoder/alignment layer is needed. Deflection is an algebraic operation, not a learned mapping: it is exact, reversible, and certifiable.

**Why this outperforms the separate-encoder paradigm**:

| Conventional multimodality (CLIP/Flamingo etc.) | Clifford deflection paradigm |
| ----------------------------------------------- | ---------------------------- |
| one encoder per modality | one algebra, one field |
| modality alignment requires contrastive learning | modality translation = geometric product (exact algebraic operation) |
| new modality = new encoder + realignment | new modality = choosing a new grade subspace |
| inter-modality information is lossy (projection dimensionality reduction) | geometric product preserves information (reversible, exactly invertible) |
| encoder parameter count O(number of modalities × model size) | deflection parameter count O(1) (one rotor) |

Note: the right column of the table above states **design goals**, not measurements — "deflection parameter count O(1)" refers to the parameter count of a single rotor; cross-modality translation quality has not been benchmark-validated, and per the three-tier strength discipline of §14.2 this is labeled a mountable-tier claim.

**Connection to the conformal gate family**: the four families of Cl(4,1) conformal gates in §6.3 (rotor/translator/dilator/inverter) are precisely the **actuation mechanism** of multimodal deflection — the rotor rotates semantics across grades, the translator moves representations through space, the dilator rescales the resolution of different modalities, and the inverter inverts the point of view. These gate families are verified (dual-channel suite of 12+10 gates).

**Dimensional palindrome and three pairs of Hodge dual pairs**. The grade dimension sequence $1,5,10,10,5,1$ is **palindromic** — not a coincidence but the symmetry of the Hodge dual $\star G_k=G_{5-k}$ written directly into the shape of the data structure: $(G_0,G_5)$ = intensity ↔ topological charge, $(G_1,G_4)$ = position ↔ scope, $(G_2,G_3)$ = vorticity ↔ topological flow; even grades form the **intensity sector**, odd grades the **charge-flow sector**. The grade–modality table at the start thereby gains a layer of derivational support: modality mapping is at least constrained by the duality structure (text ↔ time series falls on the $G_0/G_5$ dual pair, space ↔ spacetime on the $G_1/G_4$ dual pair), no longer pure convention. Accompanying write discipline: $G_3/G_4$ are **couple-only** slots (gate-path ban; $\star G_4=G_1$ recovers the higher-order information), and $G_5$ is a **derive-only** slot (rebuilt from children fingerprints, never written directly) — measured leakage spectra in §8.8; the complete landing points of the AOS/SOA dual representation and the 6+1 nodes are in Paper Six §6.4 (the moment-encoding upgrade path).

### 8.6 The Privilege Gate Set: Three Bans → Three Degrees of Freedom

**Proposition VII32 (the simulator's privilege gate set)**. The three bans of the physical quantum world each map, on the GF side, to a **privilege gate**:

| Physical ban | GF privilege gate | Mechanism | Use |
| ------------ | ----------------- | --------- | --- |
| no-cloning theorem | **clone gate** | homomorphic copying of classical data (not physical cloning, no violation) | homomorphic clone $n$ times → each branch runs $U_1/U_2$ → bit-by-bit comparison: **counterfactual verification** |
| collapse is irreversible | **time-reversal gate** | exact $U^\dagger$ (extended Euclid) | forward $U\lvert x\rangle$ → reverse recovery of $\lvert x\rangle$, bit-by-bit comparison: **circuit-equivalence certificate** |
| peeking destroys | **audit gate** | full-amplitude $O(1)$ readout (hardware needs exponentially many tomographies) | mid-run state assertions at any depth for free; rare events $P\sim2^{-n}$ read out exactly in one pass via the Born bridge |

There is also a **fourth class of gates**: $U(n,\mathrm{GF}(p))$ — cyclic phase gates of order $p$, GF Hadamard variants, finite-field encoding gates — **not "better quantum gates" but "gates of another family"** (no physical counterpart, with classical uses of their own). Accompanying certifications: clone — homomorphic cloning + dual-field fingerprints; reverse — random-circuit round trips; audit — Born bridge cross-checks; gf_unitary — multiplication-table closure. **Three boundaries**: ① the privileges hold only at scales the simulator can reach; ② what is cloned is classical data, so the no-cloning theorem is not violated; ③ judging real hardware requires injecting a noise model. Master principle: **not a player, but a referee** — on one hand admitting one cannot do quantum supremacy, on the other being able to grade the exam. ∎

**Proposition VII46 (Kochen–Specker algebraic enumeration: a finite-field reading of the no-go theorem)**. The Kochen–Specker theorem (1967) proves that in Hilbert spaces of dimension three and above there exists no nonzero hidden-variable assignment compatible with all projection operators; the classical proof requires constructing a counterexample of 117 continuous directions. In GF(p), the set of projection operators is **finite** (at most $p^{k^2}$ matrices of size $k\times k$, of which projection operators form a subset), and hidden-variable assignments admit **finite-enumeration verification** — the no-go side of the KS theorem in GF(p) turns from a topological counterproof in continuous space into an **algebraic enumeration over finite lattice points**. This does not change the validity of the KS theorem on $\mathbb R^3$, but it shows that the **mode of adjudication** of the quantum–hidden-variable dispute in GF(p) shifts from topological counterproof to algebraic enumeration — the same pattern as VII32's three bans → three degrees of freedom, "physical no-go becomes decidable on the GF side": in physics KS is a topological proof of "nonexistence," in GF it is an algebraic proof of "after exhaustive enumeration, none compatible"; the latter is machine-checkable, the former is not. ∎ (The KS theorem is a standard QFT result; the GF(p) enumeration reading is given in Paper Three §3.2, and the finiteness of projection operators is guaranteed by the finiteness of the matrix space $\mathrm{M}_k(\mathrm{GF}(p))$ ($p^{k^2}$ elements).)

### 8.7 The Triviality Firewall: Algebraic Unification of Five Criteria

**Theorem VII34 (triviality firewall unification)**. Five seemingly different detection criteria are five expressions of **one and the same triviality invariant**:

$$\mathrm{is\_trivial}\iff H_1=0\wedge H_2=0\iff\Big|\sum_i u_i\Big|=\sum_i\Big|u_i\Big|\iff D=0\iff D_1=R_1\iff T(T)=T$$

| Criterion | Implementation | Content |
| --------- | -------------- | ------- | ----- | --- | --- | --------------------------------- |
| homology check | $H_1\ne0$ / $H_1\vee H_2\ne0$ | residue sum / pole difference nontrivial |
| PCD | $D=1- | \sum u | /\sum | u   | >0$ | total magnitude < sum of component magnitudes (cancellation occurs) |
| Bragg replay | $D_1\ne R_1$ | current state ≠ replayed state |
| Kleene self-reference | $T(T)\ne T$ | self-reference is not identity |

Reading: this is the algebraic form of Meissner expulsion — a fully coherent field ($D=0$) expels all topological defects, and "cancer cells" cannot proliferate in a fully coherent field; the essence of detection is not checking for numerical errors but recognizing topological singularities. Division of labor with Paper Six §13: this paper gives the unified identity of the five criteria, and Paper Six gives the orthogonal division of labor between the two rulers (PCD/RRC) and the clinical signature table. ∎

**Corollary (the algebraically minimal form of the Kleene fixed point)**. In GF(p), the fixed points of the squaring operator $x\mapsto x^2$ are $\{0,1\}$: 0 is self-absorbing (the zero state), while every nonzero element, because $x^{2^{16}}=1$ (2-group exponent), must return under iteration to the multiplicative identity 1 — the bootstrap tower $T^k$ always returns 1 — the algebraic substance of "the self-referential fixed point of a bootstrapping compiler" is the **self-consistency of the vacuum state** (an excitation-free ground state: self-interaction produces no new topological excitations). ∎

**Proposition VII31 (PCD = ACD: arithmetic consistency divergence and cyclotomic duality)**. PCD (phase-coherence divergence) collapses in the ARC (arithmetic resonance computer) into **arithmetic consistency divergence** ACD — after the cyclotomic embedding $\phi(a)=e^{2\pi i\cdot a/p}$:

$$\mathrm{PCD}_{\text{arc}} = 1 - \frac{\big|\sum_{k=1}^N w_k\cdot e^{2\pi i\cdot r_k/p}\big|}{\sum_k w_k},\qquad r_k\in\{0,1,\dots,p-1\}$$

mathematically isomorphic to the continuous PCD $=1-|\sum w_k e^{i\theta_k}|/\sum w_k$, the only difference being that $\theta_k\in[0,2\pi)$ is continuous while $r_k/p$ is a discrete sampling of order $2^{16}$ — **what PCD detects is not floating-point rounding error (there is no floating point) but the resonance consistency of the algebraic structure itself**. The cyclotomic duality principle:

$$\mathrm{PCD}_{\text{quantum}}=0 \iff \mathrm{PCD}_{\text{arc}}=0$$

— complete synchronization of quantum phases ⟺ all arithmetic computation paths give exactly identical results over GF(p). Each of the five operators has its own PCD check semantics: $\odot$ checks associativity resonance, $\circ$ checks noncommutative phase synchronization, $\mathrm{NTT}$ checks butterfly-decomposition consistency, $\downarrow$ checks phase preservation after collapse, and $\Delta$ checks the cognitive coherence of learning updates — **one PCD check accompanying every execution of the five operators** is ARC's "heartbeat": PCD=0 is the arithmetic ground state (all paths resonating), PCD>0 an arithmetic excited state (contradictory paths exist), PCD→1 the arithmetic heat death (complete decoherence, external intervention required). Read together with the VII34 five-criterion unification: the continuous form and the arithmetic form of PCD are projections of the same triviality invariant onto two fields. ∎ (The cyclotomic embedding $\phi$ is a standard homomorphism; the discrete–continuous isomorphism is guaranteed by $p=2^{16}+1$ being sufficiently large, making the difference engineering-imperceptible; the PCD semantics of the five operators are in the ARC design document (arithmetic resonance dual computer).)

**Proposition VII38 (the gate/collision boundary is decidable at compile time)**. Pure gate circuits can be recognized directly from the operator invocation table: a program that never invokes $\odot/\downarrow/\Delta$ (staying entirely within the versor homomorphic image) belongs to the **surplus-free zone**, and its correctness can be adjudicated at zero cost by group-theoretic identities — compiler correctness = algebraic invariant, independent of external assertions; surplus can only come from outside the homomorphic image (collision coupling/interference). The boundary between gates and collisions is visible at compile time. ∎

**The operator foundation of VII38: the authoritative table of five operators**. The "operator invocation table" carries its own definition — five basic quantum operators, no more, no fewer:

| Operator | Arity | Physical dual | Semantic axiom | GF(65537) implementation |
| -------- | ----- | ------------- | -------------- | ------------------------ |
| $\odot$ | binary | Clifford group generator | commutative, associative, identity 1 | $(a\cdot b)\bmod p$ modular multiplication |
| $\circ$ | binary | Clifford geometric product | $a\circ b=(a\wedge b)+(a\cdot b)$, associative, noncommutative | outer product + inner product (the bit-plane implementation belongs to another semantic layer, listed separately and not counted) |
| $\approx$ | binary | Bragg resonance | symmetric, nonnegative, orthogonal ⟺ zero | cross-spectrum: $F(A)\cdot\overline{F(B)}\to\arg\max$, with $F$ the NTT |
| $\downarrow$ | ternary | Born projection | $\downarrow(\mathrm{true})=t$, $\downarrow(\mathrm{false})=e$ | selects one of the two branches by condition |
| $\Delta$ | quaternary | Hebbian learning | $m'[a]=m[a]+\delta$, repeated $c$ times | incremental write to memory by address, repeated $c$ times |

Derived closure: the NTT butterfly $(a+\omega b,\,a-\omega b)$ is a **built-in subroutine** of $\approx$, not a sixth operator ("you would not list modular multiplication as a sixth operator"); tensor contraction $C_{ik}=\sum_j A_{ij}\odot B_{jk}$ = a $\odot+\approx$ combination; matrix multiplication = a specialization of $\circ$; $\bowtie$ (Bra-Ket) = syntactic sugar, not counted. **Side-effect dichotomy** (the definitional pivot of the VII38 adjudication): $\odot/\circ/\approx$ are side-effect-free and reorderable, while $\Delta$ has side effects and is not reorderable.

**Series interface**: the criteria stated in this section constitute the third road of verification — "a value falling in the admissible set is true," with truth folded into the computational semantics itself. Its GF form is the three-scale isomorphism $\langle$carrier, admissible set, attribution adjudication, falsification event$\rangle$: the arithmetic layer $\langle\mathbb{Z},[0,p),\text{SWAR reduction},\text{division-by-zero absorption}\rangle$, the knowledge layer $\langle$computation trace$,\,[\mathrm{lo},\mathrm{hi}]^n,\text{ck count},\text{out-of-bounds access}\rangle$, and the value layer $\langle$remainder vector$,\,\text{CRT consistency manifold},\text{congruence comparison},\text{remainder contradiction}\rangle$ — when any one layer changes basis, the other two stay put. Higher-order form: multi-route mutual agreement = intersection of admissible sets; the interval intersection $\bigcap_i I_i$ of $k$ independent routes converges to a single point — **precision is not computed; it is obtained by intersection**. The §8.8 fingerprint system constitutes the master acceptance outline for reconstruction; the adjudication discipline that "bit-level identity is the sole qualification line" constitutes the epistemological foundation of bootstrap verification.

**Proposition VII26 (trinity collapse: the symmetric-group origin of operator stratification)**. The system-level six operators $\langle$OBSERVE, COMPILE, SELF_VERIFY, GALOIS, META_OBSERVE, HOMOLOGY$\rangle$ (note that these belong to a different layer than the GF five-operator foundation $\odot/\circ/\approx/\downarrow/\Delta$ of §8.7: the former are engine system operators, the latter in-field quantum operators, and the two are never mixed) collapse into a $\{3,2,1\}$ stratification — 3 identity operators (OBSERVE/COMPILE/SELF_VERIFY, action $\propto$ fp), 2 dual operators (GALOIS/META_OBSERVE, $\propto$ fp²), 1 homology operator (HOMOLOGY, $\propto N\cdot100$) — not an artificial functional categorization but the **natural stratification of the representation theory of the Lorentz group $\mathrm{SO}(1,3)$ (= the spacetime symmetry subgroup of Cl(4,1))**: order-3 construction operators ↔ the manifest construction layer G0–G2 (object-level operations, corresponding to fermion matter fields), order-2 dual operators ↔ the duality-element layer G3–G4 (meta-level observation and transformation, corresponding to boson gauge fields), order-1 homology operator ↔ the topological invariant layer G5 (global topology monitoring, corresponding to the scalar Higgs field) — the same symmetric structure emerging at different scales as the Standard Model's "3 generations of fermions + 2 classes of bosons + 1 scalar Higgs." **Strength label**: this is a structural isomorphism (analogy-level calibration), not a claim of physical equivalence — the reason for entering it into the register is that it provides a group-representation-theoretic non-arbitrary justification for the $\{3,2,1\}$ weights of the six operators (why not 4+2 or 2+2+2), belonging, together with the §8.7 five-criterion unification, to the discipline of "symmetry determines stratification." ∎

### 8.8 Structural Fingerprint and Leakage Spectrum: The Write Discipline of the G5 Slot

**Theorem VII35 (fingerprint invariance)**. The residueon triple fingerprint $\mathrm{rpf}(z,r,n)$ (a polynomial rolling hash with prime bases $[31,37,41]$ — consecutive primes guarantee the avalanche effect, locking down the three degrees of freedom position/amplitude/topological charge respectively) is invariant under gate transformations **if and only if** the type code pins down the rotation axis — if the type code is pinned to a vector component that the rotor rotates, the fingerprint check is guaranteed to fail; once pinned to the $e_1$ axis (taking the Spin subgroup fixing $e_1$), "fingerprint = rotor invariant" upgrades from a design convention to a **provable theorem** — the centrality of the Pin layer (§7.1) backstops it: not even a reflection can move it. ∎

**Theorem VII36 (closed form and measured values of the leakage spectrum)**. The core rows of the grade coupling spectrum of the Cl(4,1) geometric product (the 36-cell closure table = the node slot write-permission table) admit closed-form probabilities and have been measured by machine:

| Coupling | Closed-form probability | Measured |
| --- | --- | --- |
| $G_1\times G_2\to G_3$ | $P=3/5$ | 166/256, 163/256 (theory 0.6) |
| $G_2\times G_2\to G_4$ | $P=3/10$ | 77/256 (theory 76.8) |
| Any $\to G_5$ ($G_0/G_1/G_2$ combinations) | $0$ (grade sum ≤4 < 5) | trivial closed form, zero leakage; the 6-cell exceptions of $G_2\times G_3$ type with grade sum $=5$ are covered in Corollary ③ |

Three data corollaries: ① $G_3/G_4$ are not safe user containers (about 64%/30% of ordinary collisions would trample these slots); ② the collision routing table must add a $G_4$ row — $\star G_4=G_1$: the Hodge dual automatically presses higher-order information back onto the semantic axis; ③ children must be externalized — if children were stored in $G_3$, $G_2\times G_3\to G_5$ would pollute the fingerprint slot (externalization is upgraded from an engineering choice to a mathematical necessity). ∎ (The 36-cell leakage-spectrum closure table was verified 6/6 by the leakage-spectrum closure suite — grade closure theorem: the grade of the $g_A\times g_B$ product satisfies grade $\in\{|g_A-g_B|,\ |g_A-g_B|+2,\dots\}$ (step 2, upper bound $\min(g_A+g_B,\ 5-|g_A-g_B|)$); $G_5$ is nonzero only when the grade sum = 5 (exactly 6 cells); $(g_A,g_B)/(g_B,g_A)$ symmetric. The high-order cells ($G_2\times G_3\to G_5$ etc.) are explicitly covered by the extended verdict set.)

**Design criterion (invariance ≠ conservation law)**. $RI_5\tilde R=I_5$ is **invariance under group action**, not a dynamical conservation law — a conservation law requires equality before and after collision, whereas Kleene reduction precisely relies on collisions changing structure (pole merging, order addition $n_1+n_2$). Therefore: G5 carries only **immutable metadata** (structural fingerprint/checksum), and every "conservation" statement is narrowed to "an invariant under the given operation set"; the semantics of order $n$ is handed over to the children tree (on reduction $n_C=n_A+n_B$), with the checksum semantics left solely to G5 — **the dissolution of n** keeps reduction updates and metadata freezing from deadlocking each other. A multivector is a "flat" 32-coefficient linear space in which tree structure cannot be embedded (the triple constraints of depth/width/operations); externalizing children is a mathematical necessity of the linear space.

**Acceptance semantics (semantic fingerprint)**: the semantic fingerprint commit/energy = two independent projections of the canonicalized hash of the residueon table (effective discriminative power $2^{-64}$); **acceptance sufficiency law**: with the DFL three-nons, unchanged in-domain fingerprints $\Rightarrow$ black-box indistinguishability — reconstruction acceptance degenerates from "proving two programs equivalent" to "one compilation + hash comparison". Reconstruction statistics: 17 commits, net −580,000 lines, about 1,200 gate decisions, zero bad transformations merged in. **Complexity-drift law**: large blocks of logic containing control flow show zero byte-level drift (352 loop+branch definitions), whereas medium-complexity pure-expression idiomatic blocks drift away from the true semantic lineage (term-by-term reduction vs whole-object reduction) — **the drift hotspot lies in idiomatic blocks, not in large functions**: the erosion of discipline begins with "I remember this", hence gates are deployed according to idiomatic-block density; this and the §8.8 write discipline are two sides of the same coin.

**Proposition VII27 (32-dimensional inventory: the trinity of quantum-gate algebra, data container, and correctness criterion)**. A functional inventory of all 32 dimensions of Cl(4,1) — the rotor (quantum gate) belongs to the even subalgebra $\mathrm{Cl}^+ = G_0\oplus G_2\oplus G_4$ (16 dimensions), and the actual generators are far fewer than that: **the quantum-gate active region is about 6–9 dimensions, with 18 dimensions structurally idle**:

| Grade | Dimension | Quantum-gate usage | Assigned function |
| --- | --- | --- | --- |
| $G_0$ | 1 | payload scalar | pole payload ("what it is") |
| $G_1$ | 5 | partially active | pole $z$ (position/frequency) + idle axes as data |
| $G_2$ | 10 | rotor active region | bivector component of the payload vector $r$ |
| $G_3$ | 10 | **structurally idle** | coupling slots only (VII36: leakage 3/5, gate paths banned) |
| $G_4$ | 5 | **structurally idle** | coupling slots only ($\star G_4=G_1$ high-order recycling) |
| $G_5$ | 1 | **fixed by rotor** | structural fingerprint/checksum (derived only, never written directly) |

**Core invariant**: the pseudoscalar commutes with the even subalgebra — any rotor gate $RI_5\tilde R=I_5$ is structurally incapable of changing the G5 component, and "reduction legitimacy ⟺ n preserved" turns from an external assertion into an intrinsic invariant. Gates (reversible, n-preserving, free rollback) and collisions (geometric product, structure-changing, n-checking) naturally diverge at the grade level, and the idle region is reserved additively without renumbering. **Category clarification**: the G5-slot checksum is a **polynomial rolling hash function, not inside the Cl(4,1) algebra** — its invariance comes not from "pseudoscalar rotor invariance" but from the hash input being chosen precisely as the quantities the rotor leaves fixed (the type code pinned to the $e_1$ axis, VII35); the correct formulation is "structural checksum", not "an algebraic realization of topological charge" (Paper 5 §16.2 uses the same strength level). ∎

**Proposition VII28 (AOS/SOA duality: engineering realization of the two Clifford representations)**. The duality between RPF (AOS: each residueon packed as a complete multivector) and MF (SOA: arrays split by grade field) is not a storage-format choice but **the engineering realization of the two strictly equivalent forms of the Clifford algebra — the "multivector representation" and the "graded representation"** — with no information loss and lossless mutual conversion, each optimal for a different computation mode: AOS suits complete operations on single residueons (collision/reduction/semantic transformation, processed per semantic unit), SOA suits same-grade batch operations (batch pole updates/batch vorticity coupling, contiguous memory, **naturally suited to GPU SIMD coalesced access**). This is not a performance trade-off but the two-way optimality of a mathematical duality — read together with the grade function table of VII27: the column-split lines of SOA are exactly the grade function boundaries, and the two layouts share the same 32-dimensional inventory. ∎

---

# Part III: A Taxonomy of Classical Uses of Quantization

## 9 The Three-Tier Use List

### 9.1 Rent already paid (running now)

| Use | Mechanism | Empirical evidence |
| --- | --- | --- |
| Quantum-inspired authentication/watermarking | classicizing the E91 entanglement-correlation protocol | suite all green |
| Convolution/spectral acceleration | QFT≡NTT (Bragg operator) | whole-series dependency |
| Gate cryptography | Class-C SPN nonlinear reversible gates | 7-gate suite |
| Grover deterministic rearrangement | amplitude amplification = deterministic rearrangement operator (closed form already obtained) | beam-search paths |
| Gate-residual adapter | group-closed update = low-rank adaptation on the residueon table | dual-channel all green |
| Entanglement-based memory | associative storage via field multiplication | criterion verified |
| Zero-knowledge/vault | privacy side of the correlation algebra | suite built |

### 9.2 Mountable (criteria ready, uses awaiting hookup)

- **QEC → classical error correction**: the stabilizer/syndrome mathematics of the surface code translates into error localization for pole storage and channels (the BM law-discovery engine is already a classical decoder — one algorithm, two identities).
- **Counterfactual reasoning**: §8.1 — the origin of contrastive learning signals.
- **Möbius equivalence testing**: semantic invariants (cross ratios) for compiler optimization.
- **Damping gate = operatorized dissipation**: the gate form of the forgetting law and of stabilization.
- **N-generation parallel timelines**: a generalization of dual-generation snapshots; parallel diff for controlled experiments.
- **Quantum Goppa codes**: residue constructions from algebraic-geometry codes to quantum codes — a mathematical expansion direction for QEC's classical error correction (supported by the literature).
- **Matrix-pencil/ESPRIT pole diagnostician**〔in service〕: complex poles extracted directly from time series (real part = frequency, imaginary part = decay rate); already used in ultrasound blood-flow imaging/underwater acoustic localization; **a pole's imaginary part turning from negative to positive = the system moving from decay to self-excited oscillation = precursor of collapse** — the algebraic form of an instability early-warning sensor.
- **Singularity-native numerical engine**〔in service, far from widespread〕: the AAA algorithm/barycentric interpolation/Chebfun have already gone half the way — an off-the-shelf toolbox that computes not the values of a function but its singularities.
- **Holographic vector binding (HRR/VSA)**: concept = complex exponential wave, binding = wave multiplication, superposition = wave addition, retrieval = interference (correlation), residue magnitude = associative strength, pole imaginary part = forgetting rate — a semantic-layer extension of §8.4 entanglement-based memory (same words, different meanings; the differences are noted).
- **Cauchy attention (construction level)**: attention score $=\frac{1}{2\pi i}\oint \psi(z)\,p(z)\,dz=\sum_k r_k\,p(z_k)$ — keys = poles, query = test function; the residue theorem reduces attention from softmax to a sum over principal residues; resonance is hitting a pole, of the same family as §6.4 conformal gate's "killing the nonlinear-activation lookup table".
- **Reservoir frozen reservoir + dual-head architecture**: a direct product of §8.2 group closure ($X^2=I$ gate composition does not diverge) — the frozen reservoir (fixed weights, spectral radius guaranteed by group theory rather than by betting) + the dual head (the text-generation readout head fixed by distillation, the task-learning head trainable) decouples the two conflicting output types, "text generation" and "task decision"; the greatest engineering pain point of reservoir computing (the spectral radius depending on hyperparameter tuning, with spiky chaos and decaying amnesia separated by a hairline) is eliminated wholesale by **certifiable group closure** — pool updates go through gate-group identities and never leave bounds.
- **Residue-field incremental transfer (distributed hot update)**: the $(z,r,n)$ triples of the residueon table natively support diff — old and new snapshots are matched by pole (those with identical $z$ compared on $r,n$), the increment = the set of changed poles; after transfer, CDN/P2P distribution and client-side incremental application. Run comparison: full transfer of text/weights vs incremental transfer of poles — the latter's byte count ∝ amount of change rather than model size — the algebraic form of the hot update (three scenarios: game engines/AI assistants/databases). Boundary: the matching algorithm must tolerate pole perturbations (quantization jitter); exact matching is too brittle.

### 9.3 Hardware-era exits

- **Exact simulator**: a deterministic oracle for small-scale quantum circuits — before tape-out, chips rely on simulators; before quantum algorithms go live, they rely on exact GF recomputation (the full set of QFT/Deutsch/teleportation/dense coding has passed).
- **Protocol testbed**: BB84/E91/QEC protocols are first designed–falsified–finalized here; once hardware is in place, the protocols port over directly.
- **MPS compression**: the most successful tensor network on the quantum-inspired classical side; the MPS form of reservoir weights.
- **XEB zero-error benchmark generator**: **absolutely exact** standard-answer probability distributions for random circuit sampling (RCS) variants and QAOA outputs — the ultimate grader of cross-entropy benchmarking; floating-point simulators can only give approximate distributions, cross-entropy comparisons start lying at the third decimal place, and the GF domain gives exact distributions.
- **Physical-field backend (program-level, boundary disclaimer attached)**: the triple isomorphism wave field = residue field = physical field — the three operations "load poles, evolve, read out poles" serve as the unified backend interface; the compiler outputs physics-independent pole-residue configuration tables, and backends are swappable. Of the nine medium mappings (electromagnetic field/water waves/acoustic waves/superconducting order parameter/plasma/gravitational waves/neural pulses/surface plasmons/magnons, each calibrated for what the pole =, what the residue =, what field multiplication =), **only the electromagnetic field (WGSL) cell is in service**; the rest are analogy-level calibrations. The claim "collision-encoding completeness = universal Turing machine" is an assertion without proof and does not enter theorem contexts.

---

# Part IV: Exactness Theorems — Why Measurement Is Accurate

## 10 Why Measurement Is Accurate: The A/B/C Decomposition and Non-Destructive Measurement

**Theorem VII12 (non-destructive measurement)**. Decompose "quantumness" into three orthogonal components: **A state structure** (superposition/entanglement/interference), **B destructive measurement** (collapse/randomness/irreversibility), **C dynamics** (evolution/phase diffusion). Physical quantum measurement mixes B into the result: measure once and the state is destroyed, unrepeatable; its stochasticity comes from the measurement process, **not a property of the state**. The readout of the residue field only performs projection selection (Born=argmax), and **the field does not collapse** — the same state can be measured any number of times, bit-identical each time. Hence

$$\text{Accurate measurement}\;=\;\underbrace{\text{non-destructive repeatability}}_{\text{NDM}}\;\times\;\underbrace{\text{algebraic zero error}}_{\text{GF, §11}}.$$

The physical quantum field lacks both factors (destructive measurement + floating-point approximation); the residue field has both. Alignment: mathematically it realizes Everett's collapse-free quantum mechanics; in engineering it realizes QND's non-destructive readout; the correlation structure is equivalent (no-signaling/Tsirelson bound/Bell violation), while the computational structure is strictly stronger (deterministic/exact/reversible/auditable) — **it is not that quantumness is missing, but that the destructiveness of measurement is missing**. Corollary: no quantum Zeno effect (Zeno depends on destructive measurement); repeated readout = repeated retrieval of memory without wear (Paper 6 §3.5). ∎ (Non-destructive readout regression in Appendix B.12.)

**Theorem VII37 (three-leg isomorphism)**. The GF simulator puts the three legs of quantum mechanics precisely in place: the **in-domain unitary algebra engine** (deterministic, reversible) ↔ unitary evolution; the **Born lifting bridge** (VII17: rational reconstruction reads out exact probabilities) ↔ the Born rule; **out-of-domain sampling** (an external sampler driven by the exact probability distribution) ↔ measurement. "Randomness cannot be grown in-domain" is not a defect but the boundary quantum mechanics itself draws — measurement is intrinsically probabilistic and non-unitary, and any quantum computer (including real hardware) cuts at exactly the same line; the only difference is that the residue field places the sampler outside the domain, thereby preserving non-destructive repeatability (VII12). The twelve classes of quantum phenomena are assigned by A/B/C: decoherence and phase transitions go to C (measurement is only a special case of decoherence), interference/entanglement/superposition go to A, and the Born rule is "same structure, different realization".

## 11 The Pseudo-Real-Number Criterion: Exactness Is a Representation Property, Not an Instrument Property

**Proposition VII13 (pseudo-real-number criterion)**. The precision of a numerical value is not an instrument property but a **representation property**. Demarcated by value range:

| Source | Value range | Error | Verifiability |
| --- | --- | --- | --- |
| Pseudo-real numbers (floating-point integration/fitting) | ℝ (approximate) | present and **untraceable** | can only "look right" |
| Precomputed/algebraic objects (fraction pairs/integers) | ℚ/ℤ | **zero** | symbolic verification, bit-exact reproduction |

Verbatim from the source literature: "Pseudo-real numbers are 'cannot compute exactly, so store an approximation'; precomputation is 'can compute exactly, so store the exact value to avoid recomputation' — the former is a compromise of precision, the latter a reuse of precision." Operational form of the criterion: **once the storage format degenerates to floating point, pseudo-real numbers are restored**; if the integer-pair/rational form is kept, table values and on-site computation are bit-identical. Classic counterexample: on the floating-point side $0.1+0.2\ne0.3$; on the fraction side, fraction arithmetic is exact (Appendix B.11).

GF(p) is the extreme form of this criterion: addition, subtraction, multiplication and division are **closed over a finite set throughout**, leaving no place where "rounding" is even defined. Normalization is not an approximate operation but a group-theoretic identity: $\bar H=2^{-1}\cdot H$ ($2^{-1}=32769$ exists exactly) — **unitarity on GF(65537) is not an approximate constraint but a group-theoretic identity**. ∎

## 12 Integral = Finite Sum: The No-Divergence Theorem

**Proposition VII14 (finite-sum replacement)**. There is no limit operation on GF(p); the direct descendant of "integration" is the **finite sum**, and power sums close exactly:

$$\sum_{x\in\mathrm{GF}(p)}x\equiv0,\qquad \sum_{x\ne0}x^m\equiv0\ (p-1\nmid m),\qquad \sum_{x\ne0}x^{p-1}\equiv-1.$$

Corollary chain (an axiomatic restatement of the source literature's argument): ① spacetime on the GF domain is naturally latticized, with no concept of the "infinitesimal"; ② no $k\to\infty$ means no UV divergence; ③ **renormalization is not a trick for "removing infinities" but the unnecessary approximation continuous mathematics makes of finite algebra**; ④ perturbative QFT = the formal power series of the residue field truncated at a fixed pole set, renormalization = choosing the truncation order — this corollary chain is an analogy-level argument. ∎ (Power-sum identity verification in Appendix B.11.)

## 13 No Uncertainty in the Arithmetic Domain (Dual Proposition)

**Proposition VII15 (dual form)**. $\Delta\phi\cdot\Delta\omega\ge\tfrac12$ holds in the continuous domain; on GF(65537), phase and frequency are both exact elements of the cyclic group of order $2^{16}$, and the "arithmetic uncertainty quantity" can be exactly zero — **uncertainty in the arithmetic domain is not an ontological property but a property of the choice of representation**. Dual formulation: the commutation relations of the five-operator pedestal (§8.7) are the algebraic version of the uncertainty principle — the commutator itself is exactly computable. Accompanying mechanism: Safe-Born division — division by zero does not raise an error; instead, a new pole whose residue is the dividend is born at the point at infinity (the algebraic Riemann sphere). ∎

## 14 Residue Field vs Quantum Field: Comparison Table and Advantage List

### 14.1 Ontological Comparison

| Dimension | Physical quantum field | Residue field (GF quantization) |
| --- | --- | --- |
| State | Hilbert-space amplitude vector (no interior) | residueon $(z,r,n)$ (each with an infinite interior: nested residue fields) |
| Phase | continuous complex phase | discrete phase circle of order $2^{16}$ (VII1); field extensions add order on demand |
| Measurement | probabilistic collapse, irreversible and unrepeatable | Born=argmax / residue extraction (cross-ratio computation); same input, same output; breakpoint single-stepping supported |
| Decoherence | physical process (must be fought with error correction) | algebraized into a geometric object (code distance = intersection number of the subspace and the decoherence trajectory); protection = Galois invariance |
| Nonlinearity | forbidden in principle (linear unitary evolution) | natively permitted (the whole family of Class-C nonlinear reversible gates) |
| Divergence | UV divergence requiring renormalization | integral = finite sum, no divergence (VII14) |
| Parameters–precision | plane-wave basis: as precision rises, parameters explode | a single high-order pole expresses all multipole structure; the parameter count is fixed |
| Self-referential equations | generally no analytic solution in the continuous domain | $\Omega=\Omega(\Omega)$ solvable by exhaustive search in a finite function space |
| Scattering | simulator's viewpoint (approximate S matrix) | the scattering matrix is poles + residues to begin with — **the residue field is the native language of scattering** (IST inverse scattering: discrete spectrum = solitons; literature anchor Trogdon & Olver 2016, SIAM) |
| Integrability | no systematic criterion | YBE checkable element by element (the CNOT negative control is detected exactly, VII19) |

### 14.1b Wave-Particle Duality = Poles: The Residue-Field Reading of LSZ Reduction

**Proposition VII29 (the analytic identity of wave-particle duality)**. "Wave-particle duality" is not a compromise rhetoric between two things but **the whole and the singularities of one and the same meromorphic function** —

$$\underbrace{\text{wave}}_{\text{analytic structure: propagator }G(p)\text{, }S\text{ matrix, Green function}} \quad\longleftrightarrow\quad \underbrace{\text{particle}}_{\text{poles: the simple pole of }G(p)\text{ at }p^2=m^2\text{, }S\text{-matrix resonance poles, Regge poles}}$$

Its exact form is the **LSZ reduction formula**:

$$\langle f|S|i\rangle = \prod_k \lim_{p_k^2\to m_k^2}(p_k^2-m_k^2)\cdot\tilde G^{(n)}(p_1,\dots,p_n)$$

— the S-matrix element (particle scattering probability) = the **residue** of the correlation function (wave) at the pole. The particle is the wave's residue; there is no second thing. In the residue-field framework this is a self-consistent identity rather than an analogy: for the residueon $(z_k,r_k,n_k)$, $z_k$ = pole location (particle mass/resonance frequency), $r_k$ = residue (coupling strength/spectral weight), $n_k$ = pole order (topological charge) — read together with the §14.1 scattering row, "the residue field is the native language of scattering" — **wave-particle duality is the native language of the residue field, not a bolted-on explanation**. Historical note: the Bohr-era "duality" rhetoric was a compromise formulation in the absence of the language of complex analysis; LSZ (Lehmann–Symanzik–Zimmermann 1955) pinned it down as the residue theorem. ∎ (A standard QFT result; the residue-field reading is jointly supported by the §14.1 scattering row + the VII41 spectral decomposition.)

### 14.2 Advantage List (Three-Tier Strength Labels)

1. **Zero error and self-verification**〔mechanism〕: residue-field evaluation is strictly isomorphic to integer arithmetic, with per-step verification built in (the proof-carrying form of computation — the "heartbeat"); not ECC but self-certification premised on zero error.
2. **No divergence**〔mechanism〕: see VII14.
3. **Containment relation**〔analogy level, the strongest item〕: perturbative QFT = the residue field's formal power series truncated near a fixed pole set — standard quantum information uses only the residues' "horizon information" (2 bits), while the residue field can extract "bulk information" (the family of differential-sequence cross ratios).
4. **Ontological interior perspective**〔analogy〕: quantum field theory says "a particle is an excitation of the field" (external perspective); the residueon says "the interior of a particle is itself a field" (internal perspective: $\frac{1}{z-z_k}$ is exactly the Green function of a two-dimensional point charge).
5. **Edge deployability**〔assertion〕: GF modular arithmetic = natively supported by GPU integer units, with no floating-point pipeline dependency.
6. **In-service industry list**〔fact level〕: the residue theorem is a deployed technology across eight sectors — digital filter stability (MATLAB residue()/SciPy in service), the Nyquist criterion in control engineering (the argument principle is a corollary of the residue theorem), Feynman integrals and dispersion relations in quantum field theory (CERN data analysis/PET), analytic number theory and cryptography (prime number theorem, Weil pairing), complex potential in fluid dynamics (Joukowski airfoil), probability and actuarial science (characteristic-function inversion, saddle-point method), spectral representation of Green functions in condensed matter (pole = quasiparticle energy, residue = spectral weight), and Carr-Madan option pricing in financial engineering — the hardest footnote that the residueon table is not a reinvented wheel (the quantified version of Increment Two in §1.4).

7. **Computing singularities, not values** 〔mechanism; restricted to singularity-dominated problems〕: a sampling representation needs $N$ points, whereas the pole representation needs only $k$ poles ($k\ll N$) — an exponential compression for problems dominated by resonance, phase transitions, asymptotics, or instability; the algebraic structure of the nonlinear world is precisely encoded in pole dynamics (pole motion = nonlinear frequency shift, residue coupling = mode coupling, generation of new poles = harmonic generation / mixing, stability of singularity structure = solitons / vortices / domain walls).
8. **Topological invariance = disturbance robustness** 〔mechanism〕: the three capabilities of the residue theorem — global→local (a path integral = the sum of interior singularities), analytic continuation, and invariance under path deformation (the integral is unchanged so long as no singularity is crossed) — are of the same type as the protection = Galois invariance of §14.1.

**Chemistry example**: the periodic table = a pure integer function of $Z$ (Madelung shell derivation + Slater shielding ×100 integerization — zero table lookup, zero pseudo-reals; the chemistry instance of VII13); the periodic-table residue field $\psi(z)=\sum_k r_k/(z-z_k)$ takes shell closures as poles ($Z\in\{2,10,18,36,54,86,118\}$) — structurally of the same type (analogy level).

### 14.3 Boundary statement

Structural isomorphism does not mean identity of medium (the boundary discipline of Paper6 §15.3 carries over).

**Closing the four fractures and ontological calibration**: at each of the four fracture points of the wave-field paradigm this paper has an answer — nonlinearity (turbulence/solitons: superposition fails) → the full family of Class-C nonlinear reversible gates (VII5) and pole dynamics; measurement collapse → §10 non-destructive measurement (the VII12 three-leg decomposition); discrete logic (Boolean operations have no phase — the strongest of the four) → §7.1 sign-phase bookkeeping (VII39); entropy increase → §6.4 damping gate (dissipation made operatorial). The fracture points are not failures but upgrade paths: the linear wave field is a zeroth-order approximation, and pole dynamics encodes the nonlinearity. **Ontological strength calibration**: "everything is a wave field" is positioned and used as a methodology / hypothesis generator — every claim of this paper is independent of its physical ontological truth value; the externally citable mathematical identity of the residue field is **the residue homomorphism on the layer of meromorphic functions + the D-module / Riemann–Hilbert correspondence**, and it is not called an algebraic universe.

---

# Part Five: Boundaries

## 15 Five boundaries without any embellishment

1. **No speedup**: classical exact simulation enjoys no quantum speedup — the polynomial/exponential advantages of Shor/Grover belong to the hardware, and none of the uses in this paper depend on or claim it. The converse (no speedup ⟹ simulable) rests on a complexity assumption (BQP≠BPP) and is an open problem — precisely because of this, the exponential explosion under scale amplification is the logical signature that quantum advantage exists, not an implementation defect. Two-way form: simulable ⟹ no speedup holds trivially; no speedup ⟹ simulable depends on BQP≠BPP (open). The knob is the **T count**: a circuit's stabilizer rank grows with its number of T gates — T count is the knob that pushes a circuit from the simulable region toward the non-simulable region, and the GF field reproduces both regions exactly (the quantitative face of the boundary defined in §7.1).
2. **The amplitude wall**: the exponential wall $2^N$ of the explicit state vector does not disappear because of the GF representation (Paper6 Proposition VI9); exact simulation of large systems still requires structure (residueon-table sparsity / MPS).
3. **Putting "tens of times more gates" in its place**: what is extra is an **algebraic alphabet** ($10^{19}$ for $\mathrm{GL}_2$, $10^{287199}$ for $S_p$) — an inventory of invertible transformations and nonlinear permutations, not quantum computing power; benchmarking it as "quantum lead" is a category error.
4. **The non-physicality of nonlinear gates is precisely their value**: physical quantum is locked by linearity; the Class-C family of GF quantization lives where physical principles cannot reach — this is the first meaning of "quantization can also be used this way," and the fundamental divide between this paper and the quantum-computing literature.
5. **The remaining physical boundaries**: the ontology of the measurement problem is unresolved (if measurement is a physical process, the residue field would need to introduce randomness, destroying analyticity; if it is merely an information update, it can be accommodated); the Planck scale would require upgrading from commutative to noncommutative algebra; the microscopic-limit self-assessment is not closed (Paper6 §13.3) — GF quantization is valid outside these boundaries and stays silent within them.

Beyond the boundaries, one more boundary discipline: structural isomorphism ≠ solving the hard problem of consciousness (Paper6 §15.3); likewise this paper does not claim that GF quantization and physical quantum are ontologically identical — what is identical is the **algebra**, what is separate is the **medium**.

---

# Part Six: Engineering measurements

## 16 Suite inventory and integration

| Suite | Gates/scale | Status |
| --- | --- | --- |
| $M_2$ gate algebra (Pauli/Clifford/conjugation/determinant) | 11 gates | dual-channel all green |
| Gate residue table (gate residuals + gate Hebbian updates + inclusion checks) | 7 gates | dual-channel all green |
| Cl(4,1) conformal ladder (scalar→$M_2$→conformal) | 12+10 gates | dual-channel closed |
| QEC series (depolarization/surface code/fidelity curves/topological order) | 5 suites | all green |
| E91 entanglement watermark | 1 suite | all green |
| Grover closed forms (Pythagorean angles/full amplitude) | 2 suites | all green |
| SPN nonlinear reversible-gate cipher | 7 gates | all green |
| Hopf/Yang-Baxter/anyons | 3 suites | all green |
| Zero-knowledge mesh / vault | 2 suites | built |
| Cl(4,1) CGA experiments (circles/tangent spheres/triangles/midpoints/squares/idempotents/matrix representation/Lie algebra/Cartan decomposition) | 9 files, 54 gates | all green (Theorems VII21–VII25 + VII42–VII43, see §6.3) |
| Born-bridge dual-domain certificate suite | 6 gates | PASS (k≤16 fail-loud, dual domains 65537/131071) |
| Jones judging @GF(131071) | 5 gates | PASS (anchor cross-check against trefoil/cinquefoil literature values) |
| Spin/Pin group axiom gates | 7 gates | 7/7 (Pin reflections measured) |
| Versor decomposition gates | 6 gates | 6/6 |
| Leakage-spectrum closure table | 6 gates | 6/6 (36-cell closure theorem) |
| Möbius gate implementation (PSL(2,GF(p)) automorphism group, residues invariant) | 8 verifications | built |
| 3-qubit Grover orbit verdict | 19 assertions | all green (recursion 20→176→832→−1280→−3071) |
| QEC verdict family | 12+ files | built (phase codes/cluster algebra/Shor9/Steane + logical gates/logical CNOT/CSS/threshold/concatenation/depolarization/surface code [[9,1,3]] and d=5/fidelity curves/anyon topological order) |
| Zero-knowledge Pedersen/Sigma (distributed mesh verdicts) | 19+ assertions | all green (version vectors/Lamport/gossip + commitments + Sigma responses) |
| Quantum-gate syntax-layer verdicts | 9 assertions | all green (psi/ket/gate_x/gate_z/operator=functions) |
| Cl(4,1) algebraic-structure family + engineering-application family | 34 files | reports complete (involution group V4/Cartan decomposition/outer morphisms/meet/exponential map/Plücker/Lagrange; emitter = backend capability sphere blades 15/27/28/29, robot PID = three rotors, optimization pass = rotor with exact rollback) |

Integration form: the compiler and the database have merged into one (**the pool is the program**) — law nodes are mounted directly into the pole pool after compilation, query = evaluation (8.35 million ops/s), and gate updates go through an operation-level log that is rollback-able and auditable. The gate catalog of this paper is the **instruction-set manual** of this integrated artifact: a master table of 34 entries, every class being one mountable operator entry. Extended measurements: the nine Cl(4,1) CGA experiments are all green — the tangent-sphere master formula $\langle S_1,S_2\rangle=\tfrac12(r_1^2+r_2^2-d^2)$ unifies all tangency conditions (external tangency $=-r_1r_2$, internal tangency $=+r_1r_2$); the Euler line $H=A+B+C-2O$, $G=(A+B+C)/3$ are automatically collinear (OG:GH=1:2); $Cl(4,1)\cong M(4,\mathbb C)$ is verified explicitly via the Weyl–Brauer $\gamma$ matrices (algebra homomorphism $M(ab)=M(a)M(b)$, with $\gamma_5=i\sigma_3\otimes\sigma_3$ giving $e_5^2=-1$); idempotents $p^2=p$ and nilpotents $e_\infty^2=0$; the bivector Lie algebra $\mathfrak{so}(4,1)$ (commutator closure, Jacobi, rotor conjugation preserves Lie) and the Cartan decomposition $\mathfrak{so}(4)\oplus\mathfrak{p}$ (6+4 dimensions, Cartan involution) — seven groups of theorems promoted into the register as VII21–VII25 + VII42–VII43 (§6.3). Field inference = the five polynomial-algebra equivalences (VII20) entered in the register at §4.2c, four-layer parallelism (VII20′) at §4.2b; the exact Grover-spiral dynamics (VII30) at §5.2; PCD=ACD arithmetic-consistency divergence (VII31) at §8.7; the 32-dimensional inventory (VII27) and the AOS/SOA duality (VII28) at §8.8; wave–particle duality = poles (VII29) at §14.1b; the Kochen–Specker algebraic enumeration (VII46) at §8.6; the zero norm and the extension-field repair (VII47) at §4.2b; quantum as database query (VII48) at §8.4; the extended gate families of Classes E/I/F/G (VII44–VII45, VII49–VII50) at §6.5; the universal representation theorem (VII53) at §16.2. Measured: 62 cl41 experiment files with about 364 gates all green (50+ reports, 0 failures); the main-repo certification report is **189 suites, 185/189 PASS** (the 4 non-passing items are all pre-existing expected items); the Q15 fixed-point inference line shows 50280/50280 logits bit-level identical and 7 device–backend combinations bit-for-bit identical (corroborating evidence for the exactness discipline).

### 16.1 Hybrid-architecture experiment: Falcon-H1-1.5B hidden-state analysis

Falcon-H1-1.5B (TII, hybrid Mamba+Attention, 2048 dimensions × 24 layers) ran hidden-state extraction and generation verdicts on an RTX 2060 — verifying that the **segmented residueon field** (Mamba layers supply poles, the Attention layer supplies interfaces) is feasible on real hardware.

**PCA language separation**: PCA over the mean-pooled last-layer hidden states of three text groups (Chinese/English/code, 4 sentences each):

- PC1 variance share **92.5%** (PC2 only 3.8%)
- the Chinese cluster sits on the **positive half-axis** of PC1 (+961 to +1647)
- the English cluster sits on the **negative half-axis** of PC1 (−552 to −634)
- code is close to English but distinguishable

**Languages separate naturally in hidden-state space** — without any multimodal alignment training, the model itself already encodes different languages into different subspace regions. This is **directionally compatible** with the "grade as modality" hypothesis of §8.5 (different input types naturally map to different regions of the representation space), but it does not constitute a test of that hypothesis — language separation appears generically in the hidden states of hybrid-architecture LLMs, and there is no verified causal channel between it and the Clifford grade structure.

**Generation verdicts** (greedy, 40 tokens × 4 prompts):

| Prompt | Generation | Verdict |
| --- | --- | --- |
| The capital of France is | Paris. + follow-up Q&A | English factually correct |
| 这是一个中文测试， | coherent Chinese text (discussion of test rules) | **Chinese generation works** |
| def quick_sort(arr): | **correct quicksort implementation** | strong code capability |
| import torch | correct PyTorch import chain | code continuation normal |

**Empirical evidence for the segmented residueon field**: Falcon-H1's Mamba layers extract the residueon table (field structure) while the Attention layer acts as the interface operator (global correlation) — the language separation in the hidden-state PCA proves that the representation space produced jointly by the two components **has structure** (not random noise) and that its structural resolution suffices to support multilingual generation.

---

### 16.2 The universal representation theorem: the residue field as the operational language of structured systems

**Theorem VII53 (universal representation by the residue field)**. Any system representable as the triple $(z_k, r_k, n_k)$ (pole = position/frequency/concept, residue = amplitude/coupling/weight, order = structure/hierarchy/type) can be operated on with the gates of this paper. Specifically, the residue field $\psi(z)=\sum_k r_k/(z-z_k)^{n_k}$ is a **universal representation** for the following four classes of systems:

| System class | Pole $z_k$ | Residue $r_k$ | Order $n_k$ | Gate operations |
| --- | --- | --- | --- | --- |
| Physical systems | eigenvalues/resonance frequencies | coupling strengths/spectral weights | pole order | full A/B/C/D gate catalog |
| Information systems | concepts/data points | association weights/attention | structural hierarchy | entanglement associative memory (§8.4) |
| Graph/network systems | nodes | edge weights | connectivity order | quantum-walk gates (VII50) |
| Dynamical systems | fixed points/periodic orbits | stability indicators | bifurcation order | chaos gates (VII49) |

**Core corollary**: the gate catalog of Paper7 is not a "classicalization of quantum gates" but the **universal operational language of structured systems** — quantum gates (§3-§6) are its physical subclass, classical logic gates (C14′) its discrete subclass, topological invariants (VII44) its geometric subclass, and distributed evolution (VII45) its network subclass. The final form of "quantization is not simulation but a rigorous extension" (VII4) is: **what the residue field extends is not just quantum computing but every structure-able computation**. Boundary statement: this is a representation-theoretic-level claim (any diagonalizable operator has a spectral decomposition = a residue representation, VII31); it does not claim that every system can be residue-ized — non-diagonalizable / non-meromorphic / topologically nontrivial systems require additional structure (Jordan blocks / branch cuts / higher topology), which the algebraic framework of the gate catalog can accommodate incrementally. ∎ (The spectral decomposition theorem is standard linear algebra; the four-class system mapping is jointly supported by the §14.1 ontology comparison table + VII48 quantum-as-query + VII50 graph walks + VII49 chaos.)

---

## 17 Conclusion

1. **Phase-domain theorem**: the Fermat prime turns the entire field into a binary phase circle, and the physically universal gate set embeds bit-exactly — every Dyadic phase of a quantum circuit is reproduced with zero error.
2. **Complete quantum gate catalog**: the four-class master table of 34 entries — physically isomorphic (exact), hyperphysical linear ($10^{19}$ gates), nonlinear reversible ($10^{287199}$ gates, a principled physical forbidden zone), and structural gates (anyon/conformal/projection/damping).
3. **Commutation theorem**: quantization ⊄ simulation of quantum computing — the intersection contains the physically universal set, and each side has a part unique to it: **GF quantization is a rigorous extension of physical quantum, not its shadow**.
4. **Gate-group semantics**: the invertible alphabet (rollback/counterfactual), group closure (certifiable low-rank adaptation), phase semantics (causality/chirality/phase locking), and entanglement association (memory) — all four layers of semantics cashed out on a classical machine.
5. **Use taxonomy**: seven rents already paid, twelve mountable uses, four hardware-era exits (including an XEB zero-error benchmark generator) — the answer to "what can quantum technology do" does not lie in future hardware; half of it is already on the ledger of this classical machine.
6. **Gate = versor (VII33)**: Cartan–Dieudonné unifies the whole catalog as products of reflections — the three mechanical classes are a complete algebraic classification, H is a reflection rather than a rotation; the G5 guardrail covers the full Pin group; exactness is accounted class by class (permutation classes are field-independent).
7. **Triviality-firewall unification (VII34)**: the five detection criteria are five expressions of a single triviality invariant — what is detected is topological singularity, not numerical error; the simplest form of the Kleene fixed point = vacuum-state self-consistency.
8. **Structural fingerprint and leakage spectrum (VII35/36)**: fingerprint invariance becomes a theorem (pinned-axis repair), the leakage spectrum has both closed forms and measurements, and the dissolution of n lifts the reduction lock-in — the write discipline of the G5 slot becomes a design theorem.
9. **C14′ bit-level closed loop (VII39/40)**: classical logic gate = versor = wave-field operator, a seven-dimensional evidence chain 14/14 all green — the two columns of the unified-representation verdict table close the loop; the novelty is the compile-time invariant + the Cl(4,1)×GF(65537) bit-level closed loop, not the gate correspondence itself.
10. **Dual-track formalism (VII41)**: wave-field computation is the substance, and the residueon table (frequency-domain/spectral track) together with Clifford (space-domain/geometric track) are the uses — the engine is the residueon table, the skeleton is Clifford, with layered reuse and lossless interconversion; the alternatives (Fourier/wavelets/Padé/matrix groups/quaternions/MPS/floating-point ℂ) each return to their own posts and do not serve as the ontological representation.
11. **Methodology-trilogy interface**: membership semantics (true = membership in the admissible set), semantic fingerprinting (secure = fingerprints equal), and fourfold bit-level identity (correct = consistent across implementations) — isomorphic to this paper's gate catalog, structural fingerprint, and triviality firewall; the storage wall of period extraction (VII54) supplies the cleanest worked example for the no-speedup verdict. One public axiom: determinism is not a performance trade-off; it is the price of decidability.

---

## References

1. Nielsen, M. A., & Chuang, I. L. (2010). _Quantum Computation and Quantum Information_ (10th ed.). Cambridge University Press. — Textbook anchor for the physically universal set and gate classification (§3).
2. Gottesman, D. (1998). The Heisenberg representation of quantum computers. arXiv:quant-ph/9807006. — Symplectic representation of the Clifford group (§3 comparison) and the Gottesman–Knill boundary (§7.1, §15).
3. Aaronson, S., & Gottesman, D. (2004). Improved simulation of stabilizer circuits. _Physical Review A_, 70, 052328. — Stabilizer tableau simulation and phase qubits (§3.3b, §7.1).
4. Shor, P. W. (1995). Scheme for reducing decoherence in quantum computer memory. _Physical Review A_, 52, R2493. — Original QEC literature (§9.2, VII54).
5. Grover, L. K. (1996). A fast quantum mechanical algorithm for database search. In _Proceedings of STOC '96_, 212–219. — Original amplitude-amplification literature (§5.2, §9.1).
6. Kitaev, A. Y. (2003). Fault-tolerant quantum computation by anyons. _Annals of Physics_, 303, 2–30. — Anyons and topological gates (§6.2).
7. Freedman, M. H., Larsen, M., & Wang, Z. (2002). A modular functor which is universal for quantum computation. _Communications in Mathematical Physics_, 227, 605–622. — BQP-completeness of Fibonacci anyons and the Jones density (§6.2).
8. Bennett, C. H. (1973). Logical reversibility of computation. _IBM Journal of Research and Development_, 17, 525–532. — Reversibilization pays no thermodynamic cost (§7.1, §8.1).
9. Landauer, R. (1961). Irreversibility and heat generation in the computing process. _IBM Journal of Research and Development_, 5(3), 183–191. — The thermodynamic cost of information erasure (§8.1).
10. Toffoli, T. (1980). Reversible computing. In _Automata, Languages and Programming_, Springer, 632–644. — Universal reversible gates (§7.1).
11. Schumacher, B., & Westmoreland, M. D. (2012). Modal quantum theory. _Foundations of Physics_, 42, 918–925. — A precedent for finite-field quantum mechanics; the price of no order, no probabilities (§7.1).
12. James, J., Ortiz, J., & Sabry, A. (2011). Quantum computing over finite fields. In _Reversible Computation_, Springer. — A precedent for finite-field quantum computing (§7.1).
13. Chang, M.-C., Minic, D., & Takeuchi, T. (2013). Galois field quantum mechanics. arXiv:1309.3187. — Spins and rotations over finite fields (§7.1).
14. Doran, C., & Lasenby, A. (2003). _Geometric Algebra for Physicists_. Cambridge University Press. — The Cartan–Dieudonné theorem and versor/Pin structure (§7.1).
15. Hestenes, D., & Sobczyk, G. (1984). _Clifford Algebra to Geometric Calculus_. D. Reidel. — Pseudoscalar centrality and grade structure (§7.1, §6.3).
16. Kochen, S., & Specker, E. P. (1967). The problem of hidden variables in quantum mechanics. _Journal of Mathematics and Mechanics_, 17, 59–87. — Original no-go theorem literature (§8.6).
17. Lehmann, H., Symanzik, K., & Zimmermann, W. (1955). On the formulation of quantum field theories. _Il Nuovo Cimento_, 1, 205–225. — The LSZ reduction formula (§14.1b).
18. Trogdon, T., & Olver, S. (2016). _Riemann–Hilbert Problems, Their Numerical Solution, and the Computation of Nonlinear Special Functions_. SIAM. — IST and a rigorous version of the residue field (§6.1, §14.1).
19. Connes, A., & Kreimer, D. (1998). Hopf algebras, renormalization and noncommutative geometry. _Communications in Mathematical Physics_, 199, 203–242. — Literature endorsement for the word "Hopf" (§6.1).
20. Hebb, D. O. (1949). _The Organization of Behavior_. Wiley. — The Hebbian-learning semantics of the Δ operator (§8.6 five-operator table).
21. Jaeger, H. (2001). The "echo state" approach to analysing and training recurrent neural networks. GMD Report 148. — The origin of reservoir computing (§9.2 frozen pool).
22. Plate, T. A. (1995). Holographic reduced representations. _IEEE Transactions on Neural Networks_, 6(3), 623–641. — HRR/VSA (§9.2).
23. Nakatsukasa, Y., Sète, O., & Trefethen, L. N. (2018). The AAA algorithm for rational approximation. _SIAM Journal on Scientific Computing_, 40(3), A1494–A1522. — A singularity-native numerical engine (§9.2).
24. Carr, P., & Madan, D. (1999). Option valuation using the fast Fourier transform. _Journal of Computational Finance_, 2(4), 61–73. — An in-service checklist for residue/FFT (§14.2).
25. Peng, B., et al. (2025). RWKV-7 "Goose" with expressive dynamic state evolution. arXiv:2503.14456. — State-tracking expressivity of linear RNNs $TC^0\to NC^1$ (§7.1).
26. Harrow, A. W., Recht, B., & Chuang, I. L. (2002). Efficient discrete approximations of quantum gates. _Journal of Mathematical Physics_, 43(9), 4445–4451. — Number-theoretic SK compilation, asymptotically optimal $c=1$ (§6.2 complexity anchor).
27. [Paper1] FodaOS Unified Field Theory Series I: A unified field theory program — the residue-field ontology and physical unification.
28. [Paper2] FodaOS Unified Field Theory Series II: The arithmetic resonance computer (ARC) — a GF(p)-native computing architecture.
29. [Paper3] FodaOS Unified Field Theory Series III: Integer implementations of the Clifford+T gate set, QFT, teleportation, and QEC over GF(65537).
30. [Paper4] FodaOS Unified Field Theory Series IV: The residueon table as the sole IR of a self-hosting compiler.
31. [Paper5] FodaOS Unified Field Theory Series V: Residue-field inference and spectral decomposition.
32. [Paper6] FodaOS Unified Field Theory Series VI: A brain-inspired cognitive architecture (gate residuals / dual pools / pole surgery).

---

## Appendix A: Constants table

| Name | Value | Identity | Verified |
| --- | --- | --- | --- |
| Modulus | $p=65537=2^{16}+1$ | — | — |
| $i$ | 256 | $256^2\equiv-1$ | ✓ |
| $\sqrt2$ / $2\sqrt2$ | 4080 / 8160 | $8160^2\equiv8$ | ✓ |
| $T$ phase | 16 | $16^2\equiv i,\ 16^4\equiv-1,\ 16^8\equiv1$ | ✓ |
| $1/2$, $1/4$ | 32769, 49153 | — | ✓ |
| $1/3$, $1/16$ | 21846, 61441 | Fermat inverse | ✓ |
| $\zeta_8$ | 4096 | $4096^2=2^{24}\equiv-256=-i$, order 8 (the in-field image of $e^{-i\pi/4}$; the image of $e^{+i\pi/4}$ is 16) | ✓ |
| Primitive root | 3 | $3^{32768}\equiv-1$ | ✓ |
| $\omega$ (extension field) | $\omega^2=5$ | $5^{32768}\equiv-1$ (irreducible) | ✓ |
| $\varphi$ | $(1/2,\ 1/2)$ | $\varphi^2=\varphi+1$ | ✓ |
| $\vert\mathrm{GL}_2\vert$ | $\approx1.845\times10^{19}$ | $(q^2-1)(q^2-q)$ | ✓ |
| $\vert\mathrm{PGL}_2\vert$ | $\approx2.81\times10^{14}$ | $q(q^2-1)$ | ✓ |
| $\vert S\_{65537}\vert$ | $\approx10^{287199}$ (287,199 digits) | $p!$ | ✓ |
| CHSH | $S=2\sqrt2=8160$ | $8160^2\equiv8$ | ✓ |
| Order of 2 | 32 | $2^{16}\equiv-1\Rightarrow 2^{32}\equiv1$ (aligned with the 32 blades of Cl(4,1)) | ✓ |

## Appendix B: Formula verification record

Verification script (pure Python standard library: GF(65537) all-integer arithmetic + extension-field $\omega^2=5$ arithmetic + random 4×4 permutation/rollback sampling + power-sum identities + exactness cross-check on the fraction side + non-destructive-readout regression + Pythagorean double-angle chain + Born-bridge lifting). **52 assertions, 0 failures**. Section-by-section record (numbering follows the historical script reports; B.1 is an empty environment slot):

**B.2 Phase domain (5 items)**: $p-1=2^{16}$; 3 is a primitive root ($3^{32768}\equiv-1$); $256^2\equiv-1$; $4080^2\equiv2$ and $8160^2\equiv8$ (the exact CHSH value); $1/2=32769$, $1/4=49153$.

**B.3 Exact embedding of the physically universal set (10 items)**: $16^2\equiv i$, $16^4\equiv-1$, $16^8\equiv1$ (the order of $T$ is exactly 8); matrix multiplication verifies $T^2=S$ and $T^8=I$; $\mathrm{inv}(16)=16^7=61441$; $H^2=I$; $Y=iXZ$ exact as a matrix with $Y^2=I$; $S^2=Z$ and $ZXZ=-X$; CNOT is a permutation matrix and self-inverse.

**B.4 Gate-count metrology (4 items)**: $|\mathrm{GL}_2|=18{,}447{,}588{,}507{,}229{,}618{,}176$; $|\mathrm{PGL}_2|=281{,}487{,}861{,}743{,}616$; $65537!$ has exactly 287,199 decimal digits; $\mathrm{inv}(3)=21846$.

**B.5 CHSH (1 item)**: $S=2\sqrt2=8160$.

**B.6 Nonlinear reversible gates (3 items)**: inversion nonlinearity ($\frac1{x+y}\ne\frac1x+\frac1y$); the inverse exponent of the cube gate $e=43691$ ($3e\equiv1\bmod2^{16}$); five-sample round trip of the cube gate $(x^3)^{1/3}=x$.

**B.7 Möbius 3-transitivity (1 item)**: the program constructs a Möbius gate that sends $(5,7,11)$ simultaneously to $(100,200,300)$ and verifies point by point — a constructive proof of 3-transitivity.

**B.8 Extension field $\omega^2=5$ (5 items)**: 5 is a quadratic non-residue ($x^2-5$ irreducible); $\varphi=(1/2,\omega/2)$ satisfies $\varphi^2=\varphi+1$ bit-exactly; the Frobenius conjugation gate $\sigma(a+b\omega)=a-b\omega$ is an automorphism ($\sigma(xy)=\sigma(x)\sigma(y)$, 5 random samples) and $\sigma^2=\mathrm{id}$; $3\mid p^2-1$ (existence of $\omega_3$); an actual $\omega_3$ found (a random non-cube element $h$; $h^{(p^2-1)/3}$ generates an element of order three).

**B.9 QFT≡NTT (1 item)**: $n=8$, root 16 — circular convolution of random vectors = IDFT(DFT(u)·DFT(v)), bit-for-bit identical.

**B.10 Invertible rollback (1 item)**: a random $\mathrm{GL}_2$ gate $g$ and a random vector $v$: $g^{-1}(g(v))=v$, restored bit for bit.

**B.11 Exactness theorem (5 items)**: **pseudo-real criterion** — on the floating-point side $0.1+0.2\ne0.3$, while on the fraction side $\frac1{10}+\frac2{10}=\frac3{10}$ exactly (a demonstration of the divide between two representations of the same arithmetic); **power-sum identities** — $\sum_{x\in\mathrm{GF}(p)}x\equiv0$, $\sum_{x\ne0}x^m\equiv0$ ($m=1,2,3$, $p-1\nmid m$), $\sum_{x\ne0}x^{p-1}\equiv-1$ (the exact form of "integral = finite sum", supporting the no-divergence argument of VII13); the normalization group-theory identity $2\cdot\tfrac12\equiv1$.

**B.11b UTF-32 native encoding (4 items)**: the Unicode BMP code-point space ($2^{16}=65536$) = the number of nonzero GF elements (exactly bijection capacity); Chinese/English/code/mathematical notation all < $p$ (no overflow); GF character multiplication is invertible ("中"×"A"÷"A" = "中", restored bit for bit); Chinese = English = 1 token/element, equal encoding cost.

**B.12 Non-destructive readout (3 items)**: a constructive regression for Theorem VII12 — on an 8-pole random field, the field is **bit-for-bit identical** before and after a Born=argmax readout (the field does not collapse); two readouts of the same pole agree; 100 repeated readouts all consistent (zero randomness, zero drift). Repeatability is the first cause of "measuring accurately."

**B.13 Comprehensive cross-checks (9 items, all passing)**: **Pythagorean Grover (Theorem VII18)** — the double-angle chain of the Pythagorean angle $(4,3,5)$ is exact in GF: $\cos2\theta=7/25$, $\sin2\theta=24/25$ (7-24-25), $\cos4\theta=-527/625$, $\sin4\theta=336/625$ (336-527-625); the $N=9$ Chebyshev closed form: $\sin3\theta=23/27$, $\sin5\theta=241/243$ (the golden anchor $A_2$), $\sin7\theta=-1511/2187$ (overshoot with sign flip), all bit-exact. **Born bridge (Theorem VII17)** — the GF image of $v=25/16$, $\times 2^4\equiv25$, recovers the small-integer band (rational reconstruction). **Division of labor among primes (Theorem VII16)** — $65537\equiv2\ (\mathrm{mod}\ 5)$, $5\nmid p^2-1$ (confirming the death sentence for Fermat-family anyons); the Mersenne criterion $17/13\equiv1\ (\mathrm{mod}\ 4)\ ✓$, $31\equiv3\ ✗$. **QPE** — the $T$ eigenphase root $16$ has order exactly 8 (the phase-domain consistency of reading out $1/8$).

**B.14 Pole-surgery machine ledger**: migrated to Series Paper VI; the full machine ledger is recorded in its Appendix B.22 (five groups of pole page tables) and B.23 (seven groups of perfect-decomposition and sphere-ledger dashboards); this paper keeps no copy.

**B.15 Extended verification**: leakage-spectrum measurements — the $G_1\times G_2\to G_3$ closed form $3/5$ against observed 166/256 and 163/256; the $G_2\times G_2\to G_4$ closed form $3/10$ against observed 77/256 (theory 76.8); $\to G_5$, the zero-leakage trivial closed form (grade sum ≤4). Fingerprint invariance — must-explode cases that depend on rotatable components, and the repair by pinning the $e_1$ axis (the origin of Theorem VII35). $\zeta_8=4096$: $4096^2=2^{24}\equiv-256=-i$, $\zeta_8^4=-1$, $\zeta_8^8=1$ ($-i$, not $+i$ — the in-field image of $e^{+i\pi/4}$ is 16). The seven CGA experiments, 42 gates, all green: the $Cl(4,1)\cong M(4,\mathbb C)$ homomorphism, the tangent-sphere master formula, the Euler line, idempotent/nilpotent elements; measured 52 files (50 reports, 0 failures) with about 300 gates all green; main-repo certification 189 suites, 185/189 PASS; self*compile bootstrap 75/75 (99 stmts, 55680 poles). C14′ verdict experiments 14/14 all green: NOT $=(e_1+e_2)\cdot\mathrm{is}_2$ / CNOT $=(e_3+e*+)\cdot\mathrm{is}_2$ self-inverse and sandwich-bracket routing; sign bookkeeping with four-way dest+sign; linear extension $MV(5e_1+7e_3)\to5(-e_2)+7(-e_+)$ bit-for-bit equal; $TT^\top=I$; mutations 20/20 necessarily broken; the Toffoli 8-state permutation; the four rows of the half adder; deterministic double-run.

**B.16 Extended verification (VII20–VII56)**:

- **VII20 five equivalences**: the expansion of the scan recurrence $e(t+1)=\omega e(t)+u(t)$ is term-by-term identical to Horner evaluation; multi-point evaluation of field snapshots $E(\omega_k)=P(\omega_k)$; exact recovery by Lagrange interpolation (the premise that the cavity count ≥ the sequence length verified by assertion); membership queries $Q(s)=0$ hit exactly; the shared semantics $=\gcd(Q_1,Q_2)$ root set (the sample [11,33,44] hit exactly). Implementation note: polynomial multiplication $(z-s)$ that drops the $z\cdot P(z)$ term produces a wrong root set (including the same-type error for the Lagrange basis); after the fix, all green.
- **VII21 matrix representation**: the Clifford relations of the five matrices $\gamma_1\ldots\gamma_5$ verified pair by pair (5 square relations + 10 anticommutators); consistency of the 32 basis-blade matrices with the frozen table spot-checked on 50 random pairs; the homomorphism $M(a\cdot b)=M(a)M(b)$ exact for random sparse elements (1–5 nonzero components × 30 groups); the pseudoscalar image $\gamma_1\gamma_2\gamma_3\gamma_4\gamma_5=-i\,I_4$ checked element by element; the $\gamma$ matrices are traceless (5 items) + $\mathrm{Tr}(I_4)=4$.
- **VII22 tangent-sphere master formula**: the master formula verified on 100 random sphere pairs; external tangency, 100 groups ($d=r_1+r_2\Rightarrow\langle S_1,S_2\rangle=-r_1r_2$); internal tangency, 100 groups ($d=r_1-r_2\Rightarrow+ r_1r_2$); the power formula, 100 groups ($\langle P,S\rangle=\tfrac12(r^2-|x-c|^2)$); common tangent spheres constructed, 50 groups ($r_3=(d-r_1-r_2)/2$, triple tangency fully verified). **Implementation note**: the $-d^2$ term in the master formula is simplified first and then multiplied modulo, to avoid negative-modulus ambiguity.
- **VII23/24/25**: the circle–line dual representation — the wedge product of 4 concyclic points is zero, 50 groups; nonzero for non-concyclic points, 50 groups; the dual $C=\star(S_1\wedge S_2)$, 30 groups; line duality, 30 groups. The triangle center-line family — the circumcenter equidistant, 100 groups; the centroid on the median, 100 groups; Euler-line collinearity, 100 groups; the orthocenter $AH\cdot BC=0$, 100 groups; the area cross-product–Heron identity, 100 groups. Idempotents — $p^2=p$, $p+q=1$, $pq=0$, $f^2=f$, $(pf)^2=pf$, $e_\infty^2=e_0^2=0$, $\langle e_\infty,e_0\rangle=-1$, $\{e_\infty,e_0\}=-2$, all machine-verified.
- **VII27 32-dimensional inventory**: verification that rotors fix G5 (random rotors ×30, $RI_5\tilde R=I_5$ bit for bit); assertions of zero gate writes into the idle regions of $G_3/G_4$ (supported by the VII36 leakage-spectrum data: 64%/30% collision stomping, hence banned); the wording of the G5 checksum slot pinned as "structural checksum bit" (same account in Paper5 §16.2).
- **VII29 wave–particle = poles**: the LSZ reduction formula is a standard QFT result (Lehmann–Symanzik–Zimmermann 1955); the residue-field reading is jointly supported by the §14.1 scattering row + the VII41 spectral decomposition (poles = eigenvalues, residues = eigenprojections).
- **VII30 Grover spiral**: the 3-qubit orbit recursion $20\to176\to832\to-1280\to-3071$ machine-verified (§16 suite "3-qubit Grover orbit verdict, 19 assertions all green"); eigenvalues $\lambda=6\pm i\sqrt{28}$, $|\lambda|=8$, recursed exactly in the GF domain.
- **VII31 PCD=ACD**: the cyclotomic embedding $\phi(a)=e^{2\pi i\cdot a/p}$ is a standard homomorphism; the discrete–continuous isomorphism is made imperceptible at engineering scale by $p=2^{16}+1$ being sufficiently large; the five-operator PCD check semantics cross-checked item by item against the ARC design document (arithmetic resonance dual computer).
- **VII42 bivector Lie algebra**: cl41_bivector_lie 6/6 all green — $[B_1,B_2]$ is a pure bivector (100 random trials), the Jacobi identity, $\dim\mathfrak{so}(4,1)=10$, rotor conjugation preserves Lie (50 random trials), $[B,v]$ is a pure vector, $[B,v]=2(B\cdot v)_1$.
- **VII43 Cartan decomposition**: cl41_cartan 6/6 all green — $[\mathfrak{so}(4),\mathfrak{so}(4)]\subseteq\mathfrak{so}(4)$, $[\mathfrak{so}(4),\mathfrak{p}]\subseteq\mathfrak{p}$, $[\mathfrak{p},\mathfrak{p}]\subseteq\mathfrak{so}(4)$ (100 random trials each), $\dim\mathfrak{so}(4)=6$, $\dim\mathfrak{p}=4$, and the Cartan involutive automorphism.
- **VII46 Kochen–Specker**: the KS theorem is a standard QFT result (Kochen–Specker 1967); the GF(p) enumeration reading is given by Paper3 §3.2 — the finiteness of projection operators (at most $p^{k^2}$ many $k\times k$ matrices) guarantees exhaustive enumeration, while the physical-side 117-direction counterproof cannot be machine-rechecked.
- **VII47 zero norm**: $1+256^2=1+65536=65537\equiv 0\pmod{65537}$ verified bit for bit (Paper3 §3.2 Theorem 2); $(1,i)$ is nonzero yet has zero norm, marking the essential divide between finite-field QM and standard QM.
- **VII48 quantum as query**: the verdict suite, 5 gates, all green — the X gate's Born count $=65536$, the H gate $32768/32768$ exact half split, the Bell state $P(\text{same})=1$, the Born bridge over the $2^{16}$ lattice, deterministic fingerprints stable.
- **VII44 topological gates**: the Jones judging suite, 5 gates, PASS (§16) — trefoil/cinquefoil literature anchor values cross-checked bit for bit (polynomial evaluation at arbitrary points uses $t=16@\mathrm{GF}(65537)$; Fibonacci anchor evaluation uses $\zeta_5@\mathrm{GF}(131071)$); the three libraries — braid groups, Hopf algebras, and Fibonacci topology computation — in service.
- **VII45 distributed gates**: the incremental transmission of §9.2 is a special case; the bandwidth $O(K)$ is given by $|\Delta\psi|\propto|\Delta z_k|+|\Delta r_k|$ ($K$ = the number of changed poles).
- **VII49 chaos gates**: the chaos verdict suite 10/10 PASS (verifying zero rounding error of GF orbits); eigendecomposition = the VII41 spectral decomposition.
- **VII50 quantum-walk gates**: Grover = complete-graph walk is a special case of VII30; graph encoding is given by the pole–node map (pole = node, residue = edge weight).
- **VII53 universal representation theorem**: the spectral decomposition theorem is standard linear algebra; the four-class system mapping is jointly supported by the §14.1 ontology comparison table + VII48 quantum-as-query + VII50 graph walks + VII49 chaos.
- **CGA suite cumulative**: 52 files (50 reports, 0 failures) with about 300 gates all green + 7 new files, 42 gates (circle–line/matrix representation/tangent spheres/triangles/idempotents/midpoints/squares) + Lie algebra/Cartan decomposition, 2 files, 12 gates + quantum-as-query, 1 file, 5 gates + Jones judging, 5 gates → cumulative 62 files, about 364 gates, all green.

## Appendix C: Glossary

| Term | Definition | First appearance |
| --- | --- | --- |
| Phase domain | $\mathrm{GF}(p)^*\cong Z_{2^{16}}$: the whole field = a binary phase circle | Theorem VII1 |
| Physically isomorphic gates (Class A) | exact GF forms of hardware-realizable quantum gates | §3 |
| Hyperphysical linear gates (Class B) | linear GF gates that are physically unrealizable | §4 |
| Nonlinear reversible gates (Class C) | arbitrary invertible permutations — the forbidden zone of physical linearity | §5 |
| Structural gates (Class D) | algebraic-structure homomorphisms used as gates (Hopf/anyon/conformal/projection/damping) | §6 |
| Commutation theorem | the two gate groups commute without containing each other | Theorem VII4 |
| Gate-residual adapter | shared gate base table + individual $\Delta R$ (low-rank adaptation on the residueon table) | Paper6 §10.3 |
| Floating-point customs | the sole channel from floating point into the GF world | Paper6 §17.5 |
| Counterfactual reasoning | branch the pole table → alternate inference → diff | §8.1 |
