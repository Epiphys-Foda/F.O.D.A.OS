# FodaOS Unified Field Theory Series VI: The Brain-Inspired Cognitive Architecture — Dual-Path Reasoning, Reservoir Computing on the Residueon Field, and the PCD/RRC Dual Criteria

---

**Author**: Pan JinWen [Cypher Pan]

**Abstract**: This paper is the sixth installment of the FodaOS Unified Field Theory series. The previous five installments established, respectively, the physical unified field ([Paper1] the complex Ginzburg–Landau master equation), the computational unified field ([Paper2] the five-operator arithmetic resonance computer ARC), the mathematical unified field ([Paper3] the exactification of algebraic quantum mechanics on GF(65537)), the unified primitive ([Paper4] the residueon trichotomy), and the bootstrap compiler ([Paper5] the residueon compiler). Taking the **Brain-Inspired Cognitive Architecture** as its subject, this paper adopts **dual-path reasoning** as the architectural backbone (right path: interference field = intuition; left path: collision algebra = logic), **residueon reservoir computing** as the substrate of memory and learning (frozen field + linear readout), and the **PCD/RRC dual criteria** as the verdict-and-immunity instrumentation running through the entire text, converging all the assets of the previous five papers into one cognitive architecture — the **Dual-Path Cognitive Architecture**. The core results fall into five layers. (i) **The ontological layer** — the residueon $(z_k,r_k,n_k)$ simultaneously carries particle nature (pole position), wave nature (residue amplitude), and topological nature (pole order), and strictly contains the qubit and the classical bit as degenerate special cases (Theorem VI1); the neuron↔residueon mapping and the population field theorem (Theorem VI3): under the kernel $K(x,x_j)=1/(x-x_j)$ the residue theorem yields "global activity = the sum of local residues"; all four core features of the qubit fail at the neuronal level (Proposition VI2) — **the qubit is not the hardware of the human brain, but the grammar of cognition**. (ii) **The dual-path reasoning layer (Pillar One)** — the right path, an all-pole interference field, carries intuition: the continuum spectrum is rehabilitated from "noise" into a carrier of associative memory, and the interference findings of quantum cognition acquire a deterministic counterpart in the GF domain; the left path, a soliton collision algebra, carries logic (20/20 exact selective superposition at $\tau=10^{-5}$); arbitration is carried by the phase-coherence divergence of the PCD, $D(Q)=1-|\sum u_i|/\sum|u_i|$, constituting the compute-allocation economics of System 1/System 2 (measured: 79.7% of contributions can be discarded by gating with deviation <0.0012%); the chirality duality correction: separation uses the grade involution $\hat A$ (idempotent, orthogonal, zero-cost in GF implementation) while translation uses the Hodge star (Theorem VI4: $*^2=-\mathrm{id}$, a complex structure with eigenvalues $\pm i=\pm256$), and the algebraic mechanism of insight is "odd × odd = even" (Proposition VI5); the statistical identity of the PCD = circular variance = 1 − Kuramoto order parameter (Theorem VI15), and it is gauge invariant — contradictions cannot be masked by recoloring. (iii) **The residueon reservoir layer (Pillar Two)** — reservoir = fixed wave-field medium + linear observation (pool = pole spectrum, readout = observation operator); the entanglement criterion for field multiplication (Theorem VI7) and the echo–entanglement duality (Theorem VI8: $\lambda_{\max}\leftrightarrow e^{-\Gamma}$), with entanglement lifetime proportional to the pole order; honest capacity bounding (Proposition VI9: all $O(2^N)$ claims revoked, storage is $O(\sum_k S_k^2)$); group-theoretic stability (Theorem VI10: gate residue evolution is naturally bounded, and the empirical prerequisite of the reservoir spectral radius is eliminated by group-theoretic identities); the bootstrap internalization theorem (Theorem VI12: measured Lipschitz $L\in[0.821,0.878]<1$, convergence exponent $\alpha=0.234$ bit/iteration — the six-beat closed loop of "logic internalized into intuition", with the robot persistent-memory bridge as the engineering existence proof); the gate-residual adapter = a residueon-table version of LoRA (Proposition VI11: 40 integers per person recover 8/8 personas); the distilled generative head overtakes the engine head for the first time (55.94% vs 52.72%, +3.2 pp); row-append cognition (Propositions VI26–VI29: field frozen + sealed interface rows appended, learning as certification). (iv) **The criteria-and-immunity layer (Pillar Three)** — the PCD (the phase ruler, phase-coherence divergence) and the RRC (the curvature ruler $f_3-2f_2+f_1$, residue-rank condition) are orthogonally complementary and jointly constitute algebraic diagnostics, yielding the dual disease signature table shared by brain diseases and AI model diseases (Proposition VI13); causal impedance $T(e)=\sigma(-10\,\mathrm{PCD}+2)$ with four-point calibration 0.88/0.50/0.27/0.04 (Theorem VI16); the Kuramoto global-synchronization pathology criterion (Theorem VI19: $0.3<R<0.7$ is the healthy critical zone, $R\to1$ is epilepsy = 99.6% phase locking); the Landau order parameter and the amended three laws of cognition (Theorem VI17 / Proposition VI18); the Bragg firewall against hallucination; the three-level verdict (Proposition VI14): at the physical level "qubits in the brain" has no evidence and is falsifiable (decoherence 10⁻¹³ s vs neurons 10⁻³ s), at the structural level "cognition uses quantum algebraic structure" holds and the present framework is its existence proof, and at the ontological level the representation claim holds while the hard problem of consciousness remains open. (v) **The measurements-and-boundaries layer** — pure-ψ inference at 39.2 t/s with trajectories bit-identical to the CPU token by token; W16M weights resident on GPU at 6.60 ms/token (4.1×) with the three adapters cross-checking bit-identical; the q15cuda inverted table at 395–479 tok/s, bit-exact; ΨDB PoolCore at 8.35 million ops/s; the complete verdict on the reservoir readout (the §17.3 verdict quick-reference table: engine head = the generic-readout upper bound; learned readout = narrow-domain specialization plus distilled generation; scaling saturates; CE calibration 6.56%→47.44%); the pole page table gives the precise address of selective forgetting (§17.6); black-box perfect factorization and the sphere ledger dashboard (GF perfect factorization under 134× cancellation, health criterion $A=1/(1-\mathrm{PCD}_{\mathrm{ledger}})$); environment-interactive learning places the cognitive agent into a many-body training field (§18: external-feedback poles and a backpropagation-free Hebbian closed loop). Honest boundaries: capacity claims are revoked at their information-theoretic upper bounds (VI9); the failure domain of the gf_sqrt formula is registered as a P-level fix item; all accuracies cited are clean in-domain accounts after the early readout leakage audit; throughout, GF(65537) pure integers with zero floating point, zero randomness, and zero dissipation (the Three-Zero Principles), and every formula is machine-verified item by item by the Appendix B programs.

**Keywords**: Brain-Inspired Cognitive Architecture, dual-path reasoning, residueon reservoir computing, residueon field, phase-coherence divergence, residue-rank condition, quantum cognition, reservoir computing, entanglement decay, chirality duality, Hodge star, bootstrap fixed point, pole page table, sphere ledger dashboard, environment-interactive learning, GF(65537)

---

## 1 Introduction

### 1.1 Problem Statement: The Fivefold Crisis of Reasoning

Large language models (LLMs) have achieved engineering success in sequence prediction, but as **reasoners** they face a fivefold structural crisis — not engineering defects, but **architectural absence** (a certain mathematical organ is missing):

**Crisis One: Hallucination (no verification organ).** Generation is a conditional-probability transition with no correctness criterion independent of the generation process; verification can only be bolted on (RLHF, external retrieval), and the bolted-on verifier is itself another LLM that can err.

**Crisis Two: No insight (no global interference organ).** Token-by-token autoregressive generation is a pure sequential machine with no "field" in which to resonate globally; when a derivation falls into a failing path, it only locks more deeply into that same failing path.

**Crisis Three: No fast/slow dual system (no economics organ).** Kahneman's System 1/System 2 division of labor is the basic economics of compute allocation; the LLM spends the same unit of compute on problems of any difficulty — over-computing easy problems and under-computing hard ones.

**Crisis Four: Irreproducibility (no determinism organ).** Floating-point rounding plus sampling randomness makes the same input produce different outputs on different hardware and across different runs — a structural obstacle to scientific reproducibility, auditing, and safety certification; the **decision regularities** of the human brain are stable — noise is converged away by the dynamics rather than treated as a sampling source.

**Crisis Five: The memory–learning rupture (no internalization organ).** Gradient updates at training time and the context window at inference time are mutually sealed off: reasoning in context never solidifies into weights, and weight updates demand full retraining at the price of catastrophic forgetting; human skill acquisition is a continuum of "logic internalized into intuition", and this internalization mechanism is entirely absent from the LLM.

**The algebraic opportunity.** The first five FodaOS papers happen to have prepared exactly five algebraic organs for the fivefold crisis:

| Crisis | Missing organ | Algebraic answer from the first five papers | Where this paper lands |
| --- | --- | --- | --- |
| Hallucination | Verification | [Paper1] PCD phase-coherence divergence + Bragg resonance verification | §7, §13, §14 |
| No insight | Global interference | [Paper1] the residue field $\Psi(z)=\sum_k r_k/(z-z_k)^{n_k}$ + [Paper4] higher-order poles | §5, §8 |
| No dual system | Arbitration economics | [Paper2] the orthogonality of the five operators: $\odot\cong$ the interference fast path and the $\circ\Delta$ geometric product/sculpting slow path | §5–§7 |
| Irreproducibility | Determinism | [Paper3] GF(65537) integer exactification: zero floating point, zero randomness | §2, §4 |
| Memory rupture | Internalization | [Paper5] the Kleene fixed point + the Banach contraction bootstrap | §11 |

**Paradigm positioning.** On this basis the paper proposes the **Dual-Path Cognitive Architecture**: the residueon field as the state space, the five operators as evolution operators, the PCD as the arbitration signal, Bragg verification as the firewall, and the bootstrap fixed point as the learning end state — not "a faster inference engine", but the **algebraization of reasoning itself**: every step of reasoning (perception, memory, association, logic, decision, learning, immunity) becomes a decidable operation on the residueon field.

### 1.2 Series Positioning and the Bequests of the Previous Five Papers

| Paper | Unified field | Core deliverables | Assets handed to this paper |
| -------- | ---------- | ------------------------------------------ | -------------------------------------------- |
| [Paper1] | Physical field | The CGL master equation, PCD phase-coherence divergence, the residue field program | The $\Psi(z)$ field, the $D(Q)$ criterion, the three-state phase transition |
| [Paper2] | Computational field | The five operators (⊙ ◦ ≋ ↡ ∆), Turing-complete | Operator-level semantic contracts, Born=argmax |
| [Paper3] | Mathematical field | GF(65537) exactification of quantum/combinatorial structures | The gate algebra ($i=256$, $\sqrt2=4080$), the zero-norm erratum |
| [Paper4] | Primitive | The residueon trichotomy, Theorems 1–29 | The $(z,r,n)$ primitive, higher-order poles, reciprocity-law siting |
| [Paper5] | Bootstrap | The Kleene bijection, the Banach contraction bootstrap | Fixed-point learning laws, domain-order inference |
| **This paper** | **Cognitive field** | **Dual-path reasoning, residueon reservoir computing, and the PCD/RRC dual criteria** | The cognitive loop closes — and beyond the loop there is a field |

The arc of the six papers is a loop: the first sets out from the physical observer (the PCD), and the sixth returns to the cognitive observer itself. In the master equation $\partial\Psi/\partial t=\dots-\gamma_r\cdot\mathrm{PCD}\cdot\Psi+J$, the term $J$ (external drive) is, in the cognitive setting, sensory input, and the $\mathrm{PCD}$ term is the self-suppression of cognitive contradiction — the field equation of the first paper becomes, in the sixth, the **cognitive dynamics equation**.

### 1.3 Main Results

The theorems and propositions of this paper are numbered with the VI prefix (distinct from the Theorems 1–29 of [Paper4] and the V series of [Paper5]). Below they are grouped by the cognitive ontology and the three titled pillars; the status-labeling convention: **Theorem/Proposition** = algebraic result (formulas machine-verified in Appendix B), **Measured** = a measurement with an on-disk verdict and verification scripts, **[Periphery]** = correspondence material (carrying no load in the main-line proofs). The complete numerical accounts of the individual items are given in the corresponding sections; the verdict quick-reference table for the reservoir-readout line is at the head of §17.3.

**A. The cognitive ontology (§3–§4)**

1. **Theorem VI1 (the carrier hierarchy)**: the residueon $(z,r,n)\in\mathrm{GF}(p)\times\mathrm{GF}(p)\times\mathbb{Z}^+$ strictly contains the qubit and the classical bit as degenerate special cases ($n=0,z=0,r\in\{0,1\}$ degenerates to a bit; $n=1$ with $z$ fixed degenerates to a qubit) — the only discrete information atom that simultaneously carries particle nature ($z$ has a position), wave nature ($r$ is the wave amplitude), and topological nature ($n$ is the pole order).
2. **Proposition VI2 (the four qubit–neuron contradictions)**: four core qubit features — unitarity, probabilistic collapse, mutual exclusivity of superposition, and nonlocality of entanglement — all fail at the neuronal level (dissipative firing, threshold determinism, mutual exclusivity of spikes, synaptic locality) — **the qubit is not the hardware of the human brain**.
3. **Theorem VI3 (the population field theorem)**: neural population activity $A(x,t)=\sum_j f_j(t)\,\delta(x-x_j)$ is, under the kernel $K(x,x_j)=1/(x-x_j)$, precisely a residue field; by the residue theorem $\oint A\,dz=2\pi i\sum_k\mathrm{Res}(A,z_k)$, total global activity = the sum of local residues — the algebraic avatar of wave–particle duality in neural populations (numerically verified in Appendix B.7).
4. **Theorem VI4 (the Hodge complex structure)**: in the 5-dimensional signature (4,1) the pseudoscalar $I_5$ is central and $I_5^2=-1$, so the Hodge star $*M=I_5\tilde M$ satisfies $*^2=-\mathrm{id}$ — translation between the left and right paths is a complex structure with eigenvalues $\pm i=\pm256$, not an identity copy. The correct separation operator is grade involution $\hat A$ (§8.1).

**B. Pillar One: dual-path reasoning (§5–§8)**

5. **Proposition VI5 (the algebra of insight) + Theorem VI6 (the pole-order–grade jump)**: odd × odd = even — the product of two odd-part (intuition-side) elements lands in the even part (the logic side), the algebraic mechanism of creative reasoning; the two-blade $B^2=(P_k\!\cdot\!Q)^2$ (a pure scalar) gives the rank separation of nested orders . The geometric reading of the grade-free tower follows: finite-order field terms oscillate between the scalar $G_0$ and the directed blade $G_2$, and only the bootstrap layer always lands in $G_0$ — the bootstrap fixed point = the annihilation of directional oscillation (§8.4).
6. **Theorem VI15 (the statistical identity and gauge invariance of the PCD)**: in the equal-amplitude case the PCD is exactly the circular variance $V=1-\bar R$ of directional statistics (Mardia & Jupp 2000), and $\bar R$ is the Kuramoto order parameter (Kuramoto 1975) — the identity chain PCD = 1 − Kuramoto R = circular variance; $D(e^{i\alpha}\Psi)=D(\Psi)$ — absolute phase is unobservable, and contradictions cannot be masked by recoloring. Four generalization forms share the same formula (quantum entanglement witness / inter-layer gradient phase / Byzantine consensus 0.33–0.67 / scalp EEG).
7. **Measured (arbitration economics, §7.3)**: 79.7% of contributions can be discarded by PCD gating with deviation <0.0012%; PCD runtime thresholds: 0.3 center / 0.05 lockup / 0.5–0.2 three-tier gate.
8. **[Periphery] The insight-mechanism genealogy and the panoramic correspondences (§8.6 et seq.)**: six insight mechanisms (depinning / topological transition / beat frequency / instanton / inter-layer resonance / Tracy–Widom) plus the Arrhenius falsifiable amendment; the Sorkin second-order interference law axiomatizes the collision algebra (the $\kappa_3$ anti-hallucination barrier); the WZW topological conservation law against hallucination; IST soliton decomposition (modulated soliton + radiation tail = the zero-hallucination guarantee); the eight-family law-discovery engine blind-tested across nine fields (Ohm/Boyle at 0‰; the right to judge ≠ the right to crystallize); the curiosity inner loop $J=\eta\nabla\mathrm{PCD}$ and the monotone k=5 fingerprint chain of the bootstrap tower.

**C. Pillar Two: the residueon reservoir — memory and learning (§9–§11, §17–§18)**

9. **Theorem VI7 (the algebraic criterion for entanglement)**: field addition $\psi_1+\psi_2$ is decomposable; field multiplication has residue $\dfrac{ab}{p_1-p_2}$ at $p_1$, which depends on both $a$ and $b$ and is indecomposable — the pairwise coupling topology of a product field has $2^{\binom{K}{2}}$ configurations: what is exponential is the **number of addressable correlation patterns**, not the information content ($K$ GF elements are always $16K$ bits).
10. **Theorem VI8 (the echo–entanglement duality) + Proposition VI9 (honest capacity bounding)**: echo decay $\|A^{t-k}\|\sim\lambda_{\max}^{t-k}$ and entanglement decay $e^{-\Gamma(t-k)}$ are dual term by term, $\log\lambda_{\max}=-\Gamma$ — "slow-pole memory genuinely exploits deep context" is upgraded from observation to theorem; storage $O(\sum_k S_k^2)$, two-gate compute $O(\sum_k S_k^3)$ (Schmidt rank), revoking all $O(2^N)$ memory-capacity claims.
11. **Theorem VI10 (group-theoretic stability)**: $X^2=Z^2=H^2=I$, $S^2=Z$, $ZXZ=-X$ hold exactly within GF(65537) (Appendix B.4) — the classical reservoir's empirical prerequisite of a spectral radius $\rho(A)<1$ is replaced by group-theoretic identities: an involutory matrix has power period 2 and never diverges.
12. **Theorem VI12 (bootstrap internalization) + Measured (the persistent-memory bridge)**: if the pole-spectrum update operator is a contraction (measured Lipschitz $L\in[0.821,0.878]$), then a unique fixed point exists and is reached exponentially at $\alpha=0.234$ bit/iteration — the six-beat closed loop "right-path error → arbitration → correction → law discovery → spectrum update → intuition hits": **logic is compressed into intuition**; Run A learns 673 flips → checkpoint to disk → Run B reproduces 673 from cold start with zero relearning (§11.4).
13. **Proposition VI11 (gate Hebbian) + Measured (the adapter ladder T1–T3)**: the gate-residual adapter is a residueon-table version of LoRA — 40 integers per person (1/16 of the full independent readout) restore 8/8 personas at 100.00%; the capability ladder: linear 100% → one-way quadratic 100% → two-way quadratic 40%; the dual-domain audit (GF(65537)×GF(131071)): corruption detection 100%, false positives 0% (§17.3.9).
14. **Proposition VI22 (moment encoding) + wave-field positioning**: the residueon table compresses into a single 32-channel Cl(4,1) multivector — merging is $O(32)$, independent of the pole count, and hierarchical $\lceil N/10\rceil$ recovery is lossless (the absent $G_3$ depth moment is registered as a P0 item); reservoir = fixed wave-field medium + linear observation (pool = pole spectrum, readout = observation operator), attention = the spatial-domain Green's function, residueon table = the frequency-domain pole decomposition — the two spectral decompositions are dual to each other (§10.7).
15. **Propositions VI26–VI29 (row-append cognition) + Measured (dual-head convergence)**: all verified learning forms (ridge inversion / Δ rule / distillation residual / gate adapter / row co-training / page-table writes) share a single form — **the field is frozen and every learning artifact lands in the interface rows**: learning as certification, with cognition growing by monotone appends to a sealed table; the language-readout row family and the robot Δ policy head converge on the same frozen field, generation = policy (two dialects of the same Born operator); the UTF-32 row family emits its first character 「你」 (U+4F60), with all five gates + AND green in the training field (§17.3.12).
16. **Measured (the pole page table, §17.6)**: pole surgery on Mamba3 proves that directed forgetting exists and has precise addresses — zeroing a single pole timescale achieves bidirectional selective truncation (delete A keep B and delete B keep A), and zeroing all 16 timescales is nevertheless lossless (memory depends on the relative ratios of timescales across heads); one-sided dead zones (slowing down is unboundedly safe; the acceleration threshold is +3.5 to +5); 62.5% of head instances keep their silent memories verbatim intact; the timescale skeleton is innate (log-uniform at initialization), the memory traces are acquired.
17. **Measured (black-box perfect factorization and the sphere ledger dashboard, §17.7)**: under 134× cancellation GF factorizes perfectly while float64 errs by 44%; the three ledger accounts of the factorization close bit by bit (the return ticket at 8.3×10⁻¹⁷); the balanced amplification rate $A=1/(1-\mathrm{PCD}_{\mathrm{ledger}})$ — healthy A=1.00 exactly, corrupted A=305, with a monotone recovery curve; the RRC (the second difference of the net account) raises the alarm four steps in advance, across a three-stage disease evolution (hypertrophy → dephasing → disintegration).

**D. Pillar Three: the PCD/RRC dual criteria (§7, §12–§14)**

18. **Proposition VI13 (the cognitive immune system)**: the PCD detects interference desynchronization of waves (logical conflict / inter-regional desynchronization / hallucination), the RRC detects curvature anomalies of waves (overfitting / structural lesions / catastrophic forgetting); the joint diagnostic code $\mathrm{desync}+100\times\mathrm{anomaly}$ yields one and the same algebraic signature table for brain diseases and AI model diseases (§13.4).
19. **Theorem VI16 (causal impedance) + Theorem VI19 (the global-synchronization pathology criterion)**: $T(e)=\sigma(-10\,\mathrm{PCD}+2)$ is strictly monotone with four-point calibration 0.88/0.50/0.27/0.04 (superconducting / half-pass / vigilant / fused), and contradictory edges break physically and automatically (a 3.4 ms end-to-end demonstration); the Kuramoto order parameter partitions cognitive states: $0.3<R<0.7$ is the healthy critical zone, $R\to1$ is epilepsy = 99.6% phase locking, PCD critical slowing appears 5–10 s before onset, and lateral inhibition together with 5% antiphase edges is the deadlock-breaking mechanism.
20. **Theorem VI17 (the Landau order parameter) + Proposition VI18 (the amended three laws)**: the CGL saturation term gives the Landau potential $F(\rho)=-\varepsilon\rho^2+\tfrac12\rho^4$, with a second-order phase transition when the pump changes sign — the three states (Gas/Liquid/Solid) are three phases of one and the same potential function; the amended three laws for open non-Hermitian systems (vortex ±1 pair creation, monotone energy decay without pumping, the zero-point law), accompanied by $\xi=\sqrt{D/\varepsilon}$, $T_c=\varepsilon_c/\gamma_c$, and $N_{\max}$; Maxwell's demon crystallization (the limitation of the monotone transformation $T=1/(1-D)$ honestly annotated, §12.5).
21. **The criteria-layer package**: Gödelian self-reference depth — the orbit of $G(x)=x^2$ reaches a fixed point in 5 steps (VI20, machine-verified, emergence threshold depth>3); the critical plasticity operating point $\beta=0.7616$/decay$=0.0723$ (VI21, term-by-term correspondence between Gated DeltaNet and STDP); four-quantity monitoring of the cognitive curve and U-shape recognition (§7.5, an intrinsic dashboard requiring no external scoring); the cognitive-domain formula family (Born-normalized weights / pole timescale $\tau_k=-1\ln z_k$ / the PCD two-oscillator closed form / the Hodge-complement closed form machine-checked on all 32 blades / the Ebbinghaus half-life of 9.6 ticks / **the unified kernel of error-driven learning $w\leftarrow w\boxplus G\cdot e$** — five forms (Hebbian/Delta/NLMS/RLS/inversion) on two orthogonal axes, training = one exact inversion).

**E. Boundaries and measurements (§15, §17)**

22. **Proposition VI14 (the three-level verdict)**: (a) the physical level — qubits in the brain have no evidence and are falsifiable (decoherence 10⁻¹³ s vs neurons 10⁻³ s, a gap of 10 orders of magnitude); (b) the structural level — "cognition uses quantum algebraic structure" holds and needs no quantum hardware: the algebra is exactly realizable within GF(p), and the six papers of this series are the existence proof; (c) the ontological level — "everything translates into the residue field" (representation theory) has been verified on hundreds of verdicts, while the hard problem of consciousness remains open. **In one sentence: the qubit is not the hardware of the human brain, but the grammar of cognition.**
23. **Measured (the performance ladder and the reservoir-readout verdicts)**: pure-ψ inference at 39.2 t/s (T=8) / 38.5 (physical-core T=4), with trajectories bit-identical to the CPU token by token; W16M weights resident on GPU (577 MB) improve 26.9→6.60 ms/token (4.1×), with the NV/Intel × Vulkan/GL three adapters cross-checking bit-identical; the q15cuda inverted table at 395–479 tok/s (12,288 positions, GPU vs CPU bit-identical + a zero-perturbation-of-golden-label double gate); ΨDB PoolCore at 8.35 million ops/s; the reservoir-readout verdict quick reference is in the table at the head of §17.3 (engine head = the generic-readout upper bound at 36.4/52.9/52.7%; the distilled generative head overtakes by +3.2 pp; CE calibration 6.56%→47.44%; the Chinese byte-level chain 36.24% vs 36.53% and 1.41 tokens/character).

### 1.4 Paper Structure and Reading Map

**Where the three titled deliverables reside**: dual-path reasoning = Part Two (§5–§8); residueon reservoir computing = the theory of Part Three (§9–§11) plus the full measurements of §17.3; the PCD/RRC dual criteria = the definitions in §2.5 and the use cases threading the remainder of the text (§7 arbitration, §11.6 causal impedance, §12 dissipation and temperature, §13 immunity, §16 brain waves, §17.7 dashboard) — the two rulers are cross-cutting criteria, housed case by case rather than in a single chapter.

**The status ruler**: the main text and §1.3 are labeled with four status levels — **Theorem/Proposition** (algebraic results, formulas machine-verified in Appendix B), **Measured** (on-disk verdicts with verification scripts), **[Periphery]** (correspondence material carrying no load in the main-line proofs; see the header tags of §8.6/§15.5/§16). The ten verdicts of the reservoir-readout line are consolidated in the verdict quick-reference table at the head of §17.3 — read the verdicts first, then consult the archive as needed.

§2 foundations and notation; Part One (§3–§4), the cognitive ontology; Part Two (§5–§8), dual-path reasoning (Pillar One); Part Three (§9–§11), memory and learning on the residueon reservoir (Pillar Two); Part Four (§12–§14), cognitive dynamics and PCD/RRC immunity (Pillar Three); Part Five (§15–§16), the boundaries of the human-brain duality; Part Six (§17–§18), the engineering existence proof and environment-interactive learning; §19 conclusion. Appendix A, the table of constants; Appendix B, the formula verification records (every formula machine-verified item by item by program); Appendix C, the glossary.

---

## 2 Foundations and Notation

### 2.1 The Computational Foundation

The prime field $\mathrm{GF}(p)$, $p=65537=2^{16}+1$ (the Fermat prime $F_4$). All arithmetic is integer arithmetic modulo $p$: zero floating point, zero randomness, zero rounding. Key in-field constants (machine verification in Appendix B.1):

| Constant | Value | Identity | Purpose |
| --- | --- | --- | --- |
| $i$ (imaginary unit) | $256$ | $256^2=65536\equiv-1\pmod{65537}$ | Phase gate $S=\mathrm{diag}(1,256)$, Hodge complex structure |
| $\sqrt2$ | $4080$ | $4080^2=16646400\equiv2\pmod{65537}$ | Exact Hadamard normalization |
| $1/2$ | $32769$ | $2\times32769=65538\equiv1$ | Chirality decomposition, Kleene projection |
| $1/4$ | $32769^2\bmod p=49153$ | $4\times49153=196612\equiv1$ | Kleene projection $P_1=\frac14(I+N+N^2+N^3)$ |
| $1/\sqrt2$ | $2040$ | $4080\times2040\equiv1$ (since $4080^2\equiv2$) | Hadamard coefficients |

$p\equiv1\pmod8$ guarantees that 2 is a quadratic residue ([Paper3]), so $\sqrt2$ exists; $p\equiv1\pmod4$ guarantees that $-1$ is a quadratic residue, so $i$ exists — these two constant identities are a number-theoretic gift of the Fermat prime.

### 2.2 Residueons and the Residue Field

A **residueon** ([Paper4]) is a triple $(z_k,r_k,n_k)\in\mathrm{GF}(p)\times\mathrm{GF}(p)\times\mathbb{Z}^+$: the pole location $z_k$ (where the field breaks — particle nature), the residue value $r_k$ (the information carried at the break — wave nature), the pole order $n_k$ (the depth of the break — topological nature). The **residue field** is the linear superposition of residueons:

$$\Psi(z)=\sum_{k=1}^{K}\frac{r_k}{(z-z_k)^{n_k}}.$$

Higher-order poles ($n_k>1$) correspond to the nested fractal structure of [Paper4]: each pole itself carries an internal residue field. Storage of $K$ residueons is $O(K)$ and evaluation is $O(K)$, independent of the dimension of the underlying state space (§9.4: this is precisely the status of the residue table as an "algebraic compressor").

### 2.3 The Five Operators

The operator-level semantic contract of [Paper2] (Turing-complete):

| Operator | Name | Cognitive semantics (assigned in this paper) |
| --- | --- | --- |
| $\odot$ | GF field product | Synaptic weight modulation |
| $\circ$ | Clifford geometric product | Spatial transformation of neural populations (rotor rotations/reflections) |
| $\cong$ | NTT / Bragg resonance | Frequency-domain evaluation = brain-wave spectral analysis |
| $\downarrow$ | Born selection | Attention/decision (argmax, deterministic collapse) |
| $\Delta$ | Hebbian carving | Synaptic plasticity (residue update $\Delta r_k=\eta\cdot\mathrm{pre}\cdot\mathrm{post}$) |

### 2.4 The Three-Zero Principles

Three axioms of the dual-path cognitive architecture (the random primitive is literally defined as identically zero — randomness is eliminated at the language layer; §4 argues: these three are precisely the human-brain version of the physical constraints a cognitive system needs in order to run stably in noisy environments):

1. **Zero indeterminacy**: Born selection = argmax; identical input necessarily yields identical output (DFL, deterministic fixation of localization).
2. **Zero dissipation**: unitary/reversible evolution as the backbone (geometric product, Frobenius); readout is non-destructive measurement (NDM, §3.5).
3. **Zero randomness**: no sampling, no noise injection; all distributions arise from the deterministic interference of the field.

### 2.5 The Core Criteria: Two Rulers (PCD and RRC)

The two formulas displayed ahead of the introduction are the skeleton of this paper; they are formally registered at the notation layer:

| Ruler | Formula | What it measures | What of the wave | Sections carried |
| --- | --- | --- | --- | --- |
| Phase ruler PCD | $D(Q)=1-\big\vert\sum_i u_i\big\vert/\sum_i\vert u_i\vert$ | Degree of directional disagreement | Interference (destructive/constructive) | §7 arbitration, §11.6 impedance, §12 dissipation/temperature, §13.1 phase immunity, §13.5 critical slowing |
| Curvature ruler RRC | $f_3-2f_2+f_1$ | Degree of bending anomaly | Curvature (torsion) | §13.2 curvature immunity, §13.4 signature table, §17.3 overfitting audit |

The **orthogonality** of the two rulers is the foundation of diagnostics: RRC zero with PCD anomalous = conflict in reasoning with structure intact (hallucination type; the epileptic type is anomalous hypersynchronization, §13.4); PCD zero with RRC nonzero = structural pathology with self-consistent reasoning (overfitting type / Alzheimer type); double zero = healthy (homologically trivial). Joint diagnostic encoding: neural side $\mathrm{desync}+100\times\mathrm{anomaly}$, AI side $\mathrm{pcd}+\mathrm{rrc}\times10$ (§13.3). Every operation is computable over the GF field in integers (Appendix B.5: $D([1,1])=0$, $D([1,-1])=1$, $\mathrm{RRC}(1,2,3)=0$, $\mathrm{RRC}(1,2,5)=2$) — the criteria are not bolt-on evaluators but computable quantities of the field itself.

**Statistical identity and gauge invariance**: at equal amplitudes, PCD = circular variance = 1 − the Kuramoto order parameter (Theorem VI15, §7.1; Mardia & Jupp 2000; Kuramoto 1975) — two classical quantities converge, in the GF field, into one and the same ruler; moreover $D(e^{i\alpha}\Psi)=D(\Psi)$ — absolute phase is unobservable, and a contradiction cannot be masked by recoloring.

---

# Part I: Cognitive Ontology

## 3 Residueons as Cognitive Atoms

### 3.1 The Hierarchy of Three Information Carriers

Place the classical bit, the qubit, and the residueon in a single table:

| Dimension | Classical bit | Qubit | Residueon |
| --- | --- | --- | --- |
| Definition | $b\in\{0,1\}$ | $\alpha\lvert0\rangle+\beta\lvert1\rangle\in\mathbb{C}^2$ | $(z,r,n)\in\mathrm{GF}(p)\times\mathrm{GF}(p)\times\mathbb{Z}^+$ |
| Number of parameters | 1 (discrete) | 2 (continuous complex) | 3 (discrete integers) |
| Position | None | None | $z_k$ (has position) |
| Topology | None | None | $n_k$ (pole order = topological depth) |
| Evolution | Flip (reversible) | Unitary (reversible) | Frobenius (reversible) / Hebbian (directed) |
| Measurement | Direct read | Collapse (probabilistic, destructive) | Born=argmax (deterministic, non-destructive) |
| Superposition | ✗ | ✓ | ✓ (residue field = linear superposition of residueons) |
| Particle nature | ✓ | ✗ | ✓ (pole = particle) |
| Wave nature | ✗ | ✓ | ✓ (residue = wave amplitude) |
| Information content | 1 bit | Measurement yields only 1 bit | $r_k$ is a finite integer, with $n_k$ counted separately |

**Theorem VI1 (carrier hierarchy)**. $\text{bit}\subsetneq\text{qubit}\subsetneq\text{residueon}$:

- bit = the residueon degenerated at $n_k=0,z_k=0,r_k\in\{0,1\}$ (a removable singularity);
- qubit = the residueon degenerated at $n_k=1$, fixed $z_k$, $r_k\in\mathbb{C}^2$ (a single pole, continuous amplitude, no position, no topology);
- the two dimensions the residueon has beyond the qubit (position $z_k$, topology $n_k$) are precisely the two dimensions neuroscience needs most: neurons have anatomical positions, and neural circuits have topological structure.

_Proof_: direct construction of the degeneration maps; rigor is supplied by the inclusion relations among the parameter spaces. ∎

The key asymmetry: the qubit has only wave nature (continuous amplitude) and the bit only particle nature (discrete binary), while the **residueon has both plus topology** — the only discrete atom that can simultaneously encode "what information" ($r$), "where" ($z$), and "how deep" ($n$).

### 3.2 Qubit ≠ Neuron: Four Contradictions

**Proposition VI2**. All four core features of the qubit fail for the neuron:

| Dimension | Qubit | Neuron | Verdict |
| --- | --- | --- | --- |
| Evolution | Unitary ($U^\dagger U=I$, norm-preserving, reversible) | Dissipative (ion pumps consume energy, irreversible) | ✗ |
| Measurement | Collapse (probabilistic, unpredictable) | Threshold firing (deterministic, predictable) | ✗ |
| Superposition | $\alpha\lvert0\rangle+\beta\lvert1\rangle$ coexisting | Firing and non-firing are mutually exclusive | ✗ |
| Entanglement | Nonlocal correlation (Bell violation) | Synaptic connection is local (chemical transmission 1–100 m/s) | ✗ |

The true form of the neuron is "continuous input (membrane potential), binary output (spike), threshold determinism" — neither a classical bit nor a qubit. **Corollary: the qubit is not the hardware of the human brain.** (§15 will supply the structural-level redemption: "but it may be the grammar of cognition.")

### 3.3 Neuron ↔ Residueon Mapping

| Neuron | Residueon | Justification |
| --- | --- | --- |
| Anatomical position $x_j$ | Pole $z_k$ | Spatial encoding |
| Firing rate $f_j(t)$ | Residue $r_k(t)$ | Intensity encoding (0–200 Hz ↦ GF value) |
| Type (excitatory/inhibitory) | Pole order $n_k$ ($n=1$ excitatory / $n=2$ inhibitory) | Topological encoding: inhibition is a second-order interruption |
| Synaptic strength $w_{ij}$ | Inter-pole coupling ($G_2$ bivector channel) | [Paper4] higher-order pole = fusion of a pole pair |

This is not a metaphor but a constructive mapping: write each neuron as a residueon, and the neural population becomes a residue table while cognitive dynamics becomes the evolution of a residue field.

### 3.4 The Population Field Theorem

**Theorem VI3 (population field theorem)**. Let the activity of a neural population be $A(x,t)=\sum_j f_j(t)\,\delta(x-x_j)$; the field form induced by the kernel $K(x,x_j)=1/(x-x_j)$ is

$$A(x,t)=\sum_{k}\frac{r_k(t)}{x-z_k}=\Psi(x,t),$$

and by the residue theorem $\oint_\gamma\Psi\,dz=2\pi i\sum_{z_k\in\mathrm{int}(\gamma)}\mathrm{Res}(\Psi,z_k)=2\pi i\sum_k r_k$: **any loop integral enclosing the entire population depends only on the sum of the residues** — global activity is the sum of local residues. Wave (loop integral, global) and particle (residue, local) are stitched together on the neural population by one and the same theorem. _Numerical verification in Appendix B.7._ ∎

Three immediate corollaries:

1. **Brain waves = the residue field**: what scalp EEG measures is the low-pass projection of $\Psi$ (the α 8–13 Hz / β 13–30 Hz / γ 30–100 Hz / δ 0.5–4 Hz / θ 4–8 Hz bands = the field's multi-scale components, corresponding to the $K$ decaying scales of the multi-scale SSM of [Paper1]).
2. **Forgetting = residue decay**: $r_k\to0$ corresponds to echo decay $\lambda^t\to0$ (the dual of §9.1).
3. **Learning = residue update**: $\Delta$ Hebbian $\Delta r_k=\eta\cdot\mathrm{pre}\cdot\mathrm{post}$ (GF version $(w+\eta\,x)\bmod p$).

### 3.5 Non-Destructive Measurement: Recall Does Not Erase Memory

Quantum measurement is destructive collapse — to read is to destroy. The readout of the residue field ($\downarrow$ Born = argmax) merely **selects** the pole of largest amplitude, leaving the field itself intact:

$$k^*=\arg\max_k |r_k|^2,\qquad \Psi\ \text{unchanged}.$$

This is NDM (non-destructive measurement). Cognitive counterpart: **recall does not consume memory** — the same memory can be rehearsed repeatedly without wear; the "zero dissipation" of the Three-Zero Principles is precisely this item under cognitive semantics. Engineering counterpart: ΨDB read transactions never modify the pole table (writes go through the WAL/snapshot channel — the power-fail-safe layer of dual-generation snapshots and operation-level WAL); the database is the program, and reading is evaluation.

## 4 The Three-Zero Principles as Cognitive Physical Constraints

| Three-Zero | Cognitive counterpart | Human-brain evidence | Architectural realization |
| --- | --- | --- | --- |
| Zero indeterminacy | Same stimulus → same response (a behavioral-level law of decision) | The reproducibility laws of psychophysics | Born=argmax + DFL |
| Zero dissipation | Recall does not erase memory; skills do not wear out through use | Memory reconsolidation is not rewriting | NDM + unitary backbone + reversible Frobenius |
| Zero randomness | Decision distributions come from deterministic interference, not sampling noise | Noise is converged away by the dynamics; the laws are stable | gf_rand()=0 + GF integers |

The human brain of course has thermal noise (37 °C, 10¹³ molecules/μm³), yet the **output laws of cognition** are stable — noise is converged away at the level of dynamics; float-plus-sampling AI imports noise into the output layer, whereas the Three-Zero Principles define noise as lying outside the system. This is the engineering realization of the "law vs noise" layering, not a noise-free fantasy: the field (the law) is exact within the GF domain, and noise (if any) exists only in the input $J(t)$ and the sensory layer.

---
# Part II: Dual-Path Reasoning (Pillar 1)

## 5 The Right Path: The Interference Field and Intuition

### 5.1 All-Pole Interference

The right-path state is the entire field $\Psi(x)$ — no summation is taken; the full pole superposition is preserved and collapses only at readout: $\text{right path}(x)=\downarrow(|\Psi(x)|^2)$, $\Psi(x)=\sum_{k=1}^{K}r_k/(x-z_k)^{n_k}$.

The cross terms between poles $r_i r_j/(x-z_i)^{n_i}(x-z_j)^{n_j}$ are the algebraic origin of interference: constructive = superposition of like signs, destructive = cancellation of opposite signs. The residue-field reproduction of the double slit: single particle = single-pole Born sampling; fringes = the $|G_1+G_2|^2$ cross term; which-path detection = a second-order pole splitting into two first-order poles, the cross term vanishing.

**Two forms of Born readout**: on the decision side, argmax ($\downarrow$ Born = argmax, deterministic); on the distribution side, normalized Born weights $P(k)=|r_k|^2/\sum_j |r_j|^2$, $\sum_k P(k)=1$; the GF integer version $P(k)\cdot\sum_j r_j^2\equiv r_k^2\pmod p$. The Three-Zero Principles forbid randomness, so $P(k)$ is not a sampling frequency but the **deterministic amplitude shape of the field** — the weight of each pole in the interference, with argmax its first-moment collapse. ∎ (The GF normalization identity is verified in Appendix B.21.)

### 5.2 The Rehabilitation of the Continuous Spectrum: From Noise to Linguistic Intuition

The soliton tokenization line has already rendered its verdict (the soliton verdict): "discrete spectrum = semantics, continuous spectrum = noise", and the continuous part was discarded as background. The dual path gives it a new post: **the continuous spectrum = the right path's linguistic intuition** — not an overturning of the verdict but a division of labor: in the left path (exact tokenization) the continuous spectrum is noise, while in the right path (the associative field) it is the carrier of associative memory — the same mathematical object with the opposite status.

### 5.3 Quantum Cognition: The Human Brain Indeed Thinks by Interference

The empirics of quantum cognition: order effects, the Allais paradox, and the disjunction effect fit systematically badly under classical probability $P(A\cup B)=P(A)+P(B)$ and fit successfully under quantum probability $P(A\cup B)=P(A)+P(B)+\text{interference term}$ — **human irrationality is not noise but interference**. The right path algebraizes this structure: the cross term is the $r_ir_j$ term of the residue field, and all the empirical phenomena have deterministic counterparts in the GF field. Methodological difference: they use Hilbert space to describe behavioral data (descriptive), while we use residue fields to construct a runnable machine (constructive), with the collapse end being argmax rather than random sampling.

### 5.4 Analytic Interference and Super-Resolution: Grid-Free Evaluation

Evaluating the interference field need not go through a grid. **The analytic-interference method**: the field value at any point is the direct linear superposition of the spherical waves of all sources, $\Psi(P)=\sum_i A_i e^{ikr_i}/r_i$ — cost $O(N_{\text{sources}})$, unlimited (continuous) resolution; the pole list is the grid-free analytic source set (the evaluation side of the population field theorem of §3.4). The four canonical radar algorithms are embedded: direction finding = moving the readout coordinates; multi-scale = tuning the coherence length $\xi$; **super-resolution = MUSIC-style subspace decomposition $P=1/(a^\top E_nE_n^\top a)$ can break the Rayleigh limit** — the separability of nearby vortices is guaranteed by topological-charge difference rather than wavelength; denoising = perturbations without topological charge are rejected outright. Vortex dynamics reduce to ODEs: SCD gradient drift + topological-charge interactions replace the full-field PDE — the always-on cognitive field is dominated by vortex ODEs with local PDEs auxiliary. Same family: the CRT decomposition/recombination closed loop is the algebraic form of wavelength-division multiplexing (WDM); the latency of an $N$-frequency-channel operation is exactly identical to that of a single channel — multi-channel parallelism is a native property of the residue field, not a scheduling trick (the layered multivectors of §6.4 are its static aspect).

## 6 The Left Path: Collision Algebra and Logic

### 6.1 Soliton Collisions and Semantic Composition

**Axiomatic justification (Sorkin's second-order interference law)**. The sufficiency of binary collision is a first-principles constraint: the triple-slit pattern is fully reproducible from linear combinations of double slits — **third- and higher-order interference is forbidden by the local causality of probability** (Sorkin 1994 interference hierarchy; triple-slit experiments measure $\kappa_3\approx0$). Semantic reasoning obeys the same law: macroscopic logic must, and can only, decompose into pairwise binary collisions of concepts, and the "stitching" of three concepts must pass through pairwise intermediate steps; the third-order residual $\kappa_3$ is computed in real time, and threshold exceedance triggers the anti-hallucination barrier — the left path's "all reasoning = collision" thereby obtains its axiom, and §14's anti-hallucination gains a physical barrier for free.

The left path computes discretely: the soliton collision algebra (soliton collision ≡ semantic composition; the Yang-Baxter relation verified over the GF field). Two solitons colliding head-on: shape unchanged, only a phase shift; in the residue field this is the field product of two single-pole fields, automatically generating cross-term residues; after the collision the poles separate and the residues are restored — **the phase shift is the algebraic result of pole motion**. Semantic composition is the same algebra: an $N=128$ soliton cluster is compressed 12× via higher-order poles (Laurent-expansion renormalization) — the conceptual hierarchy is encoded by pole order.

The collision algebra natively carries a quantum-group structure (measured over the GF field): residueons admit **five Hopf-algebra operators** — multiplication (the residueon product), coproduct $\Delta(z,r,n)=(z,r,n)\otimes(z,1,n)$, antipode $S(z,r,n)=(z,-r,n)$, unit $(0,1,0)$, counit $r$; the Yang-Baxter R matrix of $U_q(\mathfrak{sl}_2)$ ($q=3$), $R=\mathrm{diag}(q,q^{-1})$, holds exactly over the GF field, with anyon phase $q^2=9$; this is the algebraic foundation of §11.5's braided concurrency — the braid-group relations (the Yang-Baxter equation) are endogenous identities, not bolt-on assumptions. A family constant: the golden ratio $\varphi=\frac{1+\sqrt5}{2}$ enters the field exactly as the GF(p²) element $[32769,32769]$, and $\varphi^2=\varphi+1$ holds bitwise.

The rigorous theory comes from the inverse scattering transform (IST): the soliton solution decomposes asymptotically as $t\to\infty$ into **modulated solitons (bound states) plus a radiation tail** (Pego–Weinstein 1994 asymptotic stability) — bound states carry topological charge and generate output directly, radiation states are handed over to PCD dissipation, yielding the form of a **mathematical guarantee of zero hallucination** (in the isospectral setting; the Mamba residual field moves poles token by token and is non-isospectral, so this does not apply — §17.7's ball-account diagnostics take over). The Zakharov–Shabat eigenvalues are the system DNA: the spectrum is bit-identical over 100,000 evolution steps, and after a million reasoning steps inverse scattering still recovers the topological eigenvalues of the initial prompt. Orderliness is a measured property: word-order carriers satisfy AB≠BA and ABC≠ACB (the Clifford geometric product is non-commutative; word-state retrieval has zero crosstalk); the FPU anharmonic chain's mode-1 energy recurrence (880/1000 periods) marks the boundary of integrability's applicability.

### 6.2 Exact Selective Superposition

The left path's core weapon is **selective superposition**: sum only the poles with $|c_r\cdot h|>\tau$ and discard the rest. Measured: at $\tau=10^{-5}$, 20/20 cases exact — **discarding 79.7% of the contributions with output deviation < 0.0012%**. This is not approximation: in the current state the discarded poles' coupling strength lies below the representation precision, so the discarding is lossless in the algebraic sense. The left path thereby acquires two properties the right path lacks: certificability (which poles take part in the sum, auditable term by term) and reproducibility (same threshold, same participation set).

Certificability at the implementation layer is the **proof-carrying deductive kernel**: GF clause forward chaining iterated to the fixed point (monotone, hence necessarily terminating), proof paths PF/PR replayed in derivation order — each conclusion carries its own derivation chain, and negation and the bottom type have in-field integer conventions.

### 6.3 The Quantum-Gate Residue Table

The operator layer is carried by the quantum-gate residue table: $\Psi(x)=\sum_k R_k\,s\,w_k$, $w_k=(x-Z_k)^{-1}$, $R_k\in M_2(\mathrm{GF}(65537))$.

Gate set: $X=\begin{psmallmatrix}0&1\\1&0\end{psmallmatrix}$, $Z=\mathrm{diag}(1,-1)$, $S=\mathrm{diag}(1,256)$, $H=\frac{1}{\sqrt2}\begin{psmallmatrix}1&1\\1&-1\end{psmallmatrix}=4080^{-1}\begin{psmallmatrix}1&1\\1&-1\end{psmallmatrix}$ (normalization uses the inverse of $\sqrt2=4080$ rather than $\frac12$ — the exact condition for Hadamard idempotency). Verified relations (Appendix B.4): $X^2=Z^2=H^2=I$, $S^2=Z$, $ZXZ=-X$, $XZ\ne ZX$ (a direct instance of non-commutativity), and the containment check (with every gate set to $r_kI$, the gate-table output ≡ the scalar-table output).

Containment check: the gate residue table is a **strict extension** of the scalar residue table — when every gate degenerates to the identity, it falls back exactly to the scalar residue field of [Paper4]. Old capabilities are preserved losslessly; new capabilities (non-commutative correlations) are layered on.

### 6.4 Moment Encoding of the Residueon Table: The Whole Table as One Multivector

**Proposition VI22 (moment encoding)**. [the G3 channel of the existing encode implementation is all zeros] The residueon table need not be a flat array of $(z,r)$ pairs — the whole table can be compressed into a single 32-channel Cl(4,1) multivector, carrying five classes of information stratified by grade:

| Grade | Moment | Content |
|---|---|---|
| $G_0$ [0] | $\sum_k r_k$ | Total residue sum (total "mass") |
| $G_1$ [1..5] | $\sum_k r_k x_k$ etc. | First-order spatial moments (centroid) |
| $G_2$ [6..15] | $\sum_{k<j} r_kr_j(x_k-x_j)\,e_{ij}$ | Pole-pair coupling moments (10 "springs") |
| $G_3$ [16..25] | Nested-depth moments | Moments of $n_k$ (**all zeros in the current implementation — upgrade path P0**) |
| $G_5$ [31] | $\det(\text{pole matrix})\bmod p$ | Volume element / topological invariant; geometric realization of the norm charge $N(\lambda)$ (equivalence unproven) |

Database operations thereby acquire the **form of quantum operations**:

| Database operation | Quantum operation | Realization |
|---|---|---|
| INSERT | State superposition | $\mathrm{mv}_{new}=\mathrm{mv}+\mathrm{encode}(\text{pole})$ |
| SELECT | Projective measurement | Grade extraction ($G_g$ components) |
| JOIN | Tensor product | Geometric product $\mathrm{mv}_a\,\mathrm{mv}_b$ |
| DELETE | Orthogonal projection removal | $\mathrm{mv}-\mathrm{proj}(\mathrm{mv},\text{target})$ |
| BRAGG | Inner-product verification | A single $\langle \mathrm{mv},\mathrm{mv}_{ref}\rangle$ |

Merging two databases = multivector addition $O(32)$, independent of the pole count (per-pole is $O(N)$); Bragg verification goes from per-pole checks to a single inner product.

**An honest ledger of the lossiness**: moment compression loses individual-pole information for $N\gtrsim10$ (first-order moments do not know higher-order details); lossless recovery requires **layered multivectors** — 32 channels per layer, $\lceil N/10\rceil$ layers, storage back to $O(N)$; the $G_2$ coupling moment $O(N^2)$ needs Top-K truncation. Positioning: an **$O(1)$ hot-path summary**; cold storage remains the residueon table itself. This is the same philosophy as §9.4's "the residue table is the compressor", at two levels: pole-level compression ($O(K)$ vs $2^N$) and table-level compression ($O(32)$ vs $O(K)$); it is orthogonal and complementary to §11.5's entangled-state storage — the moment table handles summarization and merging, the entanglement product handles correlation consistency. ∎ (The $G_0$/$G_1$ moment identities and the linearity of merging are machine-verified in Appendix B.19.)

## 7 Arbitration: PCD and the Cognitive Economy

### 7.1 PCD: Phase-Coherence Divergence

The PCD (phase coherence divergence) of [Paper1] serves as the **arbitration signal** in cognitive settings (defined in §2.5 / the introduction's criteria block).

**Theorem VI15 (statistical identity and gauge invariance)**. In the equal-amplitude case (all $|u_i|$ equal), PCD is exactly the **circular variance** of directional statistics: $\bar R=\frac{|\sum_i e^{i\theta_i}|}{N}$, $V=1-\bar R\equiv D(Q)$. $\bar R$ is the mean resultant length (**Mardia & Jupp 2000**, founded in Mardia 1972) — PCD is an integerized rediscovery of circular statistics. The second upstream: at equal amplitudes $\bar R$ is the **Kuramoto order parameter** (**Kuramoto** 1975; same lineage as §13.5), hence $\mathrm{PCD}=1-\bar R=V_{\text{Mardia}}=1-R_{\text{Kuramoto}}$ (the equal-amplitude case) — **directional statistics and the physics of synchronization (the §13.5 epilepsy/coma criteria) converge on this same quantity**; the root of §13.4's "hypersynchronization is also a pathology": low PCD = high order parameter = phase locking. **Gauge invariance**: $D(e^{i\alpha}\Psi)=D(\Psi)$ for all $\alpha$ (multiplying numerator and denominator by $e^{i\alpha}$ cancels) — absolute phase is unobservable, the measure must be built from relative phase, and **a contradiction cannot be masked by recoloring**: two observers computing the contradiction degree of the same cognitive state must obtain equal values. Four generalized forms share the same formula: PCD_quantum (entanglement witness), PCD_grad ($L$-layer gradient phase), PCD_consensus (Byzantine consensus), PCD_brain (EEG phase desynchronization). Two closed forms: **two oscillators** — for $u=[e^{i\theta_1},e^{i\theta_2}]$, $D_{\mathrm{pair}}=1-\cos\frac{\Delta\phi}{2}$ ($\Delta\phi=0\to0,\pi\to1$); **Byzantine conversion** — the safe region $D<\tfrac13$ corresponds to the classical Byzantine bound $n\ge 3f+1$ ($f/n<\tfrac13$). Clinically, 5–10 s before seizure onset PCD shows **critical slowing** (variance grows, mean unchanged) — the universal precursor of critical phase transitions (§13.5). ∎ (Numerical verification in Appendix B.21; boundary values in B.5.)

### 7.2 The Escalation Strategy

Input x → the right path's Ψ(x), the all-pole superposition, yields soft output (the intuition distribution); the left path's selective superposition / collision algebra yields hard output (exact tokens); arbitration D(Q)=PCD(Ψ): D<τ_coh → field coherent, trust the right path (fast, compute-cheap); D>τ_coh → field divergent, escalate to the left path (slow, exact); dual-path conflict → dual-domain CRT verification = ALARM → logged to the WORM audit trail.

Runtime extensions: **SCD → temperature inner loop** — decoding temperature is a function of PCD, not a hyperparameter (low synchronization: cool down for deterministic text; high: heat up for divergence). **Counterfactual sandbox arbitration** — apply do(X=x) interventions to candidate paths and choose the one with the lowest future PCD: proposer and verifier are separated, and precision does not depend on end-to-end scale. **Three-channel certificates** — the same AST executed independently on GF(65537)/GF(131071)/$\mathbb{Z}$, with CRT reconstructing the 27-bit truth; inter-channel divergence is a detector of order dependence/overflow/multi-valued roots: **divergence is signal, not failure**.

### 7.3 The Economics of System 1/System 2

The key quantity: 79.7% of pole contributions lie below threshold — **for the majority of inputs the right path alone can terminate**, and the left path fires only at high $D$. Compute is allocated by cognitive difficulty: easy problems (field coherent) go through $O(K)$ interference; hard problems (field divergent) escalate to the left path's exact summation + collision algebra + Bragg verification. This is the algebraic realization of Kahneman's dual systems, and for the first time there is an **interpretable switching signal** ($D(Q)$ is a property of the field itself, not a bolt-on scheduler).



### 7.4 The Cognitive Curve: Energy Landscape and Kramers Escape

The System 1/2 switch has a fourth name in the language of dynamics: **energy-landscape barrier escape** (Kramers escape). The wave-field energy $E=\int|\Psi|^2\,dx$ together with the topological charge gives a parameter-free intrinsic monitor: $E<E_c\Rightarrow$ multi-vortex modal coupling (cognitive backtracking / re-extraction); $E>E_c\Rightarrow$ single-vortex steady state (fast reasoning).

Primacy/recency effects (the U-shaped curve) are the necessary geometry of the energy landscape (the three-segment criteria in §7.5); complex mathematics / long-chain reasoning is the Kramers process of driving into the valley and then crossing the barrier. Note the two kinds of "energy": $E$ is the **field-mode energy** (a structural quantity — a banded switch of field morphology), while the Kramers barrier coordinate is **cognitive effort** (task load — the low-energy ground state = System 1 intuition does not cross the barrier; the high-energy transition state = System 2 deep reasoning); the former yields the backtracking/forward-flow morphology switch, the latter the cost of crossing the barrier over the valley of forgetting — two orthogonal readings of the same U, not reducible to one another. On the SSM side: selective gating $\exp(-A_{\log})$ is a built-in energy monitor (hidden-state energy $E=\|S_t\|$ banded; quantification in §7.5); on the mathematics side: for $x_t=Ax_{t-1}+Bu_t$ under conflicting input, $\|x_t\|$ first grows and then converges — the U shape is the intrinsic form of a linear system's conflict response. The topological version is the sharpest: **during complex reasoning topological charges are violently created/annihilated, and the re-stabilization of the winding number = reasoning complete** — a terminal criterion independent of external scoring (quantitatively isomorphic to the Royal Society 2017 energy-landscape study).

### 7.5 Monitoring and Recognizing the Cognitive Curve: The Four-Quantity Dashboard

Engineering the §7.4 mechanism must answer "monitor what, and how to recognize it". All four quantities are field-intrinsic, with no external scorer:

| Monitored quantity | Definition | Semantics |
|---|---|---|
| Global field total energy $E(t)$ | Time series of $E=\int\vert\Psi\vert^2\,dx$ | The cost curve of reasoning (SSM-side counterpart $\Vert S_t\Vert$, §7.4) |
| Local dissipation coefficient $\alpha(t)$ | Adaptive in $E$: high preserves coherence, low amplifies dissipation to trigger re-extraction | The field-version continuous refinement of SSM selective gating (formula in §7.4) |
| Bimodal competition | Energy share of the long-range coherent component vs the short-time dissipative component | A tug-of-war gauge of memory retention and forgetting cleanup |
| Critical threshold $E_c$ | Crossing event = phase-transition marker | The §12.5 Landau order parameter projected onto the energy axis |

**U-shape recognition criterion**: "U-shaped backtracking" holds if and only if the $E(t)$ series shows the three-segment shape — primacy segment ($E>E_c$ steady state) → valley segment ($E<E_c$, multi-vortex coupling engaged) → recency segment (recovery across the line, topological-charge fluctuations decaying to zero and the winding number stabilized = convergence; the §7.4 terminal criterion). The monitor outputs an integer triple (valley duration, number of backtrackings, moment of convergence) — "how many times did this problem backtrack" is auditable. Division of labor with §13 immunity: immunity is **threshold verdicts** (the two rulers $D$ and curvature), monitoring is **continuous quantification** (energy as the third ruler); the three are orthogonal.

Three applications: ① **pricing reasoning difficulty** — valley duration and backtrack count are intrinsic difficulty measures, fed to §7.3's compute economy; ② **hallucination early warning** — the absence of a valley segment with $E(t)$ flat and high is the energy signature of §13.4's mode collapse (hypersynchronization), alerting before the output; ③ **learning-trigger stamps** — the moment of crossing the valley barrier is §11.3's six-beat internalization trigger; spectral updates (LAW writes) are stamped accordingly, so learning events correspond one-to-one to cognitive effort and are auditable. ∎ (The U-shape detector and the $E_c$ switch are verified in Appendix B.20.)

## 8 Chirality Duality: Separation, Translation, and Insight

This section treats the algebraic separation of, and interaction between, the left and right paths. Chiral reasoning involves three corrections, and after the corrections it is in fact cheaper: **separation at zero cost, translation as a one-line product, and the firewall as a one-line norm**.

### 8.1 Correction 1: Separation via grade involution

**Erroneous version**: $P_\pm=\frac12(1\pm I_5)$ are the left/right projectors. **Key fact**: $I_5^2=-1$ (5-dimensional signature (4,1): $I_5^2=(-1)^{5\cdot4/2}\,(+1)^4(-1)=-1$) implies $P_+P_-=\tfrac14(1-I_5^2)=\tfrac12\neq0$ and $P_+^2=\tfrac12I_5\neq P_+$ — the cross terms do not cancel and idempotency fails; the $P_\pm$ are not projectors at all (verified in Appendix B.6).

**Correct version**: the separation operator is **grade involution**: $\hat A(M)=\sum_k(-1)^k M_k$ (each $k$-grade component multiplied by $(-1)^k$), $\hat A^2=+\mathrm{id}$.

$$M_+=\tfrac12(M+\hat AM)\in\mathrm{Cl}^+(\text{even part}),\quad M_-=\tfrac12(M-\hat AM)\in\mathrm{Cl}^-(\text{odd part}),\quad M_\pm^2=M_\pm,\ M_+M_-=0$$

(idempotent and orthogonal, since $(1+\hat A)(1-\hat A)/4=(1-\hat A^2)/4=0$.)

The GF realization is at zero cost: group the 32 channels of the multivector by blade parity and sum; even $\hat A$ itself need not be computed explicitly.

### 8.2 Correction 2: Translation via the Hodge Star — the Complex-Structure Theorem

**Theorem VI4 (Hodge complex structure)**. In 5 dimensions the pseudoscalar $I_5$ commutes with every multivector ($I_5M=MI_5$, since $I_5e_i=(-1)^{n-1}e_iI_5$ with $n-1=4$ even), and $I_5^2=-1$. Hence the Hodge star $*M=I_5\tilde M$ ($\tilde{\ }$ denoting reversion) satisfies $*^2M=I_5\widetilde{I_5\tilde M}=I_5MI_5=MI_5^2=-M$ for all $M$, i.e. $*^2=-\mathrm{id}$: a **complex structure** with eigenvalues $\pm i=\pm256$. It maps the even part to the odd part and the odd part to the even part (5 is odd, and $k\mapsto5-k$ flips parity), and $*(\Psi_-)=-\Psi_+$ — the round-trip translation differs by a minus sign.

_Proof_: reversion is an anti-automorphism ($(AB)^\sim=\tilde B\tilde A$), $\tilde{\ }^2=\mathrm{id}$, $\tilde I_5=I_5$ (the grade-5 reversion sign $(-1)^{5\cdot4/2}=+1$), hence $\widetilde{I_5\tilde M}=\tilde{\tilde M}\tilde I_5=MI_5$; then rearrange using the centrality of $I_5$. ∎

Cognitive semantics: left-right translation is not copying but an **orthogonal transformation rotating by 90°** — intuition entering the left path acquires an orthogonal phase ($\times i$), i.e. "intuition cannot be stated directly" (translation trades in phase). Five dimensions (an odd dimension) is the necessary condition for a strict even/odd split, but is not exclusive to Cl(4,1) (Cl(3,0) is also odd-dimensional) — the irreplaceability lies in the conformal unification: 5 dimensions = 3 space + 1 time + 1 scale, exactly cognition's triad (spatial perception + temporal order + abstraction levels).

**Coordinate formula (the complement closed form)**. For a blade $e_A$ (signature (4,1), $A\subseteq\{1..5\}$, $|A|=k$, $\varepsilon_i=e_i^2$): $*\,e_A=(-1)^{\binom{k}{2}+\sum_{i\in A}(5-i)}\big(\prod_{i\in A}\varepsilon_i\big)e_{A^{\complement}}$, $A^{\complement}=\{1..5\}\setminus A$ — i.e., the star operator = **complement blade × blade-order sign × signature product**. Development record: the hand-derived first version asserted "the combinatorial sign cancels completely in 5 dimensions, $\sigma=\prod\varepsilon_i$" — the simulator identified a counterexample on the $e_2$ blade (the star operator depends on blade order; the transposition count $\binom{k}{2}+\sum(5-i)$ cannot be omitted); after correction, the closed form matches the original definition $*M=I_5\tilde M$ bit-identically on all 32 blades (Appendix B.21 Hodge subsection B.21b). Translation = table lookup, but every sign in the lookup formula also passes through the machine. ∎

### 8.3 The Insight Algebra: odd × odd = even

The Cl(4,1) graded multiplication table (grades add, folded mod 5) yields three cognitive properties:

| Product | Result | Cognitive semantics |
|---|---|---|
| even × even | even ($\mathrm{Cl}^+$ closed) | Logic applied to logic is still logic — **the left path is closed and possibly paradigm-blind** |
| odd × even | odd | Logic acting on intuition remains intuition (heuristic) |
| odd × odd | even | **Two intuitions colliding produce logic — insight** |

**Proposition VI5 (insight algebra)**. The right path alone cannot reason (the odd part does not form an algebra: odd × odd = even leaves the odd part), and the left path alone cannot innovate (the even part is closed = paradigm blindness). The sole source of creative reasoning is odd × odd = even: multiply two incomplete intuitions and the product lands on the logic side, outside the reachable set of either prior path. _This is the algebraic model of "inspiration"_: when the left path is stuck, the right path holds two incompatible intuitions in superposition (field interference); their product instantly yields a new logical starting point underivable by the left path, and the Born collapse completes the instantaneous readout of the insight. ∎



A second independent model complements odd × odd = even: **vacuum tunneling** — the contradiction degree $D$ is the height in the energy landscape, and the barrier between two logical states can be crossed by an instanton, with amplitude $\Delta\mathrm{PCD}\sim e^{-S_{\mathrm{inst}}}$ decaying exponentially in the barrier action, explaining the rarity (exponential suppression) and the suddenness (wholesale crossing, not point-by-point climbing) of insight. The cross-domain analogue shares the family form of the tunneling probability $P_{\mathrm{tunnel}}=\exp(-B\,|\Delta\varphi|/\sqrt{A_AA_B})$ (barrier ∝ phase difference, inversely proportional to the two domains' coherent areas). odd × odd = even supplies the **algebraic channel** (which two intuitions can be multiplied), tunneling the **dynamical channel** (when, and with what probability): the former a discrete verdict, the latter a continuous probability — the GF host turns probability into a comparison of the amplitudes of deterministic interference.

### 8.4 Correction 3: Pole-Order Parity and Grade Jumps (Rank Separation, Not Chirality)

**Theorem VI6 (pole-order–grade jump)**. The conformal embedding maps Euclidean points to null vectors: $P=e_0+xe_1+ye_2+\frac12(x^2+y^2)e_\infty$, $P\cdot P=0$; the wedge product $B=P_k\wedge Q\in G_2$ of the two null points $P_k,Q$ is a simple blade satisfying $B^2=(B\cdot B)+(B\wedge B)=(P_k\!\cdot\!Q)^2-\underbrace{(P_k\!\cdot\!P_k)(Q\!\cdot\!Q)}_{=0}+\underbrace{0}_{\text{self-wedge vanishes}}=(P_k\!\cdot\!Q)^2\in G_0$ (the first step uses $(a\wedge b)\cdot(a\wedge b)=(a\!\cdot\!b)^2-(a\!\cdot\!a)(b\!\cdot\!b)$). Then $C\triangleq B\,(P_k\!\cdot\!Q)^{-1}$ satisfies $C^2=I$ (an involution), and the nested-fractal residue term maps as $\frac{r_k}{(z-z_k)^{n_k}}\mapsto r_k[(P_k\!\cdot\!Q)^{-1}]^{n_k}C^{\,n_k}$: $n_k$ even $\to r_k\,(P_k\!\cdot\!Q)^{-n_k}\in G_0$ (an isotropic scalar term); $n_k$ odd $\to r_k\,(P_k\!\cdot\!Q)^{-n_k}C\in G_2$ (a directed blade term carrying direction).

_Rank–chirality relation_: $G_0$ and $G_2$ are **both even grades**; rank separation and chirality separation are independent, chirality separation is carried by $\hat A$.

**The three boundary cases and the gradeless tower**. The three boundary cases are the three terminals of cognitive dynamics: $n_k=0$ (a removable singularity) → residues accumulate directly into $G_0$ — **unformed concepts** produce no directed term; $\mathrm{dot}=0$ (the observation point coincides with the pole) → Meissner repulsion — zero distance is a pathological point (same origin as §11.5's minimum pole-separation constraint); $n_k=N_\infty=65535$ (the Kleene fixed point) → residues no longer decay, always landing in $G_0$. The last item gives the geometric reading of the gradeless tower ($n: 0\to1\to2\to3\to\infty$): by VI6's power sequence $C^{n_k}$, **finite-order field terms oscillate between the scalar $G_0$ and the directed blade $G_2$** ($n$ alternating in parity) — memory retains its "sense of direction"; only the bootstrap layer at $n=\infty$ is fixed: **the bootstrap fixed point = the readout direction permanently fixed**. This and VI12 are two sides of one coin — the internalization theorem supplies the dynamics of "logic compressed into intuition" (fixed-point convergence), while this supplies the geometric terminal state (the annihilation of the oscillation): a fully internalized law no longer changes its readout with the direction of observation. Machine verification of the power sequence ($B^n$ odd → $G_2$, even → $G_0$, $n=1..7$) in Appendix B.19.

### 8.5 Algebraic Simulation of the Split-Brain Experiments

Sperry's split-brain experiments (1960s): after severing the corpus callosum, the left brain can speak but cannot recognize faces, and the right brain can recognize faces but cannot speak. Algebraic simulation: after severing even/odd interaction (forbidding $\mathrm{Cl}^+\times\mathrm{Cl}^-$ products), the even part can still reason through rotations (logically complete but without the "wholeness" of a face), and the odd part can still one-step reflect (pattern flips, unable to chain); restoring the interaction (rebuilding $M_+M_-$ products) restores full cognition. This is an **analogy**, not an isomorphism proof (hemispheric specialization is itself an oversimplification, and normal brains are highly integrated), but it is executable: the dual-path architecture can genuinely switch off the interaction channel and measure the selective loss of the two paths — what truly exists in engineering is "fast/slow dual paths + coherent arbitration"; the left/right brain is merely its neural narrative.

> **Extension: Clifford deflection and multimodal unification**. Paper7 proposes: different grade components of Cl(4,1) correspond to different modalities — textual semantics lands in $G_0$ (scalars/facts), image features in $G_2$ (bivectors/directional relations), temporal dynamics in $G_1$ (vectors/trends), cross-modal associations in $G_3$ (trivectors/nested structures); multimodal conversion is Hodge complementation across grades ($*: G_k\to G_{5-k}$) — the current text architecture can directly embed image/audio/video streams without any new structure.

### 8.6 A Genealogy of Physical Mechanisms of Insight (Peripheral Correspondences)

The insight algebra (§8.3) gives "odd × odd = even"; on the physical side, the triggering mechanisms:

| Mechanism | Trigger condition | Conceptual source |
|---|---|---|
| Depinning transition | Under deadlock, Lorentz-stress monitoring crosses threshold; escape via the depinning transition | Pinning–depinning |
| Topological transition | Energy falls below $E_c$ and the barrier collapses; crossing via hypervortex topological tunneling | BKT-type transition |
| Beat-frequency interference | The beat frequency of two weakly correlated concepts reaches the ionization threshold, instantly generating a new concept node | Wave beats / ponderomotive force |
| Instanton tunneling | Langevin-noise-driven barrier crossing (formula in §8.3) | Vacuum instanton |
| Interlayer resonance | Three scale fields phase-lock simultaneously, forming a cross-scale hypervortex | Cascade phase locking |
| Tracy–Widom right tail | The fluctuation distribution enters the KPZ right tail — the statistical precursor of critical flashes | Random-matrix right tail |

**Dynamical correction (falsifiable)**: the GF field has no $\hbar$, so barrier crossing obeys **Arrhenius law $P\propto e^{-\Delta E/kT}$** rather than WKB; $T$ is §12.5's cognitive noise temperature, and the insight frequency (the event rate of PCD jumps) is the direct falsification observable (§7.4's Kramers escape is its in-paper form).
# Part III: The Residueon Reservoir — Memory and Learning (Pillar 2)

## 9 Echo State = Entanglement Decay

### 9.1 The duality table

| Echo state (classical reservoir) | Entanglement decay (quantum system) |
| --- | --- |
| $h(t)=A^th(0)+\sum_{k}A^{t-k}Bu(k)$ | $\rho(t)=e^{-\Gamma t}\rho(0)+(1-e^{-\Gamma t})\rho_{ss}$ |
| Decay factor $\lambda_{\max}$ (ESP condition $\rho(A)<1$) | Decay factor $e^{-\Gamma}$ (decoherence rate) |
| Distant history forgotten ($A^t\to0$) | Distant entanglement decohered away ($e^{-\Gamma t}\to0$) |
| Recent inputs exert large influence | Recent entanglement largely retained |

**Theorem VI8 (echo–entanglement duality)**. Term-by-term duality $\lambda_{\max}\leftrightarrow e^{-\Gamma}$, i.e., $\log\lambda_{\max}=-\Gamma$: the spectral radius of the reservoir is the (log-scale) decoherence rate. ∎

### 9.2 The algebraic definition of entanglement: field multiplication

**Theorem VI7 (algebraic criterion for entanglement)**.

- **Field addition (decomposable)**: $\psi_1(z)=\dfrac{a}{z-p_1}$, $\psi_2(z)=\dfrac{b}{z-p_2}$; then $\psi_1+\psi_2$ has residue $=a$ at $p_1$ and $=b$ at $p_2$ (changing $a$ does not affect the residue at $p_2$): information independent, capacity $O(K)$.
- **Field multiplication (entanglement)**: $\psi_1\psi_2=\dfrac{ab}{(z-p_1)(z-p_2)}$ has residue at $p_1$ equal to $\lim_{z\to p_1}(z-p_1)\frac{ab}{(z-p_1)(z-p_2)}=\frac{ab}{p_1-p_2}$, **depending on both $a$ and $b$ simultaneously** — changing either one alters the readings at both places. Indecomposable; correlation structure $O(K^2)$; nested multiplication (an unbounded tower) reaches $O(K^n)$.

_Proof_: Direct computation from the limit definition of the residue. ∎ (Appendix B.8.)

### 9.3 Entanglement lifetime ∝ pole order

The high-order-pole coupling term $\sim\dfrac{ab}{(p_1-p_2)^{n}}$ is amplified as the $n$-th power as $p_1\to p_2$ and decays as a power of the separation — the memory-timescale spectrum = the entanglement-decay spectrum:

$$\text{entanglement lifetime}\;\propto\;n_k\quad(\text{high-order pole} = \text{slow entanglement} = \text{long-lived memory}).$$

The empirical verdict on the reservoir-readout line — "slow-pole memory genuinely exploits deep context" — is thereby upgraded from observation to theorem: **a slow pole is slow precisely because it carries high-order entanglement; deep-context exploitation is the readout of long-lived entanglement.** ESP no longer rests on the empirical premise $\rho(A)<1$: decay is determined by the pole-order table (§10.1 supplies the stronger group-theoretic elimination).

**Two timescale formulas** (real domain $0<z_k<1$):

$$\tau_k=-\frac{1}{\ln z_k},$$

(§17.3.1 measurement: median $\tau$ of the L16 layer 379.5); the equivalent form of the multi-scale SSM decay coefficient

$$\tau_k=\frac{1}{1-\alpha_k}\qquad\Big(\alpha=\{\tfrac34,\tfrac12,\tfrac14\}\Rightarrow\tau=\{4,\ 2,\ \tfrac43\}\Big),$$

the two being self-consistent as $\alpha\to1$ ($\alpha^t\approx e^{-t/\tau}$). ∎ (Appendix B.21.)

### 9.4 An honest demarcation of capacity

**Proposition VI9**. (Formal retraction of the exponential-memory-capacity claim)

- **Information-theoretic upper bound unchanged**: $K$ GF elements can only ever store $16K$ bits.
- **The classical simulation wall**: explicitly storing an $N$-qubit state vector requires $2^N$ entries — $N=30$ needs $1.07\times10^9$ (collapse), $N=50$ needs $1.13\times10^{15}$ (impossible). All $O(2^N)$ capacity claims fail on classical machines.
- **The correct accounting**: storage $O\!\big(\sum_k S_k^2\big)$, two-gate computation $O\!\big(\sum_k S_k^3\big)$ ($S_k$ = the Schmidt rank of the $k$-th pole). For $K=20$ with all $S_k=4$: capacity $\sum S_k=80$, storage $\sum S_k^2=320$, computation $\sum S_k^3=1280$ — a classical pool of equal capacity (80-dimensional) needs only 80 units of storage. **The payoff of entanglement lies not in efficiency but in expressiveness**: many-body entanglement under repeated gate application captures cross terms of arbitrary order (the classical polynomial feature map $\varphi(u)=[1,u_1,u_2,u_1u_2]$ reaches only order 2).
- **Where the exponential properly lives**: the number of addressable correlation patterns — the pairwise coupling topology of $K$ poles admits $2^{\binom{K}{2}}$ configurations ($K=20$ alone gives $2^{190}$); entangled readout accesses higher-order tensor terms $\langle s|R_iR_j|s\rangle$ while an additive field accesses only diagonal terms, so the gain is **access efficiency**. MPS bond-dimension analogy: residue coupling in a product field = bond dimension $\ge2$, entanglement entropy $S=\log(\text{bond dimension})$.
- **The residue table as compressor**: $\Psi(z)=\sum_k r_k/(z-z_k)^{n_k}$ is a $K$-sparse representation with storage and evaluation both $O(K)$, independent of the underlying state-space dimension — "the algebraic tensor network" (truncation = reducing the pole count, simpler than MPS Schmidt truncation and requiring no SVD — SVD is undefined over a GF field; a QR-type algebraic truncation is the substitute, not yet engineered).

### 9.5 The holographic entanglement bound

$$S(A)=\sum_{k\in A}r_k(1-r_k)\quad(\text{GF version of Bernoulli entropy}),\quad S(A)=\frac{\mathrm{Area}(\gamma_A)}{4G_N}\ \text{(RT duality)}.$$

The GF implementation takes $\mathrm{Area}=|A|$ (the number of residueons) and $G_N=1$ (so $S=|A|/4$) — **the implementation admits its own simplified verification** (only a non-negativity weak assertion is performed; the RT surface gets no minimal-surface geometry); honest placement: the formula is coded in place, the geometric layer unverified. Conceptual value: **information = boundary** ($I(S)=I(\partial S)$), kin to the residue theorem of §3.4 — the interior of a region is fully determined by its boundary; memory corollary: securing the boundary (pole table + WORM log) secures the interior (the entire cognitive state) — ΨDB's "the database is the program; audit is readout."

## 10 Gate Residues and Learnable Quantum Gates

### 10.1 Group-theoretic stability: eliminating the reservoir's spectral-instability problem

**Theorem VI10**. Gate-residue evolution is naturally bounded: $X^2=Z^2=H^2=I$ (involutions), $S^4=I$, and $ZXZ=-X$ (Clifford conjugation) hold **exactly** within GF(65537) (machine verification in Appendix B.4). Powers of an involutory matrix oscillate between the two points $\{I,X\}$ with spectral period 2, **never diverging**.

The chronic problem of the classical reservoir (ESN) is the spectral-radius premise $\rho(A)<1$ — random weights require scaling and verification, and violation means exponential divergence. Gate evolution replaces it with a group-theoretic identity: stability is not hyperparameter luck but an algebraic identity. **This is the first and most important payoff of quantum gates entering the residueon table.**

### 10.2 The gate–pole dual reservoir

The pole axis and the gate axis are orthogonal: poles govern memory (slow poles = long range, §9.3), gates govern symmetry (the Clifford group). Non-commutativity ($XZ\ne ZX$) makes the readout depend on the order of gate application — the output space of $K$ poles expands from $K$ dimensions to $4K$ plus quadratic-form dimensions: **storage unchanged, expressiveness doubled**. Neither random pools nor QRC (floating-point noise pools) possess a "memory × symmetry" product space — a third path.

### 10.3 The gate-residual adapter: residueon-table LoRA

**Proposition VI11 (gate Hebbian rule)**. (Verified)

$$R_0\leftarrow R_0+\eta E,\qquad \eta=7,\quad E=\begin{psmallmatrix}1&0\\0&0\end{psmallmatrix}$$

Takes effect deterministically (output changes and is reproducible). Backpropagation-free: tens of thousands of agents share the gate base table (storage $O(|\text{base table}|)$), and individual differences are the $\Delta R$ residual ($O(1)$ per agent) — a residueon-table LoRA; zero floating point, zero randomness, with the update sequence landing naturally in ΨDB WORM audit + dual-domain fingerprints.

### 10.4 The certifiable reservoir

Every $\Delta R$ update is booked: dual-domain GF(65537)×GF(131071) cross-checks (consistency = free mutation detection) + WORM log (incremental WAL, operation-level replay) + two-generation snapshots; the readout is certifiable — white-box attribution upgraded to a cryptographic white box, where any inference can answer "which poles, which gates, and which version took part in this output," something the floating-point black box structurally cannot do (what cannot be reproduced cannot be audited).

### 10.5 Physical synaptic plasticity: the critical plasticity operating point and STDP

**Proposition VI21 (critical plasticity operating point)**. The three gated-write parameters, as measured:

$$\beta=0.7616\ (\text{strong learning}),\qquad \mathrm{decay}=0.0723\ (\text{slow forgetting}),\qquad \alpha_b=0\Rightarrow\beta_{\mathrm{eff}}=0\ (\text{write refusal}).$$

| CGL/wave-field parameter | Gated DeltaNet | Biological synapse |
| --- | --- | --- |
| Decay gate $\alpha_t$ ↔ decay=0.0723 | The retention term of $S_t=\alpha_tS_{t-1}(I-\beta_tk_tk_t^\top)+\beta_tv_tk_t^\top$ | Decay timescale of the synaptic tag (STC) |
| Write gate $\beta_t$ ↔ $\beta$=0.7616 | Strength of the write term | Capture efficiency of PRPs (plasticity-related proteins) |
| $\alpha_b=0\Rightarrow\beta_{\mathrm{eff}}=0$ | Gated shutdown | Tag protection (PreserveA): noise tokens refused writes to prevent contamination |

The spatial selectivity $\beta_{\mathrm{eff}}=\beta\cdot\alpha_b\cdot\Theta(\text{phase coherence})$ reproduces exactly the STDP causal window ($pre$ preceding $post$):

$$\Delta w=A_+e^{-\Delta t/\tau_+}\ (\Delta t>0),\qquad -A_-e^{\Delta t/\tau_-}\ (\Delta t<0).$$

The continuum limit is the plasticity field equation $\partial_t\Psi=D\nabla^2\Psi+\varepsilon(\mathbf r,t)\Psi-(1+i\beta)|\Psi|^2\Psi$ (the A/B gates are the physical incarnation of $\varepsilon(\mathbf r,t)$); WGSL: `beta_eff = BETA·b_gate·phase_coherence`, `decay_eff = DECAY·(1−a_gate·phase_coherence)` (the higher the A gate, the slower the decay = memory protection). Meaning of the operating point: the two parameters sit at a **critical plasticity point** — a small $\beta$ learns too slowly; a large decay cannot retain. The hippocampal–neocortical data (content words triggering LTP, noise tokens refused writes) are the biological observation at the same locus. 

### 10.6 The unified kernel of error-driven learning: w ← w ⊞ G·e

§10.3/§10.5 belong to one formula family (Hebbian; the plasticity operating point). Unified kernel:

$$w_{t+1}=w_t\boxplus G\cdot e,$$

Two orthogonal axes: **how the error is defined** ($e$) × **how the gain is structured** ($G$). Family members (each with a ψ/GF implementation or measurement):

| Form | Error $e$ | Gain $G$ | Cognitive semantics |
| --- | --- | --- | --- |
| Hebbian | $\mathrm{pre}\cdot\mathrm{post}$ (correlation) | $\eta$ | Co-activation is learning (§3.4) |
| Delta | $y-\hat y$ (prediction error) | $\eta x$ | Error-driven (isomorphic to dopaminergic RPE) |
| NLMS | $y-\hat y$ | $\eta x/(\langle x,x\rangle+\varepsilon)$ | Input-normalized step size — measured closed-loop error ~0.9 ppm |
| RLS/ridge | $y-Xw$ | $(X^\top X+\lambda I)^{-1}X^\top$ | One-shot exact solution (training = inversion) |
| Inversion (Vandermonde) | Node interpolation residual | $V^{-1}$ | One-shot exact solution by GF(65537) Gaussian elimination; zero iterations, zero learning rate |

The bottom two rows: ridge and Vandermonde inversion turn "learning" into **a single linear solve** — no learning rate, no convergence problem, a unique and certifiable solution; GF has no division obstacle ($\|x\|^2$ and determinants go through the Fermat inverse). The 50,280-class measurement (§17.3: 3 seconds vs. 1 hour for CE, and cleaner in-domain) is the family's proof at scale; "training = inversion against training = gradients" thereby acquires its formula shape. ∎ (Appendix B.21.)

Overwrite-topology upgrade: vector overwrites (Gated DeltaNet type) readily destroy the logical structure of existing knowledge; **topologically selective overwriting** upgrades into topological rewiring — topological charge transfers without loss, knowledge updates while the logical foundation stays put, and old knowledge is reorganized rather than overwritten.

**Proposition VI26 (the row-append law: learning as certification)**. Suppose the field sits inside the argmax accuracy cliff (measured: perturbations at the ≥9% scale already cause large-area flips, §17.3(B2); the only lossless operation at this operating point is shrinking the storage bit width). Then the products of all lossless learning must land on the **interface rows** — input rows / readout rows / residual adapters / bias slots — while the field parameters stay frozen; learning products are issued as sealed tables (fpW seals, GF fingerprints, Q15 non-zero assertions), and the growth of the cognitive body is the monotone append of sealed tables. All verified learning forms of this series — the ridge one-shot solution (§17.3.3), the error-driven Δ rule (§10.6), the distilled residual head (§17.3.10), the gate-residual adapter (§17.3.9), Chinese-row joint training (§17.3.12), and pole page-table writes (§17.6) — are six artificial instantiations of this law. In one sentence: **"the field does not train; the field issues certificates."** ∎ (For the necessity argument and honest boundaries see §17.3.12(E): the proposition holds under the inside-the-cliff premise and is untested outside the cliff; falsification experiments must take the fine-tuning form, per the verdict premise of §17.3.12(F).)

### 10.7 The wave-field placement of reservoir computing: pool = pole spectrum, readout = observation operator

**Proposition VI23 (reservoir = fixed medium + linear observation)**. Within the wave-field framework, the essence of reservoir computing is **scattering off a fixed wave-field medium + linear observation**: the pool = a fixed scattering medium (its pole spectrum does not vary with the input); the input = the exciting wave (driving each pole into resonance); the readout head = a read-only linear detector (reading the interference pattern). Optical analogy: fixed ground glass (the pool) + incident light (the input) + speckle (the high-dimensional state) + a CCD (the readout head) — the medium does not move; only the incident light changes and the detector is trained. ∎ (A definition-level placement; "the frozen pool works" is carried by the readout experiments of §17.3.)

The pinned-down correspondence: **the pool = the pole set $\{z_k\}$ of the residueon table; the input = excitation (the residue response $\{r_k\}$); the readout head = the observation operator (a linear map from the $\{z_k,r_k\}$ interference pattern to the output)** — the reservoir is not a black-box recurrent network but an extractable, attributable residueon table. Surpassing random pools: an ESN's pole spectrum is randomly initialized (random scatterers, no guaranteed spectral coverage, expressiveness bounded by pool size), whereas this paper's pool is a pretrained, structured wave-field medium (Mamba complex poles / piecewise residueon fields; the pole spectrum carries the knowledge) — the geometric answer to "why the frozen pool works": the medium's scattering properties need no training; only the detector that reads the speckle pattern is trained.

**Proposition VI24 (wave-field duality: attention = Green's function, residueon table = pole decomposition)**. Self-attention and the SSM are two representations of one wave field: **attention = the spatial-domain Green's function** — tokens are wave sources ($K_j$ wave vectors, $V_j$ amplitudes), the dot product $Q_i\cdot K_j$ is the phase difference between observation point and source (similarity = degree of phase matching), softmax is the normalized interference intensity, and multi-layer forward propagation is the wave's diffraction through a layered medium (the attention tensor network = a discretized Helmholtz solver, one Green's-function operator per layer); **the residueon table = the frequency-domain pole decomposition** — the transfer function $H(z)=\sum_k \frac{r_k}{z-z_k}$, the pole resonance of a one-dimensional causal waveguide (pole = complex frequency, residue = coupling strength). The rigorous bridge is **spectral decomposition** $G(x,x')=\sum_k \frac{\phi_k(x)\phi_k(x')}{\lambda_k}$: the Green's function (spatial domain) and the poles (frequency domain) are two writings of the same operator. This yields a principled account of hybrid architectures (alternating SSM + attention): the SSM covers frequency-domain causal temporal structure, attention covers spatial-domain global interference, and only together do they form the complete wave field. ∎ (The spectral-decomposition bridge is standard mathematics.)

**The Clifford spinor wave field and the semantic interference operator**. The Clifford geometric product $ab=a\cdot b+a\wedge b$ upgrades the scalar residueon table into a spinor wave field: **the dot product of standard attention is only the scalar part of the geometric product — $q\cdot k$ keeps the interference magnitude and discards the directional information of $q\wedge k$**; scalar attention cannot model antisymmetric semantics (negation "not good" ≠ "good," reversal, symmetric relations) and can only mishandle them through magnitude hard-coding. **The semantic interference operator**: a prominent exterior-product term $r_i\wedge r_j$ ↔ negation/reversal semantics; a prominent inner-product term $r_i\cdot r_j$ ↔ similarity/reinforcement semantics; the verdict experiment = the non-vector RAG "find the opposite concept" retrieval control ($r_i\cdot r_j$ vs $r_i\wedge r_j$) — if it succeeds, "spinor expressiveness strictly exceeds scalar attention" is upgraded from structural argument to empirical theorem.

**The correct placement of Mamba**: diagonal poles (cutting pole–pole coupling) + strictly one-way causality (cutting transverse interference) = **the minimal scalar causal waveguide** — an engineering trade for linear complexity and hardware efficiency, not the framework's theoretical ceiling. The root cause of pure Mamba's lower accuracy relative to Transformers is the boundary conditions (a free wave field over all space vs. a one-dimensional causal waveguide, where non-local semantic associations can propagate only indirectly), not a capability boundary of wave-field computation; a Clifford residueon table with non-causal pole coupling can keep linear complexity while restoring transverse interference.

Two engineering corollaries: **the dual-head architecture** — the frozen pool serves as the shared low-level state machine, a text-generation readout head handles "speaking" (the warm-start residual head of §17.3.10), an NPC learning head handles "acting" (learnable quantum gates / Δ readout), and dialogue = the joint operation of the two heads; **incremental hot updates of the residue field** — the pool supports rank-one surgery, pole drift, and residue fine-tuning (the page-table surgery of §17.6 is a special case); one need only distribute "the poles/residues that changed" (increment format $[\text{pole\_idx}, \Delta r]$ / $[\text{pole\_idx}, \Delta z]$, GF(p) integer signatures), with bandwidth estimated at 10³~10⁵ times less than a full-model download, and all clients bit-identical in twin consistency.

**Proposition VI27 (generation = policy: the Born dialect law)**. Next-token readout and action selection are carried by the same Born selection operator (↓ = argmax, §2.3): $\mathrm{token}^*=\arg\max_k\; h\cdot W^{\text{read}}_k$ and $a^*=\arg\max_a\; h\cdot W^{\text{act}}_a$ are indistinguishable at the operator level — language and action are two dialects of row families over the same frozen field, differing only in the row-family dictionary (character set vs. action set). Corollary: fitting a robot platform with a language cortex requires no new architecture — the readout row family is plug-and-play, and "dialogue = dual-head joint operation" is promoted to an engineering demonstration. ∎ (Measured anchors: the Chinese row head emits 「你」 and the robot Δ policy head passes all five gates green, §17.3.12(D).)

Native multimodal binding: fusion needs no contrastive learning — hippocampal theta–gamma phase–amplitude coupling (PAC) is the binding form, and cross-phase modulation (XPM) is attentional focusing.

## 11 Bootstrap = Logic Internalized into Intuition

### 11.1 The triple fixed point

The bootstrap reservoir's "pool generating itself" is a superposition of fixed points at three layers:

| Layer | Fixed point | Mathematics | Implementation form |
| --- | --- | --- | --- |
| Layer 1, frequency domain | NTT eigenstate | $P_1=\frac14(I+N+N^2+N^3)$, $N^4=I$ (the NNTT's fourth power), $P_1^2=P_1$ | Realized by the four NTT projections |
| Layer 2, time domain | Echo state | $h^*=Ah^*+Bu$ (Banach) | Echo iteration |
| Layer 3, compilation domain | Bootstrap | $C(C)=C$, tower $C^k(C)=C$ (Kleene recursion theorem) | Tower iteration + fingerprints |

Layer 1 verification: $\big(\sum_{i=0}^{3}N^i\big)^2=4\sum_{i=0}^{3}N^i$ (with $N^4=I$, indices traverse modulo 4), hence $P_1^2=P_1$ (Appendix B.10: $P_1^2\equiv P_1\pmod{65537}$).

The two forms of self-reference stratify: symbolic self-reference concerns truth values (where the Gödel paradox lives), while **physical self-reference concerns existence** — over GF(65537), equation solutions are finite and exhaustible, so no paradox arises. Bootstrap has a strict criterion: only a successful copying action counts — $C\star C=C$ with byte-for-byte equality (printing the compiler's source on paper is not bootstrap; guiding the synthesis of a copy of itself is); the rule is not imposed from outside but made intrinsic to the pole positions themselves.

### 11.2 Banach contraction: convergence guaranteed

**Theorem VI12 (bootstrap internalization theorem)**. (Quantified by measurement)

The Lipschitz constant of the bootstrap iteration (the polling cycle of spectrum update → gate update → readout update), as measured,

$$L=\frac{\text{poles}}{\text{tokens}}\in[0.821,\ 0.878]\subset(0,1)\qquad(\text{GF encoding }53724/57443),$$

with convergence exponent $\alpha=-\log_2\bar L=0.234$ bits per iteration (GF encoding 15346). By the Banach fixed-point theorem: the fixed-point spectrum $R^*=T(R^*)$ exists, is unique, and is approached at an exponential rate — **existence + uniqueness + convergence rate in one**. Equality of the spectral hash across two rounds certifies the fixed point attained (engineering criterion: a single integer comparison).

The triple fixed points are coordinated by a freeze–unfreeze schedule: first freeze the spectrum and run gates + readout to convergence, then unfreeze the spectrum for one round; $L<1$ guarantees the whole remains contractive. The kernel's LAW/RES polling is the natural host of this schedule.

### 11.3 The internalization loop: the six beats of skill acquisition

$$\underbrace{\text{right path errs}}_{\text{intuitive lapse}}\to\underbrace{D(Q)\text{ rises}}_{\text{arbitration detects}}\to\underbrace{\text{left path corrects}}_{\text{logic intervenes}}\to\underbrace{\text{LAW extracts a new law}}_{\text{BM law discovery}}\to\underbrace{\text{law written into the pole spectrum}}_{T\text{ operator updated}}\to\underbrace{\text{right path hits directly}}_{\text{intuitionization}}$$

The converged state ($T(R^*)=R^*$): new scenarios no longer need the left path — the law has been compiled into the spectrum, **logic compressed into intuition**. This is the algebraic form of learning psychology's "expert intuition = internalized logic" (declarative→procedural, Anderson's skill-acquisition theory). The G0→G1→G2 compiler bootstrap tower (spectral hash stable across two rounds) is its sibling on the compiler side: the compiler learns itself; the reservoir learns its own spectrum.

### 11.4 An engineering existence proof: the robot persistent-memory bridge

A minimal complete instance of bootstrap internalization:

- **Run A (learning)**: a baseline of 13 golden anchors, $\eta=1/4$; the weights of row 673 flip $13\uparrow/13\downarrow$, flipping the answer to $673$; the checkpoint is persisted (taking effect immediately under weight-cache version-invalidation semantics).
- **Run B (cold start)**: the process restarts and the baseline reproduces 13 (proving a genuine restart); fingerprint verification + weight restoration; **answering 673 correctly with zero relearning**.

The four beats learn→store→forget→recall, with ψ bit-identical reproducibility throughout. Note the honest detail: at $T=3$ the baseline model already answers 673 correctly; only at $T=4$ is there a genuine flip — test design must exclude the pseudo-learning of "already correct." This detail shares a root with the RRC overfitting detection of §13: **the first enemy of a learning system is pseudo-learning.**

### 11.5 Entangled-state storage: the database form of memory

Lifting the field-multiplication entanglement of §9.2 into a storage structure yields three candidate properties of a **topological entanglement database** (base untouched; a topological layer superposed):

| Candidate property | Traditional difficulty | Entangled form | Status |
| --- | --- | --- | --- |
| Entangled-state storage | Joins/triggers maintaining relational consistency | Changing one residue in the product field automatically changes the readings at the correlated poles (the $ab/(p_1-p_2)$ coupling) — **consistency is algebraic, not transactional** | Coupling algebra verified (Theorem VI7); storage protocol not yet built |
| Topological query | Vector stores can only query "near in distance" | Querying "structurally isomorphic": pole-topology matching of formations/behavior patterns — an entry into pattern recognition and intent analysis | Algebra ready; engineering not yet built |
| Braid concurrency | Distributed locks (Paxos/Raft) consume more than half the throughput | Convergence of order invariants under the braid group/Yang–Baxter relations (the braid verdict already verified over the GF field) — lock-free merging | Long term |

Honest accounting: wholesale replacement of the base would be a disaster (10× computation, memory explosion); the correct form is the superposed layer — 90% of simple high-frequency reads/writes still go through PoolCore (8.35 million ops/s, §17), and only complex relational writes/queries enter the topological layer; near-degenerate pole explosion ($ab/(p_1-p_2)$ blowing up as $p_1\to p_2$) calls for a minimum-pole-separation constraint, of shared origin and jointly reusable with the Meissner zero-pole avoidance of §14.1.

### 11.6 Causal impedance: the physical fusing of contradictions

**Theorem VI16 (causal impedance)**. Every edge of the memory network carries a conduction rate

$$T(e)=\sigma\big(-10\,\mathrm{PCD}_e+2\big),$$

calibrated at four points: $\mathrm{PCD}=0\to T\approx0.88$ (superconducting); $0.2\to0.50$ (half-open); $0.3\to\approx0.27$ (the warning line, exactly $\sigma(-1)$); $>0.5\to\approx0.04$ (physical fuse). The constants $(-10,2)$ are designed precisely to pin the warning point at $D=0.3$ (the phase-transition critical point of §12.3). At inference the wavefront propagates along edges and decays by $T$ ("current propagation with resistance," in contrast to the hard pruning of BFS/DFS): contradictory edges with $T<0.01$ break automatically, and the wave detours along self-consistent paths ($T\approx0.88$) — end-to-end 3.4 ms; the contradiction is neither fused away nor perfunctorily reconciled but **physically isolated**. This is the edge-level form of the §14 anti-hallucination firewall: the firewall sits on nodes (Bragg checks), the impedance on edges ($T$ decay) — two orthogonal layers.

_Monotonicity_: $\sigma'>0$ with slope $-10<0$, so $T$ is strictly decreasing; and PCD$\,\ge0$ caps $T\le\sigma(2)=0.88$ — **12% resistance is always retained; perfect trust does not exist** — which, together with the NDM's "reads cause no wear" (§3.5), constitutes the system's discipline of distrust. ∎ (Numerical verification in Appendix B.17.)

The engineering triad: semantic synapses (512-dimensional HNSW + SIMD, locating the causal entry point in 0.1 ms) + causal impedance (this theorem) + zero-copy memory (solidified solid-state edges, inference latency 10 ms→1 μs).

---
# Part IV: Cognitive Dynamics and PCD/RRC Immunity (Pillar 3)

### 11.7 The law-discovery engine: verdict power separated from crystallization power

Law discovery (the LAW task) is an **eight-family verdict engine**: it exactly covers the three classes of BM blind spots; the double gate = a one-step preliminary screen (error <50‰) + pointwise hits over the full window in $K=3$ steps once the coefficients are frozen; only gate-passers are written into the pole spectrum. Nine blind tests: Moseley held-out ≤0.3‰, Rydberg 0.0084‰, Ohm and Boyle ($k=-1$) **0‰**, Newton's second law 1‰; the crucial case: **the $P=8$ solution of Mendeleev's periodic law won the verdict (184‰) yet was denied crystallization with gate=0** — **verdict power and crystallization power are separated**: winning at interpolation ≠ extrapolability. The OEIS true laws survived 3/3; the no-law sequences were denied 0/3 (honest refusal to answer). Same-family runs (hypergeometric-type self-discovery): the three-point Cramer solution for the Catalan numbers extrapolated the recurrence to hit $C(20,10)\equiv53682\pmod{65537}$ digit for digit; Motzkin, from a different family, was honestly denied; the ψ engine and its floating-point mirror agreed 4/4; the curiosity core (minimal-exploration argmin + signature deduplication) drove 8 fully autonomous rounds with 8/8 judged novel, RRNS tamper-proofing — the law-discovery–crystallization–reuse loop runs with no human in the loop.

### 11.8 Bootstrap tower measurements and the curiosity inner loop

Bootstrap tower measurements: hierarchical self-compilation $C^k(C)=C$ verified up to **k=5**, with $2^{k+2}$ operands at layer $k$; every layer is bit-identical while the fingerprint chain differs layer by layer (monotone assertion), and injected mutations are caught by the meta-field fingerprint. A curiosity drive enters the field equation: $J_{\text{curiosity}}=\eta\nabla\mathrm{PCD}$ — pointing toward where prediction error is largest; three equivalent readings (local energy dissipation of Gödel-undecidable propositions → extending the algebraic boundary; free-energy curvature → adaptive exploration noise; variance gating → above-threshold triggering) = the night mode in which vacuum fluctuations trigger topological rewiring. The completeness boundary: language level → paradigm level → **evolution level** (mutation rules/selection/fitness handed over to an evolution engine, with the criterion that the evolutionary compiler use 30% fewer poles than the hand-built one) — the fourth order is mere recursive nesting; beyond it lies the Gödel incompleteness boundary.

## 12 The Unified Field Equation: The Unified Dynamics of Cognition

### 12.1 Full form

The unified field equation (UNFE) of [Paper1], read out term by term under cognitive semantics:

$$\frac{\partial\Psi_i}{\partial t}=\underbrace{(1+i\alpha)\sum_j\big(U_{ij}\Psi_j-\Psi_i\big)}_{\text{diffusive coupling (brain-region connectivity)}}+\underbrace{\varepsilon\Psi_i}_{\text{pump gain (attentional amplification)}}-\underbrace{(1+i\beta)|\Psi_i|^2\Psi_i}_{\text{nonlinear saturation (finite resources)}}-\underbrace{\gamma_r\,\mathrm{PCD}_i\,\Psi_i}_{\text{cognitive-contradiction dissipation}}+\underbrace{J_i(t)}_{\text{external drive (sensory input)}}.$$

Degeneracy chain: CGL → Schrödinger → Maxwell → Einstein — cognition and physics share the same mother equation, closing the six-paper cycle. The mother equation is in fact a pair of equations (GF coefficients α=100, β=200, ε=500, γ_r=1000, κ=300, λ=50, DT=100), with equation [II] the **semantic gauge field**:

$$\frac{\partial A_\mu}{\partial t}=\kappa\,\mathrm{Im}\big(\Psi^*D_\mu\Psi\big)-\lambda A_\mu.$$

The cognitive field $\Psi$, as a "matter field," **generates** the gauge potential $A_\mu$, and $A_\mu$ in turn determines the covariant derivative of $\Psi$ — meaning and connectivity co-evolve as mutual causes: concepts are poles, and semantic connections are pumped out by cognitive activity rather than given a priori. On the LLM side (§17.5): attention $W_qW_k^\top$ plays the role of $A_\mu$.

### 12.2 The PCD dissipation term: contradiction suppresses cognition

$$\mathrm{PCD}_i=0\ \Rightarrow\ \gamma_r\mathrm{PCD}_i=0\ \Rightarrow\ \text{zero dissipation, the wave propagates freely (cognition unobstructed)};$$
$$\mathrm{PCD}_i>0\ \Rightarrow\ \text{dissipation present, the wave is suppressed (cognition obstructed)};\qquad \mathrm{PCD}_i=1\ \Rightarrow\ \text{maximal dissipation (cognition locked up)}.$$

Cognitive contradictions are not "corrected" — they are **dissipated**: the activity of high-contradiction brain regions is suppressed by the equation (adaptive damping $\gamma_r(\mathrm{PCD})=\gamma_0(1+\mathrm{PCD})$). The field-theoretic definition of hallucination: **hallucination = a high-PCD state emitted before being dissipated** (the pathological path that bypasses the firewall, §14).

### 12.3 The three-state phase transition: uncertain / learning / consolidated

Phase-transition laws (ten laws):

| Law | Mathematics | Cognitive semantics |
|---|---|---|
| Law 1 | $D\in[0,1]$ | Divergence is bounded |
| Law 2 | $D=0\iff$ all in phase | Full coherence = no contradiction |
| Law 4 | Sigmoid transition center $D=0.3$ | Phase-transition critical point |
| Law 7 | Resonant amplification $R(n)=1+g(\ln n-1)$ | Multi-path resonant enhancement |
| Law 8 | Crystallization potential $P=0.5c+0.3f+0.2s$ | Coherence $c$ + activation frequency $f$ + semantic strength $s$ |
| Law 9 | $D>0.05$ locks into Gas | Contradiction too large to crystallize |

The three states:

| State of matter | Cognitive state | Condition |
|---|---|---|
| Gas | Uncertain/exploring | $D>0.05$ (large contradiction; cannot crystallize) |
| Liquid | Semi-certain/learning | $0.4<P<0.8$ (partially coherent; can flow) |
| Solid | Certain/memory consolidated | $P>0.8$ (high coherence + high frequency + strong semantics) |

Memory consolidation = crystallization: when the three components of Law 8 (activation $f$, semantic association $s$, coherence $c$) are all present, a Solid pole forms — that is, "remembering." The converse is forgetting:

### 12.4 The law of forgetting

$$\text{Solid}\xrightarrow{\ >1000\ \text{ticks unused}\ }\text{Liquid}\xrightarrow{\ >500\ \text{ticks unused}\ }\text{Gas}.$$

A memory long unused first liquefies, then gasifies (returns to uncertainty). Forgetting is not deletion but a phase transition — the pole is still there; the phase has changed (§3.5 NDM: reads cause no wear). The time constant matches Ebbinghaus: decay=0.0723 gives retention $R(t)=e^{-0.0723\,t}$ and half-life

$$t_{1/2}=\frac{\ln 2}{0.0723}\approx 9.6\ \text{ticks},$$

the quantitative form of "reviewing makes relearning faster": recrystallization takes the residual shortcut through the $c$ component of $P$, with no need to rebuild full coherence. ∎ (Appendix B.21.) The law of forgetting is **idle-time degradation** (indiscriminate, on schedule); engineering measurements additionally demonstrate **targeted degradation** — deliverable precisely by pole address, where single-pole surgery deletes a segment while neighboring slots remain verbatim lossless (§17.6 page table).

### 12.5 Cognitive thermodynamics and the mass–energy dual state: Landau order parameter, Maxwell's demon, and the revised three laws

**Theorem VI17 (Landau order parameter)**. The saturation term yields a Landau free energy: with $\rho=|\Psi|$, the potential of the real part of $-(1+i\beta)|\Psi|^2\Psi$ under the slow-amplitude approximation is

$$F(\rho)=-\varepsilon\rho^2+\tfrac12\rho^4,\qquad \frac{\partial F}{\partial\rho}=2\rho(\rho^2-\varepsilon)=0\ \Rightarrow\ \rho^*=\begin{cases}\sqrt{\varepsilon}&\varepsilon>0\\0&\varepsilon<0\end{cases}$$

As the pump $\varepsilon$ changes sign, $\rho^2=\varepsilon$ emerges continuously — a second-order phase transition; the three states = three phases of the same potential under different PCD dissipation and crystallization potentials, and critical slowing down (§7.1) is the flattening of the potential barrier as $\varepsilon\to\varepsilon_c$. ∎ (Appendix B.17.)

**Theorem on critical slowing down (direct corollary of the Landau potential)**. On the $\varepsilon<0$ side, recovery from a perturbation $\rho_0$ is linear, $\rho(t)=\rho_0\,e^{-2|\varepsilon|t}$, with relaxation timescale

$$\tau_{\mathrm{relax}}=\frac{1}{2|\varepsilon_c-\varepsilon|}\ \xrightarrow{\ \varepsilon\to\varepsilon_c\ }\ \infty,$$

and the fluctuation variance $\sigma^2\propto(\varepsilon_c-\varepsilon)^{-1}$ diverges in step — the dynamical origin of the critical slowing down of §7.1/§13.5: **slowing down is not "laziness"; it is the disappearance of the restoring force**. ∎ (Appendix B.21.)

Thermodynamization (the cognitive thermodynamics lineage):

$$U=\sum_{e\in E}w_e(1-\beta_e)\quad(\text{cognitive internal energy; }\ \beta_e\text{: gas }0/\text{liquid }0.5/\text{solid }1\text{ — frozen solid edges do not contribute}),$$
$$S=-\sum_i p_i\log p_i\ (\text{cognitive entropy; }p_i=\text{normalized phase coherence of the causal subgraph}),\qquad T=\frac{1}{1-D(Q)}\ (\text{cognitive temperature} = \text{plasticity}).$$

**First law** $\Delta U=Q-W+\Delta K$ (Q = evidence, W = computation/crystallization energy cost, K = crystallization potential energy); **second law** $\Delta S_{\mathrm{total}}=\Delta S_{\mathrm{cognition}}+\Delta S_{\mathrm{environment}}\ge0$ — knowledge crystallization is a **Maxwell's demon** inside cognition: it expends computational work W to create a local entropy decrease (Gas→Solid), with the cost booked to the environment term; **third law (zero-point law)**: with $\sigma=0$ no new memory can form — noise is a necessary resource for memory. Semantic spectrum: $0.1\pi$ weak association / $0.3\pi$ analogy / $0.5\pi$ metaphor / $\pi/2$ causality / $\pi$ opposition; cross-domain analogy = harmonic phase locking $\omega_A/\omega_B=p/q$ ($p,q$ small integers; harmonies 2:1/3:2/4:3).


**Proposition VI18 (the three laws of cognition, revised)**. The original three laws (conservation law / entropy-increase law / zero-point law) were falsified in open non-Hermitian systems (pump $\varepsilon\Psi$, dissipation $-(1+i\beta)|\Psi|^2\Psi$); the revised version:

1. **The net topological-charge production rate is zero**: vortices can only be created or annihilated in +1/−1 pairs ($Q=\frac{1}{2\pi}\oint\nabla\varphi\cdot dl$, conserved in pairs);
2. **Without an external pump, the total field energy decreases monotonically** (a direct corollary of the CGL dissipation term);
3. **The zero-point law**: with $\sigma=0$, no new memory can form.

Accompanying constants: coherence length $\xi=\sqrt{D/\varepsilon}$ (vortex core $r_c\approx\xi$), critical temperature $T_c=\varepsilon_c/\gamma_c$, maximum vortex number $N_{\max}\approx N^2/(4\pi\xi^2)$. The revision chain — original version → open-system counterexample → revised version — is isomorphic to the "every number passes audit" discipline; a theory's falsification trajectory is itself evidence.

The defense of noise: without thermal fluctuations one falls into local minima — **without noise, heat death is certain** (limit-cycle phase locking = repeating the same word forever); noise = kinetic energy for barrier crossing (§8.6 Arrhenius), symmetry breaking, and a regularizer for generalization; ultimately, structured chaos replaces random noise (topological depth traded for training depth). GF annealing: $T(k)=T_0(t_f-k)/t_f$ (linear) and $T_0r^k$ (exponential), both free of floating point; the Kibble–Zurek defect count $n=gf_{\mathrm{inv}}(gf_{\mathrm{sqrt}}(\tau_Q))$ is integerized. Duality: the Wilson–'t Hooft duality passed all 6 configurations (3 paths × 2 gauge fields × 2 generators) — a $Z_2$ vortex crossing a Wilson loop flips its sign (vortex charge = sum of residues, directly realized), making topological charge conservation a measured fact.

The mass–energy dual state: storage = condensation (an energy wave slowing into mass — a memory vortex), inference = annihilation (a mass vortex released as a light-speed logic energy wave). Inertial stratification (mass ∝ inertia): three tiers — permanent core / long-term common sense / temporary working memory — **inertial protection rules out catastrophic forgetting at its physical root**; Higgs damping = System 2: complex paradoxes trigger strong damping → the group velocity plunges → deep deliberation; the converse of insight is light-speed tunneling — a vortex annihilates into a gauge photon that rides a geodesic across ten thousand words of groundwork, an $O(1)$-latency inferential leap. Mass–energy conservation doubles as the anti-hallucination law: hallucination = mass–energy created from nothing, and the conservation law directly crushes the hallucination-bearing vortex. The learning loop: inference itself produces new vortices (excitation → interference → condensation → consolidation), and repeated excitation increases their mass, slows them, and transfers them to long-term storage — **every inference automatically precipitates memory: continual learning without fine-tuning**.

**Proposition VI29 (the inference-as-learning law)**. In the field-writable regime (training field / CGL wave field), learning is not a stage apart from inference but a conservation by-product of it: every forward pass precipitates new vortices according to the mass–energy dual state (excitation → interference → condensation → consolidation), with no separate fine-tuning; the robot training field is its controlled form (§18.4: the Δ rule rewrites the policy residueon table online within a round, learning passing all five gates — bit-identity / defect / convergence / determinism / seal — plus AND, all green); environmental feedback of external poles (§18.2) is the write channel, and six-beat internalization (§11.3) is the cognitive beat. In the frozen-field regime (the production engine, the "three prohibitions"), it translates into Proposition VI26: inference does not write the field; learning = offline appending of sealed rows. The two regimes are demarcated by the iron law of field freezing. ∎

## 13 The PCD/RRC Cognitive Immune System

**Proposition VI13 (cognitive immune system)**: PCD detects phase diseases and RRC detects curvature diseases; orthogonal and complementary, they are jointly coded into an algebraic diagnostics packed into a single integer.

### 13.1 PCD: phase immunity (detecting direction inconsistency)

$$D(Q)=1-\frac{|\sum_i u_i|}{\sum_i|u_i|}\qquad\text{(complex vector addition: degree of direction inconsistency)}.$$

Detects: logical contradictions (phase jumps), brain-region desynchronization (discrete EEG), compiler defects (discontinuous residueon phases), phase transitions (order-parameter jumps), quantum error correction (winding number). GF calibration: Sigmoid center $D=0.3$ ($\alpha=10,\beta=3$), the non-crystallizable line $D>0.05$, three-level gates HardBlock $>0.5$ / SoftWarning $>0.2$ / Pass $\le0.2$, gradient bias $G_{\text{bias}}=1+2(1-D)$, curvature $\kappa=|D_N-D_v|+\sqrt{\mathrm{Var}}$ — shared by §7/§11.6.

### 13.2 RRC: curvature immunity (detecting bending anomalies)

$$\mathrm{RRC}(f_1,f_2,f_3)=f_3-2f_2+f_1\qquad\text{(discrete Laplacian: zero for three collinear points)}.$$

Linear ($1,2,3$) $\to 0$, normal; bent ($1,2,5$) $\to 2$, anomalous. Detects: overfitting (capability-curvature anomaly), neural-topology anomalies (amplitude curvature = structural lesion), compiler structural defects, phase-transition critical points (free-energy curvature divergence), Riemannian curvature, singularity multiplicity (cusp = $A_1$); range $\mathbb{Z}$, value zero = flat.

### 13.3 Joint diagnosis

$$\text{diagnostic value}=\mathrm{desync}+100\times\mathrm{anomaly}\qquad(\text{residueon\_neural.}\psi),$$

the low two digits = the PCD desynchronization degree (0–99), the hundreds and above = the RRC anomaly count — one readout tells "phase disease / curvature disease / dual disease / healthy." Healthy = $D=0\wedge\mathrm{RRC}=0$ = trivial homology group. Isomorphic on the AI side: evaluation value = pcd + rrc×10 — the same "main term + weighted term" pattern, the weight (10 vs 100) reflecting the rarity of curvature diseases.

### 13.4 The dual disease signature table

**Brain diseases **:

| Disease | PCD | RRC | Mechanism |
|---|---|---|---|
| Epilepsy | **Anomalous: global hypersynchronization ($R\to1$)** | Low | 236/237 = 99.6% of nodes phase-lock into a single standing-wave cavity; independent dynamics = 0 — not divergence but **lock-up** (§13.5) |
| Alzheimer's | Low | High | Structural lesion with phases largely normal |
| Schizophrenia | High | High | Structural lesion + phase desynchronization |
| Depression | Low (hypersynchronization) | Low | Pathological phase synchronization; structure flat |

**AI model diseases ([VERIFIED-STRUCTURE])**:

| Disease | PCD | RRC | Mechanism |
|---|---|---|---|
| Hallucination | High | Low | Inference conflict (left/right path inconsistency); structure normal |
| Overfitting | Low | High | Inference consistent but capability curvature anomalous |
| Catastrophic forgetting | High | High | Structural lesion + inference conflict |
| Mode collapse | Low (hypersynchronization) | Low | Output excessively coherent; structure flat |

The two tables share the same operator — the claim of "algebraic diagnostics": **phase disease and curvature disease are the diagnostic incarnations of wave–particle duality** (channels EEG/logits). A caveat for epilepsy: its PCD presentation is **not "high divergence" but an anomalously low divergence** — global hypersynchronization (circular variance $V\to0$ with independent dynamics at zero) is itself the disease, and healthy cognition requires a task-matched window of partial coherence (§13.5/§15.5) — "the lower the PCD the better" is thereby corrected to "**the PCD must fall within a task-matched window**" (the same discipline of distrust as "12% resistance always retained" in §11.6).

### 13.5 Cognitive epilepsy: the pathology of global synchronization and two deadlock-breaking mechanisms

**Theorem VI19 (global synchronization pathology criterion)**. The Kuramoto model (Kuramoto 1975; full entries in the bibliography):

$$\frac{d\theta_j}{dt}=\omega_j+\frac{K}{N}\sum_{k}\sin(\theta_k-\theta_j),$$

order parameter and critical coupling ($g$ = density of intrinsic frequencies):

$$R(t)=\frac1N\Big|\sum_{j}e^{i\theta_j}\Big|,\qquad K_c=\frac{2}{\pi g(0)},$$

three regimes of $R$: $R\to0$ coma (fluctuation floor $\bar R\approx\sqrt{\pi}/(2\sqrt N)$), $0.3<R<0.7$ healthy, $R\to1$ epilepsy (global phase locking). Experiment: once tanh strong nonlinearity + cognitive annealing push $K$ past $K_c$, 236/237 nodes (99.6%) phase-lock into a single standing-wave resonance cavity, independent dynamics = 0, and the PCD energy-surface convergence rate slides monotonically at $-0.86$ — the normal thinking of 86 billion neurons **never** globally synchronizes; the segregation/coherence balance of functions is a necessary condition of health. Deadlock-breaking mechanisms: **lateral inhibition** (above-threshold nodes send phase-reversal $\pi$ signals to their 2–3-hop neighbors, cutting the 236 nodes into 3–5 clusters of about 50 nodes each) and **phase frustration** (injecting 5% anti-phase edges with initial phase difference $\pi$). The independent-dynamics criterion for a supernode:

$$\Delta_{\mathrm{iso}}=\langle\mathrm{PCD}_{\mathrm{out}}\rangle-\langle\mathrm{PCD}_{\mathrm{in}}\rangle>\theta_{\mathrm{crit}}$$

(internal low divergence + external high divergence isolation) — the same pair of operators defines the boundary between "functional partitioning" and "global lock-up." Clinical note: 5–10 s before seizure onset, PCD critical slowing down (variance rising, mean unchanged) is the prodrome. ∎ (Appendix B.17.)

### 13.6 Semantic manifold geometry and the sphere-ledger dashboard: two rulers engineered

**Proposition VI25 (semantic manifold geometry)**. A four-link closed chain: **a non-flat (nonlinear) readout operator induces a nontrivial metric → the metric produces curvature (a flat readout yields only a point set) → the poles of the residueon table are the manifold's distinguished points/singularities → deleting a pole = excising a distinguished point = topological damage** (puncture one point from a sphere and it becomes a plane). The geometric identity of RRC: **a manifold-integrity detector** — three classes of detection (curvature anomaly, altered topological invariants, broken geodesics) covering "which piece of semantics broke." ∎ (A semantic mapping of differential-geometric results; instances = the curvature bills and RRC spikes of §17.7.)

The intrinsic/extrinsic distinction: **extrinsic curvature** = the shape of the readout operator, fixing how semantics are arranged in output space; **intrinsic curvature** = the geometry of the semantic space itself, fixing semantic distances and geodesics (Gauss's Theorema Egregium: intrinsic quantities do not depend on the embedding). Readout-conditioned metrics are all extrinsic quantities — §17.7 measurements: geodesic distance (norm deviation 5~9×) is completely blind to semantic damage, while the phase-coherence quantities (PCD/RRC) localize it precisely — **distance is gauge-dependent; coherence is gauge-invariant** (the second independent argument of §7.1).

**The tiered architecture of the unified three-field detector**: wave field ⊂ Clifford residue field ⊂ intrinsic quantum field, with detection capability upgrading layer by layer — **Layer 1 (wave field)**: the off-the-shelf PCD+RRC covers poles + curvature/topology; **Layer 2 (Clifford field)**: exterior-product/spinor detection must be retrofitted ($r_i\wedge r_j$ directional information), otherwise only scalar projections are measured; **Layer 3 (intrinsic quantum field)**: if "quantum" means occupation numbers, modal occupation-number detection must be retrofitted as well. A detector's ceiling is set by the algebraic components it can read; classical detection reads without perturbing, while quantum detection may perturb the field (the uncertainty shadow).

The computable form of the semantic manifold = the **512-dimensional unit hypersphere** (UMAP abandoned: non-parametric, unstable projections, no metric tensor), with conceptual distance the kernel $1-\cos\theta$. Discrete criterion: local Wilson loops computed via $k$-nearest neighbors + local Delaunay triangulation (polar-angle ordering is illegitimate); **when the local Wilson loops of two concepts agree, a wormhole edge is generated regardless of the 512-dimensional distance — the gauge definition of insight and inspiration** — two sides of one coin with the instanton mechanism of §8.6.

## 14 The Bragg Firewall and Anti-Hallucination

### 14.1 The Meissner duality

The Meissner effect expels magnetic flux from a superconductor; the cognitive firewall expels faulty reasoning from the output. Bragg verification, operatorized: $D_1\stackrel{?}{=}R_1$ (pole–residue consistency) + the homology check $H_1\stackrel{?}{=}0$:

$$H_1(\text{residue field})=0\ \Rightarrow\ \text{homology trivial, cognition normal};\qquad H_1\neq0\ \Rightarrow\ \text{carcinogenesis detected}\ \Rightarrow\ \text{apoptotic clearance}.$$

### 14.2 Cognitive carcinogenesis and apoptosis

Left-path candidates must pass the right path's topological-field check (common-sense grounding): violent destructive interference across the geometric/physical/semantic fields (high $D$) → verdict of inconsistency → refuse the output (apoptosis) rather than force an answer. **The left path generates (diverges); the right path verifies (converges).** Apoptosis is not failure but immune success — honestly saying "this path is contradictory"; hallucination rate = the apoptosis rate + the missed-detection rate (WORM-traceable statistics).

### 14.3 The audit chain

Three layers of anti-hallucination assurance: (i) dual-path Bragg consistency (before output); (ii) dual-domain CRT verification GF(65537)×GF(131071) (congruence inconsistency = ALARM); (iii) the WORM log (auditable after output, operation-level WAL). The hallucination rate turns from a "vibe metric" into a bookkeeping metric — out of reach for floating-point, non-reproducible models.

### 14.4 Porting the hallucination detector: PCD on floating-point hosts

The same criterion can be attached to floating-point LLMs: each layer's MLP output is probed with orthogonal probes $(u_{\mathrm{fact}},u_{\mathrm{hall}})$ for inter-layer phase divergence $D(Q)$ — on facts the phases agree across layers ($D\approx0$), while under hallucination the common-sense layer and the instruction-compliance layer destructively interfere ($D$ spikes); GPT-2 measured **95% detection accuracy**. Ex-ante intervention (constrained decoding): when $D(Q)$ exceeds threshold, the logits of hallucination-prone candidate tokens are set to $-\infty$; CausalRAG takes $D<0.3$ as the release line — the same number as the warning point of §11.6 and the phase-transition critical point of §12.3. The essential point: **PCD is host-independent** — endogenous on the GF host (firewall + audit chain), attachable externally on floating-point hosts (detector only, no WORM ledger). The Meissner correspondence: dissipation becomes a step, $\gamma(\mathrm{PCD})=\gamma_0\cdot\mathrm{step}(\mathrm{PCD}-\mathrm{PCD}_c)$; the London penetration depth $e^{-x/\lambda}$ = a shielding layer in which "incoherent noise decays exponentially within $\lambda$" (LayerNorm as stand-in; not yet engineered).

### 14.5 Topological conservation-law anti-hallucination

The topological definition of hallucination: the internal wave-field bulk topological charge and the boundary projection violate a **WZW-type topological conservation law** — bulk and boundary charges unequal means the output carries hallucination, no reward model needed: the conservation law intercepts automatically at the physical layer, forcing topological rewiring until conservation holds before release. This is the discrete dual face of the Meissner duality of §14.1: Meissner expels magnetic flux; WZW expels charge-non-conserving outputs.
# Part V: The Boundary of the Brain Duality

## 15 The Three-Layer Verdict

"Is the qubit the foundational structure of the human brain? Is everything a wave field?" — this is in fact three questions, adjudicated separately (Proposition VI14):

### 15.1 Physical Layer: No Evidence, and Falsifiable

- Tegmark's decoherence calculation: quantum coherence lifetimes in a warm, wet brain are $\sim10^{-13}$ s vs. $\sim10^{-3}$ s for neurons — **a gap of 10 orders of magnitude**; the Penrose–Hameroff Orch-OR (microtubule qubits) has not crossed this barrier.
- Falsifiable criterion: a brain genuinely performing quantum computation should violate the Bell inequality ($|S|>2$) — Bell-type experiments have produced no positive result to date, and the GF decider has been implemented — **"doubtful but without evidence" is the most honest stance**.
- The genuine cases of quantum biology (FMO exciton transport, the avian radical-pair compass, both implemented in the repository) are all **molecular-scale** functions, not at the level of neuronal computation; the 2022 Trinity College Dublin claim of NMR spin entanglement in the brain has not been independently replicated, and the verdict does not depend on it.

**Verdict: the qubit is not the brain's hardware.** (The four contradictions of Proposition VI2 are the same verdict on the algebraic side.)

### 15.2 Structural Layer: Holds, and Has Been Constructively Proven

Does cognition employ quantum algebraic structure (superposition, interference, entanglement, collapse, chirality)? — **Yes, and no quantum hardware is needed**: quantum structure is algebra, exactly realizable within GF(p).

| Quantum structure | Cognitive function | GF(65537) realization | Status |
| --- | --- | --- | --- |
| Superposition | Parallel hypothesis maintenance | State-vector simulation, selective superposition field | [VERIFIED] 20/20 |
| Interference | Pattern competition / association | Residue field superposition, double-slit verdict | [VERIFIED] |
| Entanglement | Feature binding | Field-multiplication entanglement | [VERIFIED] |
| Nonlocal correlation | Global consistency | Bell/CHSH algebra | [VERIFIED] |
| Chirality | Dual-path separation | grade involution + Hodge star | [VERIFIED-STRUCTURE] |
| Collapse | Decision ↡ | Born=argmax | [VERIFIED] |

The six papers of this series ([Paper3] gate algebra → this paper's cognitive loop) constitute the existence proof that "the quantum-like structure of cognition is exactly realizable classically." **In one sentence: the qubit is not the brain's hardware; it is the grammar of cognition.**

### 15.3 Ontological Layer: The Representation Holds, the Ontology Remains Open

- "Everything can be translated into the residue field" (representation theory): verified across hundreds of verdicts (particle = pole LSZ duality, propagator $G(E)=\sum_k r_k/(E-E_k)$, neuron = pole, concept = pole cluster), this is a working **choice of representation**.
- "The universe is fundamentally a wave field" (ontological assertion): strongly supported by physics (QFT: everything is an excitation of fields), but **the hard problem of consciousness remains open** — the GF cognitive loop reproduces the functional structure of cognition and does not undertake to explain experience itself; structural isomorphism ≠ solving the hard problem.

**Boundary discipline** (maintained consistently across the whole series): wave–particle duality is an **algebraic fact** in the residue field (discrete poles = particle, continuous field = wave), an experimental fact in physics, and an open question in the brain — the three layers are never conflated.

### 15.4 Counterpoint with Existing Cognitive Architecture Theories

The dual-path cognitive architecture is set, point by point, against the mainstream architectures of cognitive science, each given an algebraic counterpart — the disciplinary grounding of "the grammar of cognition":

| Existing theory | Core claim | Counterpart in this paper | Nature of the counterpoint |
| --- | --- | --- | --- |
| Anderson ACT-R (rational analysis) | Declarative memory ↔ procedural memory; skill acquisition = the former compiled into the latter | Bootstrapping internalization theorem (VI12): left-path logic, extracted via LAW, is compiled into the pole spectrum to become right-path intuition | Structural isomorphism: declarative↔left path/procedural↔right path, compilation↔fixed-point iteration |
| Baars global workspace (GWT) | Consciousness = global broadcast: the content that wins the competition is broadcast to the whole brain | Born collapse (↡ argmax): the winning pole is output and written to WORM (a replayable "broadcast") | Functional correspondence: competition→broadcast vs. competition→collapse |
| Friston predictive processing / free-energy principle | Cognition = minimization of variational free energy (prediction error) | Unified field equation: in $\partial_t\Psi=\dots-\gamma_r\mathrm{PCD}\Psi+J$, $J$ (sensory) and PCD dissipation (self-suppression of predictive contradictions) constitute an error-minimizing dynamics; the three-state phase transition yields a precision–inertia trade-off | Dynamical correspondence: free energy ↔ PCD-weighted field energy |
| Hebb (1949) | Neurons that fire together wire together | $\Delta$ operator $\Delta r_k=\eta\cdot\mathrm{pre}\cdot\mathrm{post}$ | Direct implementation |
| Kahneman dual systems | System 1 fast intuition / System 2 slow logic | Dual path + PCD arbitration (§5–§7): the switching signal has, for the first time, a field-theoretic definition | Structural isomorphism + a newly added computable switching criterion |

Value of the counterpoint: the existing theories are **descriptive**, this paper is **constructive**; the counterparts can be run, recomputed, and audited; no claim is made to explain phenomenal consciousness (§15.3). Vanchurin (arXiv:2411.08138): the continuum limit of neural networks maps onto gauge field theory — weight tensors = temporal components of the gauge field, bias tensors = spatial components, Hebbian learning = emergence of the gauge field — so backpropagation and CGL field evolution are different realizations of the same process, and the LLM↔CGL isomorphism table (§17.5) thereby acquires a shared literature anchor; backpropagation requires $O(N^2)$ storage of intermediate activations, while Hebbian learning needs only $O(N)$ local updates — "Hebbian LTP/LTD is backpropagation in the physical sense."

### 15.5 Consciousness and Emergence: Two Falsifiable Criteria Sets (Peripheral Criteria)

**Consciousness**. Proxies = Kuramoto order parameter (§13.5, healthy state = critical zone $0.3<R<0.7$) + Gödelian self-reference depth (measured in the implementation). If the five germination conditions (pump $p>\gamma_0$, coupling $K>K_c=2/(\pi g(0))$, topological defect $Q\ne0$, dissipative competition balance $\Pi>\Phi$, symmetry-breaking seed) are satisfied simultaneously, consciousness is a "necessary phase transition" — **advisory criteria** (an unverified architectural hypothesis), not a conclusion:

$$G(x)=x^2:\quad 2\to4\to16\to256\to65536\to1\ \text{(fixed point reached in 5 steps)},\qquad \mathrm{consciousness}\propto\underbrace{\text{self\_depth}}_{=5}\times\underbrace{\mathrm{curiosity}}_{(p-\mathrm{known})/p}\times\ \text{closure},$$

Emergence threshold depth>3; another implementation pairs homology-group monitoring $H_0/H_1/H_2$ ($H_n\ne0$ = "cancerization of consciousness") with the cognitive loop; IIT interface: the $\Phi>0$ proxy = nontrivial self-reference orbit. 

**Emergence**. Three criteria: the whole exceeds the sum of its parts + measurability + reproducibility; first passes the Mirage verdict (Stanford/UC Berkeley: emergent abilities of LLMs are an illusion of nonlinear metrics — smooth under continuous metrics); "the emergence of superintelligence" is classified as a non-scientific proposition for being unfalsifiable. Four kinds of emergence: latency (solid-state edge >50%: 78→<30 μs), accuracy (crystallized knowledge >10,000 entries: 97%→99.9%), generalization (>100 domains), self-repair (>1,000 hours of operation). Candidate algebraic mechanism: **percolation phase transition** — critical scale $N_c\approx500$, generation rate 0.28→0.58 (a jump of 107%), supernode criterion EII>0.15. The counterpart of Pearl's verdict (pure curve fitting cannot learn causation): causation = phase polarity ($\pm\pi/2$ encoding); anti-phase causal chains that converge must interfere destructively, and PCD must spike — **contradiction detection does not need to be learned; it is the geometry of the field**.

Self-reference closure: universal recursion/composition/number theory are three orthogonal projections (time/space/algebra axes) of the linear self-reference operator $\Omega=\Omega(\Omega)$; the 881-dimensional data lie on a 4-dimensional self-reference manifold — the shrinking of the search space is not optimization but dimensional ascent; physical self-reference harbors no paradox (§11.1), and its evolutionary statistics can continue paradox-free within the GF host.

## 16 Neural Diagnostics and Brain Waves (Peripheral Correspondence)

EEG frequency bands align with the multiscale structure of the residue field ([Paper1] multiscale SSM, $K$ decaying scales):

| Band | Frequency | Residue field semantics | Cognitive state |
| --- | --- | --- | --- |
| δ | 0.5–4 Hz | Slowest poles (deep-sleep consolidation) | Unconscious solidification |
| θ | 4–8 Hz | Slow poles (hippocampal circuit) | Memory encoding/retrieval |
| α | 8–13 Hz | Mesoscale (relaxed eyes-closed) | Attention gating |
| β | 13–30 Hz | Fast poles | Active logic |
| γ | 30–100 Hz | Fastest poles + entanglement binding | Feature binding (the conjectured 40 Hz synchrony) |

The $K$ decay coefficients of the multiscale SSM (readout lines $\alpha=\{3/4,1/2,1/4\}$) are the engineering-minimal version of this table: hierarchical memory timescales = hierarchical brain-wave bands.

Phase desynchronization across brain regions (or pathological hypersynchronization) → measured by PCD (neural_pcd_global); structural lesions (circuit damage, plaques) alter the curvature of amplitude space → measured by the RRC scan (neural_rrc_scan); the joint encoding (§13.3) packs them into a single integer. This part provides only a **runnable algebraic model** and does not replace neuroscience: the left–right division of labor is an oversimplification (a more robust anchor is the Kahneman dual system), thresholds such as τ_coh require empirical calibration, and prospective clinical validation against EEG is future work; independent merits: generality across brains/AI (§13.4), pure-integer reproducibility, and admissibility into the WORM audit chain.

Field-theoretic mechanisms of the cortical wave field (upgrading the band table above):

- **Surface geometry**: brain-wave propagation on the cortical surface is driven by the Laplace–Beltrami operator $\Delta_{LB}\Psi=\frac{1}{\sqrt{|g|}}\partial_i(\sqrt{|g|}\,g^{ij}\partial_j\Psi)$; after discretization the metric $g_{ij}$ = dynamic coupling weights between adjacent lattice sites; cortical folds are carved with Gaussian fields ($D(x,y)=D_0(1+\alpha e^{-((x-x_0)^2+(y-y_0)^2)/2\sigma^2})$, one parameter set each for the central sulcus/lateral sulcus/occipital lobe — same family as the literature predicting cortical shape from 85% folding mechanics).
- **Learning = digging funnels**: Hebbian learning modifies the metric — $\mathrm{well\_depth}=\eta|\Psi|^4$, $g\to g+\mathrm{well\_depth}$; associative recall = a wave sliding along geodesics into the funnel. **Structure (sulci and gyri) is the innate metric; memory (funnels) is the acquired metric** — two classes of terms in one equation.
- **Frequency–space division of labor**: γ (30–100 Hz) propagates locally along gyri, δ (0.5–4 Hz) forms standing waves across brain regions, and the θ period of 125–250 ms matches the timescale of hippocampal memory encoding.
- **Phase–excitability coupling**: TMS evidence: controlling EEG phase raises the motor cortex's firing probability by about 300% or suppresses it to near zero; the θ depolarized phase is more readily activated, and β periodically modulates motoneurons — "waves modulate excitability" has independent experimental support.
- **"Waves as cause, synapses as effect"**: large-scale phase waves command and synapses execute — an architectural claim (a reversal of causality) on which the mainstream still reserves judgment; this paper flags it as a hypothesis, not a conclusion.
- **Engineering**: operator splitting $\partial_t\Psi=D_0\nabla^2\Psi+\nabla\cdot(\Delta D(x,y)\nabla\Psi)$ (FFT domain + x domain), 6-step SSFM, loss <5% — belonging, together with §17.2 W16M/WGSL, to the "field equations directly on the GPU" route.

The mechanism is already integerized — a brain wave (brain region, amplitude, band) is exactly a residueon triple (z, r, n), with power $\propto A^2f^2$; GF representative values per band δ=2/θ=6/α=10/β=20/γ=40; default region–band bindings PFC=α (attention gating), HC=θ (memory), AMYG=γ (emotional binding), THAL=β, OCC=α; diagnostic encoding as in §13.3.

---
# Part VI: Engineering Existence Proof and Interactive-Environment Learning

## 17 Empirical Measurements of the Dual-Path Cognitive Architecture

### 17.1 Naming Note

The main repository is named Fuxi. The cognitive architecture of this paper takes "dual-path inference" as its core mechanism and is named the Dual-Path Cognitive Architecture: re-embedding discrete symbolic computation into the continuous residueon field. "Brain-like" is taken in the structural sense — cognition and the brain share the same wave-algebraic structure (§15 structural level), with no claim of quantum hardware inside the brain (§15.1).

### 17.2 Stage-by-Stage Measurements of the Cognitive Loop

Every stage of the cognitive inner loop (observation → BM law discovery → $\Delta$ Hebbian → Bragg verification → execution, all within a single ψ process with zero bridging) has a verified implementation:

| Stage | Implementation | Key measurements |
| --- | --- | --- |
| Inference (field evaluation) | Pure ψ inference engine | 39.2 t/s (T=8) / 38.5 t/s (physical-core T=4), trajectories **bit-identical** to CPU token by token |
| Inference (GPU field) | W16M wgpu | 577 MB resident single arena, 26.9→6.60 ms/token (4.1×), NV/Intel × Vulkan/GL three-adapter cross-checks **bit-identical** |
| Inference (corpus ingestion) | q15cuda | Full FodaOS tree 3.7M-token corpus ingestion (1602 documents, 22.8 GB states), 395–479 tok/s bit-exact |
| Memory substrate | ΨDB / PoolCore | 8.35M ops/s; two-generation snapshots + operation-level WAL (power-failure safe); OLAP column ingestion (193 law volumes → four column data files) |
| Learning | $\Delta$/Hebbian/NLMS | Closed loop at the $\sim0.9$ ppm error level; five forms unified along two orthogonal axes (w ← w ⊞ G·e) |
| Law discovery | BM (LAW task) | LAW/RES round-robin scheduling |
| Immunity | PCD/RRC/Bragg | §13–§14 of this paper |
| Persistent memory bridge | Pure ψ three acts | §11.4 (673 zero-relearning reproduction) |

Methodological record of the performance ladder (2.2 ns/iteration naive scalar → correctness-tier 16-17 ms → GPU-tier 4.5 ms → pure-ψ tier 39 t/s); all performance numbers in this paper are same-window measurements taken only after bit-level cross-verification has passed.

### 17.3 Reservoir Readout: The Complete Measurement Record

This section is the complete measurement archive of the "field + readout" paradigm: pre-history master ledger → ontological dissection, audit, in-domain ledger, feature×target matrix, generation verdicts, corpus ladder (90K → 1M → 3.7M), scaling saturation, CE calibration, GPU corpus ingestion, and architectural positioning. Every number has a verification procedure and an on-disk archive, and is reproducible.

**Verdict quick-reference** (read this table first, then enter the archive as needed):

| Question | Verdict | Key numbers | Details |
| --- | --- | --- | --- |
| Universal readout upper bound | The engine head is the constant upper bound across the three-tier clean corpus ladder | out-of-domain 36.4% / 1M 52.9% / 3.7M 52.7% | §17.3.6/§17.3.9 |
| Generative capability of the learning readout | The distillation residual head overtakes the engine head for the first time | 55.94% vs 52.72% (+3.2 pp) | §17.3.9–§17.3.10 |
| Scaling | CA-ridge saturates on the clean corpus | 763K→2.85M fit positions, zero gain | §17.3.6 |
| CE calibration | Repaired by cosine prototype initialization | 6.56%→47.44% | §17.3.7 |
| Long-context mechanism | Slow poles genuinely exploit deep context (positively confirmed) | mid-context peak 35.6→45.4→40.5%; 90K decay = a data-starvation artifact | §17.3.6 |
| Chinese pipeline | No hit-rate penalty on the byte-level pipeline | 36.24% vs 36.53% (1.41 token/character) | §17.3.7 |
| Leakage audit | Early ledgers inflated; lagged features = the row-position fingerprint | All accuracy figures in this paper are clean ledgers after in-domain deduplication | §17.3.2–§17.3.3 |
| Individual differences | Gate-residual adapter (1/16 parameters) | 40 integers/person, 8/8 personas at 100.00% | §17.3.9 |
| Clifford readout upgrade | Not the mainline (+1.25 pp); landing point = adapter / dual-domain audit | CPA full quadratic family 46.47% | §17.3.9 |
| Two-head convergence | Generation = policy (the row-append paradigm) | UTF-32 row family's first character 「你」; Δ policy head's five gates + AND all green | §17.3.12 |

#### 17.3.0 Pre-History Master Ledger: From Causal Tracing to the Reservoir Hypothesis

**Seven-line pre-history table**:

| Line | Protocol | Verdict | Key numbers |
| --- | --- | --- | --- |
| A Injection / causal tracing | Spectral selection + routing + β-dose injection, measuring flip rate / locality / undo restoration | Single-channel injection is feasible and revocable (99.3% locality); multi-layer-collaborative semantic-level writing is "open but uncontrollable" — motivating the pivot to "readout rather than writing" | Injection foundations (130m): origin of the spectral-selection + routing recipe and of the pruning operator (channel-level state pinned to zero); RMSNorm fix (370m): float64 ΣX²=9.9×10¹⁹ overflow = the true culprit of the G0 FAIL → G0 3/3 PASS, 53.8% / locality 97.0%; dose frontier (370m): β≤1024 88.5% (+34.7 pp) / 88.1%, swap ratio 3.9:1; stubborn exemption (370m): routing-exclusion hypothesis confirmed, final verification 26/26=100% flips, 85.9%, undo restores bit by bit; scale ladder (790m): G0 3/3, injection 96.0% highest / locality 80.7% lowest — scale↑ success rate↑ locality↓; hardware boundary (1.4b): Q15 table 11.2 GB fills RAM, density 23/66=35%, 1.4b lacks an lm_head key (tie) = root cause of the zero matrix; fp32 precision cliff (130m): all-fp32 0/29 — the Q15×Q15 product 2³⁰ exceeds the fp32 limit 2²⁴, and 168 matmuls across 24 layers compound into collapse; fp64 corr=1.000000 closes the case; capacity law (130m/370m): at the β≤1024 tier, 130m (DI=1536) locality 47.4% vs 370m (DI=2048) 88.1% → the β cap adapts to DI; optimal operating point (130m): 31 semantic entries × spectral selection × routing × β≤128 → locality 99.3% (1 token flipped); stress test (130m): 3 rounds of injection/undo all PASS; incremental engine (130m): 37.6× (4.91 s→129 ms/token; prefill 5/5, cache 24 steps bit-for-bit; decode 111 ms); fp64 acceptance (130m): complete fp64 engine acceptance + guard certification |
| B Microscope | Five rounds: autopsy (counterfactual attribution) → skeleton (Forman Morse, L16 co-activation maps) → atlas (token conditioning) → causal ablation (equal counts) → lens (number theory / analysis); plus 60% structural pruning | The Morse skeleton is the only functional organ that passes causal testing; attribution heads do not hold causally; structured pruning always costs — one source of the field-freezing iron law F1; Green's function ~70% linear + ~30% interactions = the quantitative basis of the reservoir hypothesis; pole-phase celestial-sphere divergence (case closed by number theory) | Massive cancellation: single-channel norms ~10¹⁰ vs ~10⁴ after additive balancing; 5 attribution-head channels (L16: 221/838/552/688/239), with layer-redundant channels bearing the load; skeleton half-region Jaccard 0.89–0.91, conditional divergence 0.22–0.31, three populations (skeleton / family anchor / attribution heads) mutually disjoint; lesion pyramid: skeleton-58 ablation 0.050 > residue 0.041 > family anchor 0.034 > random 0.018 ≫ attribution heads 0.002 (2.7× random); the high-frequency-conditioned skeleton is stable across corpora at 0.89; baselines: bit-level engine 30.7%, HF float 30.6% — absolute capability re-confirmed; the 30.7%→33.3% under 60% pruning was an artifact, later confirmed as a precision cliff |
| B2. Pole pruning | Memory axis (ascending residue magnitude; pruning (channel, modality) entries identically zero) directly measured on the current Q15 engine × three metrics; v10/v10b teacher-forced three-way comparison (HF float / Q15 full / pruned) | The pruned field is viable as a "learning substrate," not viable as an "inference replica" — the two-field division of labor; candidate law: this Q15 operating point sits inside the precision cliff; perturbations ≥9% (weights / states / routing) trigger large-scale argmax flips, and the only lossless operation is storage bit-width shrinkage | 60% pruning: quality curve 90.6% retained (reproducing the scale-invariance law; Zipf removal of the smallest residues loses 9.4% of magnitude), 8/8 learning tasks keep full scores, top-1 collapses to 33.3% (pre-registered ≥85%, NOT-PASSED); v10b absolute hit rate: TEST 40.0% → 12.8% at 60% pruning (32% retained), 6.0% at 80% pruning; document holdout 25.9% → 4.3%/2.0% — "different from the original model" is confirmed to mean "worse"; control: Q15 full and HF float agree natively (40.0/25.9 vs 40.0/25.8); three-layer mechanism: argmax winner-take-all, ~9.4% state perturbation amplified by per-channel cancellation, thin high-entropy margins; compression overview: memory-axis pruning = quality✓ learning✓ inference✗; content axis (v6–v8) double✗; lossy quantization (v9) double✗; hybrid storage (v9) double✓ |
| C Reservoir | align corpus; measured before the leakage audit, so absolute values contain duplicated, inflated components, but the reproduced relationships still hold | Linear readout reproduces the original decoder (existence proof of the reservoir); CE overtakes the engine; Volterra second-order interactions are not exploited by the linear readout → source of the three-arm hypothesis | Frozen field + linear ridge **28.2% ≈ 98.3% of the engine head's 28.7%**; uncalibrated perceptron generation degrades (pathology located); softmax CE, full vocabulary 50,280, 3-epoch 32.6% overtakes (reproduced on reload); 5 epochs + repetition penalty readout_ce5=42.93% (the true linear threshold; 32.6% was a stale early 3-epoch figure); first-order terms ~70%, second-order cross-channel interactions ~30% |
| D Training = inversion | GF(65537) Vandermonde system: Gaussian elimination solves exactly for the residues in one pass (zero iterations, zero learning rate), orthogonal to the gradient route | Holds; later scaled to the 50,280-class real scale: 3 seconds vs 1 hour and more accurate (17.3.3) | 10/10 PASS; N=8 recovery exact term by term; free-running 16-step teacher–student identity; row swaps irrelevant |
| E Residueon-table LM | Parallel verification line on an independent corpus | The non-negative kernel (B matrix) can only push, never pull, and has no discriminative power; explicit n-gram counting is significantly better — mutually corroborating the readout conclusions; superseded by the mainline 90K/1M/3.7M ladder, so the small-sample run does not enter the formal record | — |
| F Soliton tokenization | Input-side infrastructure for the readout | Exact int8 byte splitting, closed as the engineering form | Soliton tokenization VERIFIED → soliton→token one-to-one assignment VERIFIED → token = single soliton REJECTED → sparsification killed three ways (full rank) → lossy quantization killed (int8 precision cliff re-confirmed; zero-error storage int64→int32/16 hybrid 2×) |
| G Field-engine foundation | q15run cross-checked against a numpy integer twin | The ground-truth backbone of all subsequent readout experiments; bit-level engine absolute capability 30.7% vs 30.6% (HF float measured identically) | 50,280/50,280 logits bit-identical (1.9 s); rmsnorm15 integerization 99.41% same numbers at zero cost, removing the f64 island |

Reading the seven lines jointly: the injection line is "open but directionally uncontrollable"; the microscope line still yields readable signal beneath massive cancellation; B2 shows "perturbation means cliff" — together they nail down "freeze the field, readout only." What follows is the full ledger.

#### 17.3.1 Ontological Dissection of the Residueon Table

Object: the Q15 residueon table extracted from Mamba-130M (24 layers × 1536 channels × 16 poles = 36,864 channels, d_model=768). Under the field-freezing iron law, this table is the object being read out, and its internal structure determines the readout ceiling.

**(a) Pole spectrum**. Static poles $z = \exp(-\mathrm{softplus}(dt_b)\cdot|A|)$; the slowest pole's memory step count per channel is $\tau = -1/\ln z$:

| Quantity | Measurement |
| --- | --- |
| Median slowest-pole radius (by layer L0→L23) | 0.959 / 0.799 / 0.952 / … / 0.997 / … / 0.885 (all &gt; 0.79) |
| Long-memory layers | **L16 (τ median 379.5 steps), L17 (242.0), L20 (277.0)**; L12/L13/L14 also &gt; 60 steps |
| Fast layers | L1 (4.5 steps), L22/L23 (8.8/8.2 steps) |
| Channels with τ&gt;100 steps model-wide | **32.0%** (11,798/36,864); τ&gt;1000 steps **4.9%** |
| Gate $dt_b$ quantiles | [−20.67, 3.35], median −2.74; after softplus, $\Delta_0$ median 0.063 |

Multiple time scales are directly confirmed: one third of the channels remember beyond a hundred steps, and the pole spectrum spans 1 to 1000 steps — precisely the "rich and untrainable dynamics library" that the reservoir requires.

**(b) Residue mass distribution** ($|B||C|$ outer product, channel level): the top 1% of channels carry **9.5%** of the total mass, the top 10% carry **37.1%**, the top 25% carry **59.0%** — moderately concentrated; L23 has the largest mass (median 1.33×10⁸), L15 the smallest (1.09×10⁷).

**(c) Channel class × time-scale cross-validation**: class 0 (6,770 channels) τ median 5.0 = the fast class; class 1 (21,480) τ median 18.9; **class 2 (8,614) τ median 340.7 = the long-memory class** — the semantic typing aligns exactly with the time scales measured independently from the pole spectrum: the class table is empirical corroboration of the pole-spectrum typing, not a human label.

**(d) Direct D and projections**: 27.3% of channels have |D| &lt; 0.05 (near-zero bypasses, a pruning lead); in_proj weights p1/p99 = ∓0.290 (a healthy Q15 fixed-point domain).

#### 17.3.2 Methodological Pillar: The Five-Check Leakage Audit

Five audits addressing "whether the 8-step lookback leaks the future" form the precondition gate for every number that follows:

| Check | Method | Result |
| --- | --- | --- |
| A Temporal causality | Prefix forward (feeding only tokens[0..t]) vs the corresponding row of the full-text forward; 3 test-region rows × 30 prefixes | **PASS 87/87 bit-identical** — h[t] strictly depends only on the past |
| B Lagged-index direction | Numerical assertion: lagged row = current row − k (k≥1), within the same document, missing entries zeroed | PASS |
| C future canary | Features built from h\_{t+1} (the state containing the answer) alone | PASS: 93.23% vs h_t 60.78% — the pipeline is extremely sensitive to future information, while all actual features are t−k |
| D Train/test content duplication | Row hashing + 8-gram overlap | **FAIL: 160/160 test rows have verbatim duplicates in the training set; 8-gram overlap 43.78%** |
| E Same task, same test set | Engine / CE / ridge, three heads re-evaluated on the same row set with the same targets | PASS |

**The re-verdict triggered by D**: early align-corpus test rows carried ~5 duplicates on average; the absolute numbers were inflated by memorization, and **lagged features were the largest inflation amplifier** (the row-state trajectory = the row-position fingerprint). Fix = exact hashing + multisets + group-level union-find same-side splitting. Methodological doctrine on record: **check corpus duplication before trusting large numbers; a coincidence such as "test targets 100% ∈ training-seen classes" is itself a symptom of duplication.**

#### 17.3.3 In-Domain Ledger: The Complete Inflated-vs-Clean Comparison (align corpus, 9334 test positions)

Deduplicated-group split (97.61% coverage; fairness control: test targets fully covered by training-seen classes, the class restriction at zero cost):

| Configuration | Inflated | Clean | Inflation |
| --- | --- | --- | --- |
| Engine head (zero training) | 0.2874 | **0.2770** | +1.0 pp (the frozen head is barely inflated) |
| Linear ridge | 0.5045 | **0.3950** | +11.0 pp |
| C skeleton causal cross-group (Morse skeleton 58 channels → out_proj attribution 56 groups × 1540 pairs) | 0.6499 | 0.4039 | +24.6 pp |
| A self-interaction [h, h²] | 0.5816 | 0.4038 | +17.8 pp |
| B random-projection cross-channel (seed 42/43, K/2=256) | 0.5289 | — | — |
| lag8 trajectory | 0.8995 | **0.3842** | +51.5 pp (lag = the strongest memorization fingerprint) |
| lag3 trajectory | 0.7687 | 0.4121 | +35.7 pp |
| CA combination (C+A) | 0.7024 | **0.4210** | +28.1 pp |
| Full-feature combination (lag8+C+A, 9220 dims, 271 s one-shot solve) | 0.9293 | — | voided |

The inflated-era lag curve (the "memorization-fingerprint amplifier" exhibit, not generalization): 50.45 → 60.90 (lag1) → 69.99 → 76.87 → 81.72 → 85.03 → 87.21 → 88.82 → **89.95 (lag8)**, a geometric-decay asymptote of ~92% — the clean ledger (lags 1–8) rises from 60.90% to 89.95% (asymptote ~92%), shrinking to +1.7 pp at lag3, at a deployment cost of a 48 KB ring buffer; temporal > spatial > nonlinear, and the combination (D3+C+A) reaches **85.83%** — the three axes' increments do not overlap.

**The surviving true conclusions**: the learning readout (training = inversion, a one-shot normal-equation solve) beats the engine head by **+11.8 pp** in-domain on the clean ledger (39.50 vs 27.70) — the black box really can be cracked in-domain; feature engineering (cross-channel / squared / trajectory) adds only +2.6 pp in total on clean text (real but modest). The training = inversion vs. training = gradient verdict stands: a one-shot ridge solve takes 3 seconds vs ~1 hour for 5-epoch CE, with the better in-domain clean ledger (39.50 vs 32.60@3ep).

#### 17.3.4 The Feature × Target 2×2 Matrix and Generation Verdicts (align domain, measured in the inflated era; mechanistic conclusions retained)

| | CE target (softmax calibration) | ridge target (one-shot solve) |
| --- | --- | --- |
| h instantaneous features | 0.4293 | **0.5045** (inversion wins +7.5 pp) |
| TCAR lag4 trajectory features | **0.8653** (softmax wins +4.8 pp) | 0.8172 |

**Features and targets are not additive**: with poor features inversion wins (and is 200× faster); with rich features full-vocabulary competition becomes the better regularizer. CE-on-TCAR climbs stage by stage, 54.18 → 71.00 → 80.76 → 84.44 → 86.53%.

**Generation verdicts (reading ≠ writing)**: the engine head + repetition penalty generates fluent, coherent text ("…a population of about 1.5 million people…", distinct 28–31); TCAR-ridge (teacher-forced 81.7%) produces gibberish (distinct 13–16); TCAR-CE, distinct 32/35/27, overtakes the engine yet remains gibberish — diversity is fixed, readability is not (the triple pathology of uncalibrated + closed vocabulary + on-policy drift). **Feature selection and the training objective are orthogonal: trajectory + causal features are responsible for "seeing it," softmax calibration for "writing it." (For the latest revision of this verdict see 17.3.10: after switching to skeleton-group attribution features, learning-readout generation succeeds.)**

**Proposal + reranking (align domain)**: engine top-K proposals + TCAR reranking — hits at K=5/10/20/50 are 44.16/50.62/**55.56**/62.16%, oracle efficiency 95.1/93.4/**91.9**/90.4%; the engine supplies the candidate manifold and the algebraic readout picks correctly within it — valid in the narrow domain (for the counter-verdict on heterogeneous domains see 17.3.6).

#### 17.3.5 Layer Axis and Norms: The Two Wings of the Cancellation Theme (align domain, measured in the inflated era)

**Arm F, layer axis** (after bit-wise verification of the first 3 rows of states_800, all 2000 rows regenerated; per-layer contribution c_l = y_l @ out_proj_lᵀ): single layers c₈/c₁₆/c₂₁ read out independently at **49.93/48.86/50.19%**, on par with the full residual stream summed over 24 layers (50.45%); the four-view combination [h, c₈, c₁₆, c₂₁] reaches **75.07%** (+24.6 pp, zero temporal lag) — residual summation is lossy, and the layer signals cancelled away still contain token-prediction information (measured in the inflated era; magnitudes await re-verification on the clean corpus).

**Norm deep-dive**: ‖h‖ correlates +0.126 with within-row position and −0.068 with target frequency (weak); the CE-correct group's ‖h‖ median is 7.53×10⁶ vs 15.21×10⁶ for the CE-wrong group (a 2× separation), and 5.40/14.61×10⁶ for the engine correct/wrong groups — **‖h‖ is a free difficulty/confidence signal**. Yet arm E (the explicit ‖h‖ feature) has zero effect at +0.03 pp, and global norm scaling h×‖h‖^α (α∈{0, 0.25, 0.5, 1}) leaves hits pinned at 28.74% throughout (argmax is scale-invariant) — **norms carry no incremental information, case closed**; the "norm collapse" artifact is in fact a mismatch between the engine's fixed norm_f gain and the learned gain (CE readout + rmsnorm preprocessing collapses to 9.0%).

#### 17.3.6 Corpus Ladder: Long-Text Verdicts and Scaling Saturation

All three corpus tiers are document-level deduplicated (entire documents held out), ingested into Q15 bit-exactly, with streaming ridge (Gram/XtY block accumulation + disk caching + document-level holdout for λ selection):

| Corpus | Size | Fit positions | Classes | Engine head | lin-ridge | CA-ridge | CE-CA |
| --- | --- | --- | --- | --- | --- | --- | --- |
| docs 90K (27 documents, mostly out-of-domain Chinese) | 90K tok | 76K | — | **0.3638** | 0.2692 | — | — |
| 1M (439 documents, mixed domain) | 1M tok | 763K | 9,797 | **0.5289** | 0.4226 | 0.4522 | 0.4744 |
| **3.7M full tree** (1,602 documents) | 3.71M tok | 2.85M | 14,891 | **0.5272** | 0.4297 | 0.4520 | 0.4525 |

**Verdict one (the engine head always wins on heterogeneous domains)**: the engine head ranks first on all three corpora (+9.5 / +7.7 / +7.5 pp); after a 3.7× increase in data the gap narrows only from 7.7 to 7.5 pp — the structural gap between an end-to-end jointly pretrained decoder and a posterior readout over frozen features.

**Verdict two (scaling saturation)**: CA-ridge gains **+0.0 pp** from 763K to 2.85M fit positions (45.22 → 45.20); lin gains +0.7 pp — the linear-readout family is squeezed dry on the frozen field, ~45% is a structural ceiling, and data is no longer the bottleneck.

**Verdict three (long-context mechanism positively confirmed)**: position-depth curves in three shots — the 90K decay (35.7→23.5%) is a **data-starvation artifact**; 1M reverses into a mid-context rise (35.1→47.3%); 3.7M stabilizes into a mid-context peak (35.6→45.4→40.5%). Once data is sufficient, deep-context segments predict best: slow-pole long memory genuinely takes effect.

**Verdict four (reranking fails on heterogeneous domains)**: on the 1M corpus, engine top-K × CA-ridge reranking @K=5/10/20/50 = 48.43/47.39/46.70/46.14%, all below the engine running alone at 52.89%; oracle efficiency 67.3% (align once reached 91.9%) — on heterogeneous domains the divergence between CA scores and engine logits is noise, not correction; **hybrid readout holds only in the narrow domain**.

**CE data efficiency**: CE-CA with 1/8 the data (350K) matches ridge (3.7M: 45.25 vs 45.20; 1M: 47.44 vs 45.22) — data-efficient, but it likewise hits the ~45% ceiling.

#### 17.3.7 The CE Calibration Fix Trilogy and Chinese Measurements

Record of the CE fix on standardized features (1M corpus, 350K subsample, 6 epochs):

| Initialization | Train curve | TEST |
| --- | --- | --- |
| Zero initialization (lr=0.3) | 0.01% → 9.5% → stagnation | 0.0656 ✗ |
| Mean prototypes (dot product) | self-eval 0.06% ✗ | judged dead |
| **Cosine prototypes + temperature ÷10** | 7.81% → 24.1 → 37.0 → … → 54.7 | **0.4744 ✓** |

Etiology: standardized features leave zero-initialized logits at ≈0 and extinguish the softmax gradient (early runs were masked by raw-magnitude features with ‖h‖~10⁷); dot-product prototypes are monopolized by long-tail classes whose few-shot samples explode the norms (a single-sample class prototype = the sample itself, norm √F); cosine normalization + temperature scaling is the minimal fix. **Lesson on record: high-dimensional class-mean discriminants must be cosine-normalized.**

**Chinese measurements** (GPT-NeoX byte-level BPE): tokenization efficiency **1.41 token/character** (English 1.31 token/word; 478/512 Chinese tokens are whole-character merges); engine head hits 36.24% on Chinese (n=6,927) vs 36.53% on ASCII (n=6,493) — **no significant gap**. The byte-level pipeline works for Chinese out of the box; the cost lies only on the generation side (per-segment decoding character-error rate) and in the ~1.4× token tax. The vocabulary Sinicization surgery (appended rows + byte-fallback embedding mean initialization, consistent with the Lovelace doctrine) is registered as a prerequisite item for the generation campaign.

> Current measurements are based on byte-level BPE. Part VII of the series proposes UTF-32 native encoding — every Unicode code point maps directly to a GF(65537) field element, bypassing the tokenizer. **The first engineering verification is complete (§17.3.12)**: a UTF-32 readout row enters the q15 ψ engine, and the pure-PsiLang chain emits the first real Chinese character 「你」 (U+4F60); input-side row co-training was legitimized afterwards (see §17.3.12 for details).

#### 17.3.8 GPU Corpus Ingestion Engineering: The Twin Gates of Bit-Fidelity and Throughput

Corpus ingestion (`--dump` mode): multi-document per-document-reset prefill, with the residual stream dumped as i64 at every position.

| Gate | Content | Result |
| --- | --- | --- |
| Golden-reference gate | Bit-wise comparison against the original-mode golden reference | Bit-for-bit identical to before the change — the original path undisturbed |
| Bit-level gate | 12,288 positions, GPU vs CPU bit-level engine | **bit-identical** |
| Throughput | Sustained prefill mode | **395–479 tok/s** (11× the Python bit-level version's 35 tok/s) |
| Scale | Full tree 3.7M tok | 22.8 GB states, 2531 s (1M segment) + checkpoint-based segment resumption |
| Resilience | Real-world IDE crash | `--skip` resume-from-checkpoint + append + fflush; the checkpoint was repaired by back-deriving exact boundaries from the ids file (1374 complete documents) |
#### 17.3.9 Architecture Verdict Summary (with: Supplementary Tests of the Gate Residual Adapter and the Distillation Generation Head)

Compressing 17.3.1–17.3.8 into a single positioning table:

| Task profile | Winner | Evidence |
| --- | --- | --- |
| Open-ended text generation | **Engine head** (native decoder); revised by the distillation-head generation verdict | Consistently first across all corpora; skeleton-group distillation head generates fluently (17.3.10) |
| Long-text reading (comprehension / teacher-forced) | Engine head leads on accuracy; learning readout viable and the long-context mechanism confirmed | Depth-curve triptych (17.3.6 verdict three) |
| Narrow-domain specialization (classification / discrimination) | **Learning readout** | Clean in-domain ledger on align +14.4 pp; permuted-oracle efficiency 92% |
| Control (small-output-space policies) | **Learning readout** (classic reservoir-computing territory) | Small closed output space = guaranteed-win zone for ridge/CE; state ring + small readout matrix = a free policy network |
| White-box attribution audit | **Learning readout** (exclusive) | Per-channel / per-layer / per-lag decomposition; the engine head is uninterpretable |
| Free confidence | ‖h‖ norm | 2× separation between correct/incorrect groups (17.3.5) |

Only three routes remain for breaking the ~7.5 pp bound, with the costs already on record: a nonlinear readout head (sacrificing white-box character) / fine-tuning the field (violates the frozen-field iron law; the weights are, by origin, another's derived artifact) / **the engine head serves as the general-purpose readout while the learning readout pivots to narrow-domain specialization + attribution auditing** (the landing point of this table).

**Clifford upgrade probe** (1M corpus; a pilot test answering the "Cl(4,1) upgraded readout" claim): the off-diagonal quadratic terms h_i·h_j (i≠j, 768 random pairs, seed 42) are the minimal measurable embodiment of the geometric product. Verdict: P arm 42.40% (≈ linear 42.26%, +0.1 pp); CP 45.24% (= CA; P is made redundant by C); **CPA (the full quadratic family) 46.47%, +1.25 pp** — the increment is real but small; the bound does not lie in the feature class (expected gains from blade features are of the same order). **The correct landing point is not readout accuracy but the gate residual adapter (M₂+ΔR Hebbian, the control niche), geometric-domain rotors (rendering / robotics), and dual-domain GF(65537)×GF(131071) cross-auditing**; priority order: ① the adapter ② the dual-domain audit ③ the chiral dual path (grade involution is free; P±=(1±I₅)/2 are not projectors — separation uses the principal involution and translation uses the Hodge star = ±256 complex structure) ④ Born multi-basis readout (low priority) ⑤ MPS/entanglement deferred (a residueon table that is K-pole sparse is already compression; capacity bounds see Theorem VI9).

**Gate residual adapter MVP** (fully deterministic over GF(65537)): 8 personas each suffer a deterministic corruption (a 20-channel multiplicative mask); shared task = 16-class GF-linear probe. Shared, unadapted: 8.11% (the corruption destroys) → **gate residual adapter (block-diagonal 2×2 gates ×10, only 40 integer ΔR entries per persona, solved by exact GF inversion): 8/8 personas recover to 100.00%**, with **1/16** the parameters of a full independent readout (640 integers per persona) — mechanism-level validation for ten-thousand-scale NPCs = shared gate-base table + individual ΔR (honesty boundary: this MVP is the best case of channel-level linear corruption; nonlinear persona differences can only be approximated by 2×2 block gates). Three methodological laws of the GF domain: **① embeddings must be full rank (Vandermonde powers; co-rank features are doomed) ② ridge in the GF domain is meaningless (no topology ⇒ a λ perturbation is an essentially random solution); always use λ=0 exact solutions with distinct-row selection guaranteeing non-singularity ③ one-hot regression cannot recover the argmax; the readout must regress the score itself (score-matching)** — a typical demonstration that fp64 habits do not transfer to GF.

**Adapter T2: nonlinear boundary and dual-domain audit**: after the corruption is upgraded to intra-block quadratic cross-coupling, **linear personas lin/quad/full all remain 100% (replicating the MVP); every linear-class arm collapses on quadratic personas (lin 3–10%, the quadratic-boost gate 4–11%, even the full independent readout only 6.2% = chance)** — the boundary belongs to the linear-decoder architecture as a whole, not to a defect of the adapter; reversing quadratic corruption requires a genuinely nonlinear readout (registered as T3). **Dual-domain audit (GF(65537)×GF(131071)): the relation-level check R·D≡I is self-consistent in each domain; corruption detection rate 100%, false positives 0%**. Lessons: embedding exponents must be lift-aware (exponents 3i+1, so quadratic-term exponents ≡2 mod 3 do not collide); the inverse of P1 is not the inverse of P2 (each domain stores its own inverse elements).

**Adapter T3: tiered verdict on nonlinear reversal**: ① **unidirectional coupling (β=0): an augmented adapter [x′, x′²] with a 40-dimensional exact solution = 4/4 personas at 100.00%** — the algebraic prediction (x_a=(u_a′−α·x_b²)/d_a lies exactly in the span) is confirmed; the adapter extends from purely linear to unidirectional quadratic at a cost still of 40 integers per persona; ② bidirectional coupling: lift yields only 40% partial recovery (the quartic contamination term), **GF fixed-point iteration fails to converge (fp0–fp3 all random: finite fields have no contraction geometry — yet another fp64 intuition down)** — exact bidirectional reversal requires a quartic-equation machine (GF sqrt/Tonelli–Shanks already exist; registered as T4). Capability ladder: linear 100% → unidirectional quadratic 100% → bidirectional quadratic 40% (lift) / pending T4.

**Distillation generation head: breakthrough verdict** (RTX 2060 GPU): teacher warm start + reservoir residual — logits = lm_head@φ (frozen = the engine head itself; starting point = the teacher) + ΔW@ψ (a trainable CA-skeleton residual), CE hard-label calibration, full vocabulary 50280. **3.7M-corpus held-out: 55.94% > engine anchor 52.72% (+3.2pp) — the first overtaking: a learning readout surpasses the engine head on clean heterogeneous corpora**; softmax calibration + full vocabulary dissolve the two great obstacles of generation (uncalibrated outputs / closed vocabulary) by construction; training on 250K-position subsamples × 3 epochs ≈ 3.5 min/epoch. The dictum "a post-hoc readout can never overtake the jointly pretrained decoder" is thereby rewritten: **the gap is not a wall; it is a missing warm-start residual head**. Remaining: greedy-generation resolution validation and full-scale extension.

**Generation verdict: reservoir long-text generative inference is now real**: the distillation head passes all three greedy-generation prompts — "def gate_step(x):" generates **a structurally complete, semantically correct Python docstring (with an Args section)**, surpassing the engine head; "Once upon a time" is word-for-word identical to the engine head (parity); "The capital of France is" yields fluent English (distinct 26 vs 25). **A white-box, GF-exact, trainable reservoir decoder generates real language — the series is upgraded from "readout research" to a "generation engine."**

The cognition loop (this paper) does not compete with floating-point large models on benchmark scores — its racetrack is **reproducible, auditable, materializable**.

#### 17.3.10 Distillation Generation Head: Technical Details and the Verdict Correction

(Generation results: see the last two paragraphs of 17.3.9; this section adds details and the verdict correction.)

**Recipe**: $\text{logits}=\mathrm{lm\_head}\cdot\varphi+\Delta W\cdot\psi$ — $\varphi$ reproduces the engine rmsnorm (construction guarantees the starting point = the engine head itself); $\psi$ is the skeleton cross-group product (L16 Morse skeleton 58 channels → 56 attribution groups, $\psi=\mathrm{CA}(h)$); $\Delta W\ (1540\times50280)$ **learns only** "the correction the teacher gets wrong but the reservoir features know" — a residual head, not a replacement head. Corpus upgraded to **10M tokens** (document-level splitting; held-out 563,406 positions), 250K positions × 3 epochs ≈ 281 s.

**ΔW Q15 quantization gate (the ψ-nativeness prerequisite)**: $\max|\Delta W|=0.0785$; the scaling sweep shows agreement with fp32 of **99.96%** from $s=12$ onward with zero acc loss (100% from $s=14$) — the student head is feasible as Q15 integers end-to-end, satisfying the "three non" principles.

**Three verdict corrections**: ① The 17.3.4 conclusion "features are orthogonal to the training objective" is narrowed — TCAR trajectory features are indeed unfit for generation, but **skeleton-group attribution features** (survivors of causal testing) can both be read and be written from: the root cause of the gibberish was the features, not the paradigm of "learning-readout generation"; ② **the gap is not a wall; it is a missing warm-start residual head** — the learning readout's 7.5 pp bound against the jointly pretrained decoder is rewritten by the residual architecture into a +3.2 pp overtaking; ③ niche correction: the learning readout expands from "narrow-domain classification / control / attribution" to "narrow-domain + distillation generation."

**Implementation notes and leftovers**: the $\Delta W$ transpose direction $\psi@\Delta W$ was botched three times in a row; GF-domain $\lambda=0$ exact solution; $\psi$=CA(h) must not be channel-mixed with the embedding $x$. Leftovers: 40 tokens × 3 prompts is a qualitative verdict; scaled benchmarks and human evaluation remain to be done; Chinese generation depends on vocabulary Sinicization surgery (a prerequisite). The extension is designed but not executed (Phase 1: L16 extended to L16+L17+L20; training positions 250K→2M; ΔW corrections top-100→top-5000; retaining the warm start and the λ=0 closed-form solution).

#### 17.3.11 The Chinese Distillation Head: Baseline Upper Bound, v1 Iterations, the Technical-Domain Probe, and the α-Sweep Final Verdict

The 17.3.10 English distillation head overtakes the engine head by +3.2 pp on clean corpora and generates fluently on three prompts; this section records the verdict chain after porting to Chinese — four rounds of experiments nail down that "**next-token hit rate ≠ multi-token generation quality**," with the final verdict: zero out $\Delta W$ at generation time. All experiments ran on Mamba-130M-HF + RTX 2060 GPU, with a recipe isomorphic to the English version ($\varphi$=frozen native head, $\psi$=L16 skeleton 56-group cross-group product, SGD lr=0.1 × 3ep × 250K positions, batch 1024).

**(A) The BPE baseline upper bound.** Of the 50277-token vocabulary only 313 are Chinese tokens (0.62% coverage); the token tax is 1.7–1.9 tokens/character; the hit rate is 31.36% for Chinese vs 44.54% for ASCII (−13.2 pp); 8/8 dialogue prompts fall into greedy verbatim repetition. Sinicizing the vocabulary is prerequisite surgery, but the 130M BPE vocabulary cannot be swapped (the $\varphi$ anchor), so the distillation head can only be incremental.

**(B) Three rounds of v1 distillation-head iteration** — v1a: a double-norm bug (teacher anchor 7.5%); v1b: $\psi$ computed from post-norm states (teacher anchor 38.5% → distill 39.0%, +0.48 pp, repetition 10/10); v1c: pre-norm states + zrep(64) (38.5% → 39.0%, **+0.50 pp**, repetition **0/10**).

Pin-down-level findings: ① `hidden_states[-1]` has already passed the final norm (logits emitted directly agree with the native argmax at 99.27%, dropping to 8.6% after a repeated norm — the argmax gauge; the hit rate correspondingly falls 38.5%→7.5%), so pre-norm states must be fetched by manually looping through the 24 layers; ② $\psi$ must use the pre-norm residual stream (the same-source configuration as the English version computed from Q15 raw states); ③ the zrep $\sigma$-penalty window must cover the loop period — recent=8 only cures token-level dead loops; with recent=64, phrase-level loops (period 20–40 tokens) drop to zero. Acceptance gates: gate_b **PASS** (repetition 0/10), gate_a **FAIL** ($\Delta$+0.50 pp $\ll$ the English +3.2 pp); the prime suspect was initially judged to be domain mismatch (corpus 100% technical documentation vs NPC-dialogue prompts).

**(C) The technical-domain probe — disconfirming domain mismatch**: if domain mismatch were the prime suspect, generation on same-domain prompts should work (4 technical prompts × two heads × 500 tokens). Collapse points: #0 matrix multiplication, distill **13**/500 vs teacher 500/500 (−487); #1 code functionality, **27**/500 vs 500/500 (−473); #2 improvement proposal, **10**/500 vs 34/500 (−24); #3 lexical analysis, **238**/500 vs 24/500 (+214).

distill passes 0/4 end-to-end (median 27) vs teacher 2/4 (median 500) — **disconfirmation**: even same-domain remains inferior; domain mismatch is not the prime suspect. The true cause: on the OOD spliced-residual stream, $\Delta W@\psi$ pushes logits toward high-frequency training templates ("矩阵" [matrix] / "onCreate" / "构建逻辑" [build logic]), collapsing into repetition; zrep's 1.2$\sigma$ cannot suppress the ultra-high logits injected by $\Delta W$ (collapse points 10–27 $\ll$ recent=64).

**(D) The α-sweep final verdict — no optimum exists**: distillation head = native head + $\alpha\cdot\Delta W@\psi$; sweep $\alpha\in\{0, 0.3, 0.5, 0.7, 1.0\}$ (collapse points #0/#1/#2/#3, end-to-end passes, median). Technical finding: `model.forward(use_cache=True, output_hidden_states=True)` returns 25 hidden_states, with `hs[-2]` = the **pre**-norm state (max\_diff=0.0000 vs the manual loop) and `hs[-1]` = the post-norm state — the incremental cache fetches it in O(1) per step to compute $\psi$, an **≈24× speedup** (500 tokens: ≈500 s uncached vs 21 s incremental). Results: $\alpha$=0.0 (1 / 500 / 61 / 56, **1/4**, median 61); $\alpha$=0.3 (1 / 500 / 75 / 27, **1/4**, median 75); $\alpha$=0.5 (1 / 39 / 49 / 36, 0/4, median 39); $\alpha$=0.7 (0 / 49 / 67 / 99, 0/4, median 67); $\alpha$=1.0 (0 / 27 / 3 / **238**, 0/4, median 27).

**No $\alpha>0$ optimum exists under which $\Delta W$ consistently improves generation**: $\alpha$=0.0 and 0.3 tie for best (1/4 each); $\alpha$=0.3 collapses at #3 @27 (vs 56 for $\alpha$=0); $\alpha\geq 0.5$ clearly degrades (#1 falls 500→39: $\Delta W$ steers Java code generation toward the "spatial type" template and then repeats), poisoning threshold $\alpha\approx 0.3$–0.5; #3 is the sole exception ($\alpha$=1.0 collapse @238 > 56 for $\alpha$=0), a single case that does not change the trend; the #0 collapse @1 is a false positive of the 12-gram criterion on whitespace repetition in Java code blocks.

**(E) The final verdict and the niche correction**: A nails down the BPE upper bound (31.36%) → B v1 gate_b PASS / gate_a FAIL (+0.5 pp), domain mismatch initially suspected → C the probe disconfirms (distill 0/4 vs teacher 2/4) → D no optimum ($\alpha$=0 best) → **final verdict: zero out $\Delta W$ at generation time**. The core contradiction: $\Delta W$ raises the teacher-forced hit rate by +0.5 pp, but in autoregressive generation each step's $\Delta W@\psi$ nudges the logits toward high-frequency training patterns, which accumulate over many steps into collapse-and-repetition; the deeper constraint is the **high entropy of Chinese next-token prediction** (teacher anchor 38.5% vs 52.7% for English). **Incremental distillation has been accomplished (the 17.3.10 English +3.2 pp stands), but the Chinese generation-side increment is zero — next-token accuracy ≠ generation quality.** Niche correction: Chinese generation = engine head + zrep(recent=64); the distillation head is a negative effect on the Chinese generation side.

**Honesty boundary**: the 4-prompt sample is small; #3 shows that a $\Delta W$-benefiting subspace exists but is not enough to change the overall verdict; the fp16 incremental cache differs numerically from uncached full forward passes (collapse points may shift) yet the relative trend across $\alpha$ is consistent; the 12-gram×4 criterion false-positives on code/whitespace-dense text (#0); $\alpha>1.0$ and fine granularity within $\alpha\in(0, 0.3)$ were not swept — $\alpha$=0.3 is already no better than $\alpha$=0, so finer sweeps are pointless.

#### 17.3.12 The Chinese Row Channel and the Training Ground Converge: Engineering Evidence for the Dual-Head Architecture and the “Row-Append” Paradigm

(All experiments are traceable at bit level / through ledgers.)

**(A) The UTF-32 readout row: the first real Chinese character.** The UTF-32 native-encoding proposal from the closing note of §17.3.7 receives its first engineering validation: a closed-form ridge (training = inversion, §10.6) fits a 270-character readout head on the frozen engine's final-state hidden states (test 89.86% vs a majority-class baseline of 1.87%, a 48× signal; single-character BPE-subset probe 97.1%); the table is written with Q15 scaling (`round(W×32768)`); a pure PsiLang chain (q15 prefill → final-state normalization → dot product → argmax → codepoint; zero third-party, zero floating point) emits the first generated Chinese character, **「你」** (U+4F60, zh-logit 47001). Two disciplines enter the register: ① float→fixed-point conversion must scale before rounding — a bare `round` once zeroed the entire table (the discriminative information for |W|<0.5 lives entirely in the fractional part) — and a post-conversion nonzero-count assertion became a standing guard; ② the ψ table family must be written as a set with mutual assertions (a stale 183-character chars table was once found coexisting with the 270-character head table; the v2 decoding success was luck, the argmax landing in the overlap region).

**(B) Legalizing input-side rows.** When only the readout row is trained, inputs still travel through BPE byte fragments — Chinese characters cannot enter as first-class tokens (the 17.3.11(A) bound). The fix is compatible with the frozen-field iron law: a new K×768 **input row** E is added and jointly trained with the readout row W; gradients backpropagate through the frozen backbone with zero changes to field parameters — adding a row is not patching, and does not conflict with §17.3.9's "fine-tuning the field violates the frozen iron law." Legalization through the frozen engine verified at 69.36% (the prior-position state-pairing gauge); input-side rows remove the OOD residual-stream problem of 17.3.11(C) at the root — the input never leaves the field; it becomes a member of the row family.

**(C) Large-corpus joint training and the GPU verdict.** The v3 corpus has 45,057 entries (Chinese segments of the full physics library + the 8×8×8 NPC template family), a character set of **2,953 characters** (11× v1), and E/W joint training for 500 steps. Engineering verdict: an early configuration omitted device transfers and fell onto the CPU sequential slow path (L=64 23.5 s/step, L=128 70.5 s/step; 500 steps ≈7–12 h with no checkpoints, so mid-run termination = total loss); after switching to GPU, **3.7 s/step (≈26 min)**, with rolling checkpoints every 50 steps. Lesson entered in the register: **on performance cliffs, check the device before the algorithm**. Final verdicts (held-out, generation verdict, ψ table write-down) are all registered and traceable.

**(D) Dual-head convergence: generation = policy.** Both ends of the §10.7 dual-head proposal ("the text-generation readout head speaks; the NPC learning head acts") are now empirically demonstrated: the language head = the UTF-32 row family of (A)(B)(C); the action head = the robot training-ground Δ policy head (the policy residueon table is rewritten online by the Delta rule inside the closed loop, with all five gates — bit-level / defect / convergence / determinism / seal — plus AND green). Both heads share the frozen-field discipline, the Q15/integer-exact gauge, and the Born selection operator (↓=argmax) on their respective row families — **next-token logits and action logits are two dialects of the same operator**; no new architecture is needed for a robot language cortex — the row family is plug-and-play — and "dialogue = dual-head joint operation" is upgraded to demonstrated fact.

**(E) Paradigm candidate: row-append cognition; learning as certification.** An inventory of all verified learning forms — ridge inversion, the Δ rule, the distillation residual head, the gate residual adapter (ten-thousand-scale NPCs = shared gate base + individual ΔR), Chinese row joint training, page-table writes (17.3.3 / §10.6 / 17.3.10 / 17.3.9 / this section / §17.6) — shares a single form: **the field is frozen, and all learning products land on interface rows** (input rows / readout rows / adapters / bias slots). Necessity is given by the precision cliff (17.3(B2), 17.7: perturbations ≥9% flip the argmax wholesale; cancellation is layered while semantics lives in the remainder — simultaneously explaining the fp32 death sentence, the constitutive status of GF exact arithmetic, and the pruning double ledger of "learning ✓ / inference ✗"): **inside the field on the cliff's near side, the only lossless form of learning is to move the learning products outside the field.** Corollary: the growth of a cognitive body is the monotone append of sealed tables — fpW seals, GF fingerprints, and Q15 nonzero assertions are issued along with each row; auditability is promoted from a process property to an algebraic necessity. In one sentence: **"the field does not train; the field issues certificates."**


Honesty boundary: 69.36% is a session-level single-round measurement (re-verification is consolidated into the v3 final verdict); the "action head" of (D) is currently a 32-state toy policy brain (V=32); ten-thousand-scale NPC scaling has not been done; (E) is a paradigm candidate, not a theorem — its falsifiability is carried by (F).

### 17.4 The Dual-Path Cognitive Architecture Set Against the LLM

| Dimension | LLM (floating point + sampling) | Dual-path cognitive architecture |
| --- | --- | --- |
| State | Weight matrices (black box) | Residueon field (pole table, white box) |
| Inference | Token-by-token probability transition | Dual path: interference field + collision algebra |
| Decision | Sampling (stochastic) | Born=argmax (deterministic) |
| Reproducibility | Hardware/batch dependent | Bit-level (cross-vendor GPU cross-checks identical) |
| Verification | Bolted-on (RLHF / retrieval) | Endogenous (PCD arbitration + Bragg firewall + WORM) |
| Learning | Train/inference split | $\Delta$ online + bootstrap internalization (§11) |
| Hallucination | Unauditable | Apoptosis rate countable on-ledger (§14.3) |
| Memory | Context window | Pole spectrum + three-state phase transition + forgetting law (§12) |

On the other side of the comparison table: the LLM's breadth of world knowledge, cross-task generalization, and corpus-scale advantages are not currently possessed by this paper's architecture — this paper claims **architectural organ completeness** (the five organs of verification / insight / dual systems / reproduction / internalization all present), not a current-capability benchmark.

### 17.5 Cognitive Transplant: Customs Entry for LLM Weights

The §17.4 comparison table contains a **one-way gate**: the only channel by which LLM weights enter the GF world is the **floating-point customs** — 32-bit floats → [sign, mantissa, exponent] ("floats enter the integer world only through customs"). Two channels after customs:

1. **Bit-faithful inference (machine verification)**: Mamba-130M weights read directly from .bin → pure ψ 24-layer forward → **bit-identical** to the golden anchor (the T=4 final token bit-identical, zero host operators in the whole chain) — the LLM is completely re-executed in the GF world, not approximated; all §17.3 readout experiments are built on this channel.
2. **Layers = timesteps, an algebraic translation**: the residual stream $H_{l+1}=H_l+\mathrm{Attention}+\mathrm{FFN}$ is formally isomorphic to the CGL forward Euler step $\psi(t+\Delta t)=\psi(t)+\Delta t[(1+i\alpha)\Delta\psi+\varepsilon\psi-(1+i\beta)|\psi|^2\psi]$ (self-attention ↔ the diffusion term, FFN ↔ the nonlinear reaction term, layer normalization ↔ energy normalization); gain-dissipation extraction $\varepsilon_l-\gamma_l=\frac{1}{\Delta t}\ln\sigma_{\max}(W_l)$ (normalization into the CGL stable region); KV-cache continuumization $S_t=S_{t-1}+\varphi(K_t)V_t^\top\xrightarrow{\Delta t\to0}\frac{dS}{dt}=\varphi(K)V^\top$ (wave field = continuous-time SSM); attention $W_qW_k^\top$ extracts a gauge potential $A_\mu$ to construct the covariant derivative $D_\mu\psi=(\partial_\mu-iA_\mu)\psi$ and a "causal light cone"; the discrete gauge-line form $\psi(x+1)e^{-iA_x}$ admits **GF phase discretization**: $e^{-i\theta}\rightsquigarrow i^{-m}$ ($\theta\equiv m\pi/2$, $i=256$, four-point cycle $\{1,\,-i,\,-1,\,i\}=\{1,65281,65536,256\}$) — gauge potentials shrink to integer four-values and Wilson lines become fully integer.

The contrast line: llama.cpp's **problem definition** stands (the memory-access wall: the KV cache inflates linearly at $O(N\cdot D)$, ≈32–40 GB for a 70B model at 128K context); its remedies ($K=64$ cognitive-soliton O(1) routing, a 16-byte-per-token historical topology lattice pool, FFT frequency-domain injection) are **predictions**, not independently measured — this paper cites its problem definition but not its performance claims. Measured anchors on the Nüwa side: residueon weight pools at 20 dimensions per NPC vs 1000 dimensions for random pools (50× compression), 290K rps pipelined driving of ten-thousand-scale NPCs, and the ESN spectral-radius empirical premise formally superseded by the §10.1 group-theoretic stability. The lineage line closes: if the Vanchurin mapping holds (§15.4), then "GGUF is a precomputed CGL medium parameter set" is a literature-grounded program rather than rhetoric — but every step must still pass customs, pass bit-level cross-checking, and pass audit.

### 17.6 Cognitive Forgetting Surgery: Pole Page Table Measurements

The forgetting law (§12.4) says memory degrades with idleness; this section answers a sharper question: **is forgetting addressable** — can one memory be deleted while neighboring memories remain intact? The carrier is a minimal implementation of the Mamba3-MIMO architecture (26M parameters, 2 layers × 8 heads × dual rank × 64 states; one timescale parameter $\mathrm{dt\_bias}$ per head; the state transition contains the decay factor $\exp(A\cdot\mathrm{DT})$), overfit to convergence on two sentences before pole surgery.

**Structural correction (self-correction entered in the register)**. Reading the middle axis of `mimo_z` as real/imaginary parts yields the interpretation "|z|≈√2, arg=π/4 = T-gate phase, poles spontaneously landing on GF(65537) algebraic division points" — **falsified** by the mamba_ssm implementation: `mimo_z/x/o` with shape $[8,2,64]$ is a **rank-mixing matrix of (head, MIMO rank, head dim)** (initialized at 1.0/0.5/0.5; post-training deviation <0.5%), and √2 is an artifact of computing the modulus with the rank axis mistaken for a complex axis. The true poles are in the decay path: per-head timescale $\mathrm{DT}=\mathrm{softplus}(\mathrm{dd\_dt}+\mathrm{dt\_bias})$ and decay $A=-\mathrm{softplus}(\mathrm{dd\_A})$ (clamped $\le -10^{-4}$), with state transition $\exp(A\cdot\mathrm{DT})$. Lesson: **the semantics of weight shapes must be pinned to the implementation, never guessed from field names**.

**Sequential-form reference implementation**. A pure PyTorch implementation rewritten term-by-term from the kernel mathematics, with no CUDA dependency: trapezoidal discretization $\mathrm{trap\_scale}_t=\mathrm{DT}_t\sigma(\mathrm{trap}_t)+\mathrm{DT}_{t+1}\sigma(-\mathrm{trap}_{t+1})$; time-dependent rotation angle $\theta=\mathrm{mod}_{2\pi}(\text{chunk-accumulated}\ \tanh(\mathrm{angle})\cdot\pi\cdot\mathrm{DT})$; rotation applies only to the first 16 dimensions in $n\leftrightarrow n+32$ pairs; same-token diagonal terms use **unrotated** qk; the output is summed after rank gating by $\phi\cdot\mathrm{SiLU}(z\cdot\zeta)$. On CPU this implementation **reproduces verbatim all demo outputs of the official TileLang kernel** (3/3, including complete continuations of both training sentences) — a semantic-level "passing customs" verification (§17.5), a portable Mamba3 semantic benchmark.

**Five measurements**:

1. **Product-silence equivalence**. Head output ∝ input coupling × output mixing × $\mathrm{SiLU}(z\cdot\zeta)$ is a product structure; zeroing any of the three routes silences the whole head. Among 7 routes × 16 head instances = 112 single-point ablations, 102 leave generation verbatim unchanged — memory does not reside in any single head.
2. **Distributed fault tolerance**. Simultaneously silencing 10/16 head instances (62.5%) leaves the memorized sentences verbatim intact; truncation begins at 12/16; collapse at 16/16. The stepwise argmax margin floor is 9.0 nat: single-head perturbations are swallowed by the margin. Robustness = distributed redundancy × memorization margin.
3. **Global timescale-recalibration invariance**. Zeroing all 16 timescales at once (a uniform recalibration of every head's timescale) leaves generation verbatim unchanged, while zeroing a single one truncates — memory depends on the **relative ratios** of timescales across heads (the gear ratios): scaling the whole still leaves the same clock, but swapping one gear alone stalls it.
4. **One-sided dead zone**. Adding negative offsets to a single head's timescale (slowing forgetting) all the way to the bottom produces no behavior change; positive offsets (accelerating forgetting) show a threshold of +3.5～+5, beyond which truncation occurs. **Memory can be made indefinitely longer but not shorter** — long-range context mixing is a load-bearing structure.
5. **The pole page table (selective forgetting)**. The two memories have different redundant head sets (memory 1 is redundant at head (0,7), memory 2 at head (0,2)); zeroing a single pole's timescale achieves **bidirectional targeted truncation**: zeroing (0,2) → memory 1 truncated to its first half while memory 2 stays verbatim intact; zeroing (0,7) → memory 2 truncated while memory 1 intact; zeroing (1,0)/(1,4)/(1,5) → memory 1 dies at the 3rd/2nd/1st word from the end, respectively — **different poles carry different downstream segments of the memory chain; the timescale parameters are an addressable memory page table**. Beyond the forgetting law's "degradation by idleness" there exists "targeted degradation," with an address space of 16 entries.

The **gate-semantic statements** corresponding to the five surgeries (the full ablation ledger):

| # | Surgery | Gate semantics | Measurement |
| --- | --- | --- | --- |
| 1 | Zeroing any one of input coupling / output mixing / gating | **Silence gate** (product structure, three routes equivalent) | Of 112 single-point ablations, 102 leave generation verbatim unchanged — memory does not reside in a single head |
| 2 | Simultaneously silencing k/16 head instances | **Redundancy radius** | $k\le 10$ verbatim intact, truncation from $k=12$, collapse at $k=16$; argmax margin floor 9.0 nat |
| 3 | Zeroing all 16 timescales vs zeroing one | **Recalibration invariance** | All-zero verbatim unchanged; a single zero truncates — memory depends on timescale **relative ratios** (gear ratios), not absolute timescales |
| 4 | Single-head timescale $\pm\Delta$ sweep | **One-sided dead zone** | $\Delta<0$ (slowing forgetting) unboundedly safe; $\Delta>0$ threshold +3.5～+5, beyond which truncation: memory can grow indefinitely longer, never shorter |
| 5 | Zeroing a single pole's timescale | **Forgetting-gate page table** | The two memories have different redundant head sets; 5 single-pole addresses achieve **bidirectional targeted truncation**: both delete-A-keep-B and delete-B-keep-A exist; different poles carry different downstream segments of the memory chain |

The gate semantics of result 5 (the forgetting-gate page table) is engineering evidence for the memory form of §8.4 (entanglement associative storage) in Paper VII of the series: machine forgetting has exact addresses at the pole level and requires no gradients.

**Innate/acquired separation**. All semantic-pathway parameters (the rank-mixing triple, QK biases, skip D) stay near their initialization values after training (deviation <0.5%), while the per-head timescales uniformly fill the log-uniform interval of random initialization (a multi-scale hierarchy spanning ≈30×) — **the timescale skeleton is innate; memory traces are acquired content written onto an innate address space**. Isomorphic to the residueon ontology: the pole table exists prior to content, and learning writes residueons into the pole table; the addresses of "targeted forgetting" are likewise supplied by this innate table.

**Leftovers**: multi-pole interaction effects untested; selective forgetting currently has only the "truncation" form (the deleted portion of the sentence ceases to exist), while the "rewrite" form (deleting and inserting new content) requires gradients; the address resolution of the timescale page table on non-overfit (open-corpus) models is uncalibrated.

(The complete record of this section was originally carried in §16.2 of Paper VII of the series and is now merged into this section; pole surgery belongs to the cognition-and-memory main line — Paper VI is the home paper, and Paper VII no longer retains a copy.)

### 17.7 Perfect Decomposition of the Black Box and Measuring the Two Gauges: From Massive Cancellation to the Sphere-Ledger Dashboard

Autopsy found single-channel readout amplitudes (±10⁹) four orders of magnitude larger than the post-cancellation net signal (~10⁵), which raises the question: **can this superposition be perfectly decomposed** — not by masking, not by routing, not by basis truncation (all three routes dead in §17.3), but by splitting the net signal losslessly back into components and reassembling bit-for-bit. This section closes the question on the Mamba3 minimal implementation (the §17.6 carrier), realizing the §13 two gauges (PCD/RRC) as engineering implementations at the sphere-ledger level; all experiments run on the pure PyTorch sequential-form reference implementation (float64, no vendor kernels).

**The legality of decomposition precedes technique**. The three historical route failures all tested "whether the representation remains usable after reducing components" — a compression question; that orthogonal bases are full-rank (spectrally flat) is no counterexample: **an object can be dense in every orthogonal basis yet have only K components in the pole basis** — demonstrated in the synthesis domain (GF(65537), K=12): component amplitudes ±63000 superpose into a faint channel of ±472 (**134× cancellation**); exact per-order Hankel recurrence + characteristic-polynomial rooting + Vandermonde solution of the residues gives **poles 12/12 hits, residues exact to every digit, and a 64-step return ticket bit-identical**; the same instance solved in float64 has residue error 44% (Vandermonde condition number 2.9×10³⁴) — **cancellation is a floating-point death sentence and irrelevant to exact arithmetic**. When K includes all poles, decomposition is no longer fitting but an identity; the dividing line between "fitting" and "representation" is the return ticket.

**The true model's three ledgers**. Each layer's per-head block output is exactly expanded into named paths (source position × write-rank → read-rank memory traces, same-position diagonals, skip bypasses) and projected via out_proj onto the margin direction: **A. Return ticket**: max|Σpaths − block output| = 8.3×10⁻¹⁷ (machine precision); **B. Recipe**: margin = Σ⟨v, path⟩ with difference = 0.00e+00 — the black-box decision is translated bit-for-bit into a "sphere inventory + recipe" (the per-sphere bill for " even": sphere(1)←'amba' +2.06, sphere(1)←'M' +1.26, with diagonals/bypasses next); **C. Framework homology** — simulating the §17.6 timescale-zeroing surgeries within the framework, the truncations of the three surgeries reproduce the f32 true-surgery ledger verbatim. Structural by-product: **MIMO states are shared across ranks — each head is a 2×2 read/write crossover switch**, and semantic components are naturally three-dimensional paths rather than planar channels.

**The causal instant of forgetting**. The failing-step bill: **forgetting is not memory being erased; it is the bill amplitude of the maladjusted component drowning the correct answer's contribution** — the operated sphere's own bill goes +0.15→+1.83 while the other seven spheres collectively turn negative (−0.3~−3.2; in the residual-free architecture the operated sphere's output poisons the layer input and all readouts shift), and the correct answer falls to 2nd place, behind EOS by only 0.11 nat.

**The balance-recovery curve**. Attenuating the maladjusted component step by step (an ×α sweep of output mixing) and measuring the **balance amplification $A=\sum_i|b_i|/|\sum_i b_i|$** ($b_i$ the per-sphere bills): at full corruption **A=304.9 with the net ledger collapsed to +0.01** (the eight spheres' entries cancel one another; the net ledger is a coincidental residue); as α decreases monotonically, A regresses monotonically — 5.57→2.97→1.85→1.50→1.22→1.10→**1.00** — from partial recovery to the verbatim baseline. In the healthy state **A=1.00 exactly**: the spheres are fully aligned with one another, and massive cancellation occurs at the intra-sphere path level and channel level (the autopsy's 10⁹/10⁵), not between spheres — **cancellation is layered**.

**Proposition VI28 (the cancellation stratification law)**. Massive channel cancellation is **layered**: cancellation occurs at the intra-sphere path and channel levels (single-channel readout ±10⁹ vs net signal ~10⁵), while inter-sphere bills are fully aligned (healthy A=1.00 exact); semantics lives in **the remainder of the cancellation**. Four phenomena share one origin: ① float64 incurs 44% residue error under 134× cancellation while GF is exact to every digit — the floating-point death sentence is the cancellation death sentence; ② GF exact arithmetic is a constitutive requirement; ③ the memory-axis pruning double ledger of "full learning marks / collapsed inference" (the learning readout exploits the remainder's residual structure while the argmax consumes the remainder itself); ④ the precision cliff (§17.3(B2)) — perturbation destroys the remainder, not the amplitude. ∎ (Machine ledger B.23; directional spectrum measured over 241 directions.)

**Sphere-ledger-level implementation of the two gauges**. Treating the sphere ledger as a wave with phase 0/π, $A=\frac{1}{1-\mathrm{PCD}_{\text{ledger}}}$ (Kuramoto order parameter $R=1/A$) — i.e., the circular variance of the sphere-ledger spectrum; the §13 PCD can be read directly off the ledger. Measured division of labor: the baseline PCD is ≈0 throughout and the net-ledger second difference (the RRC form) is ±2.7 noise; after surgery **RRC breaches the limit four steps early** (−38.9/+33.3/−81.0/+68.5) while **PCD lights up precisely at the failing step with 0.9967**. **Three stages of disease**: hypertrophy (the net ledger inflates 2~6× but PCD=0, visible only to RRC) → desynchronization (PCD→1) → disintegration (net ledger→0) — isomorphic to §13.5's epileptic "pre-ictal critical slowing"; the joint diagnostic code (desync+100×anomaly) at sphere-ledger level: baseline 0.00 vs surgery 100.67.

**Extrinsic/intrinsic verdicts and three methodological laws**. An A-spectrum sweep over 241 token directions for the same death prefix: ① the healthy medium's A≈1 **holds only along the direction being asked** (random directions: median A 1.7~1.9, maxima 700+ yet harmless) — the medium is an interference device, and **A=1 is a dynamic answer to the question**; ② surgery does not shatter the manifold globally (the median A over random directions in fact drops) but kills only the aligned response to the current question — **the scratch is on the intrinsic side (dynamics), the symptom on the extrinsic side (directional selectivity), and diagnosis must be question-conditioned**; ③ the operated state exhibits the **soloist trap**: single-sphere dominance renders most directions "trivially aligned" (A→1 while the content is dead) — **A must be co-read with the participation ratio**. Further: the operated state's state norms deviate from baseline by 5~9× yet it traverses every step — **geodesic distance is not a probe of semantic damage**; distance is gauge-dependent while coherence is gauge-invariant (a second independent argument for §7.1). The rigid/flexible boundary is given by partial-fraction uniqueness: **deleting a pole = changing the function class** (the pole set uniquely identifies the rational function — discrete, topological, not continuously recoverable), while **timescale/amplitude tuning = continuous curvature deformation** (monotonically recoverable).

**Honesty boundary**. This section closes "perfect decomposition is feasible in principle + the dashboard is usable"; lexicalizing the semantic components (unfolding cross-layer synthetic cross terms, single-path-granularity weight realization, naming components on open corpora) is long-horizon engineering — ledger-level PCD/RRC and the A/participation-ratio safety valve are its monitoring foundation. ∎ (All machine ledgers in Appendix B.23.)

## 18 Environment-Interactive Learning: Many-Body Cognitive Fields and Adaptive Closed Loops

This part unfolds the §10.7 wave-field positioning into a complete closed loop: **the environment is an external wave-field medium**, and interaction is excitation–response–observation; the single cognitive body's four-beat closed loop (observe → infer → act → learn) is precisely the discretization of the §12.1 unified field equation — $J(t)$ is the sensory input, Born selection is the readout, and Hebbian carving is the pole-spectrum update; write addresses and reversibility are guaranteed by the §17.6 pole page table, and health monitoring goes through the §13.6 two gauges ($A$, PCD, RRC). In the many-body setting, §13.5 Kuramoto synchronization is promoted from a pathological criterion to a mechanism of social-cognition emergence.

### 18.1 A Single Cognitive Body = A Single Residue-Field Instance

The minimal mathematical unit of a cognitive body is the residue field $\Psi_i(z)=\sum_k\frac{r_k}{(z-z_k)^{n_k}}$; the pole set $\{z_k,r_k,n_k\}$ encodes all memory and skills, and the state space is GF(65537)^N (N the pole dimension). The four-step closed loop (same input forever same output, DFL): **observe** — $J(t)$ injected as a new pole, $\Psi_{\text{obs}}(z)=\Psi(z)+\frac{J(t)}{z-z_{\text{sensor}}}$; **infer** — evaluate the field at the query point $z_q$, $\Psi(z_q)=\sum_k\frac{r_k}{(z_q-z_k)^{n_k}}\in\text{GF}(65537)$; **act** — Born selection $a^*=\arg\max_{a\in\mathcal{A}}\big|\Psi(z_a)\big|$ (candidate set $\mathcal{A}=\{a_1,\dots,a_m\}$, with $a_i$ corresponding to the field value $\Psi(z_{a_i})$); **learn** — environmental feedback $r_{\text{env}}\in\text{GF}(65537)$ updates the pole residues: $r_k\leftarrow r_k\boxplus\Delta r_k,\ \Delta r_k=G\cdot r_{\text{env}}\cdot\big(z_{\text{env}}-z_k\big)^{-n_k}$ ($G$ the plasticity gain, an in-domain integer; $\boxplus$ GF addition).

### 18.2 Environmental Feedback as External Poles

The environment is not an external black box but a residue field superposed with one's own: $\Psi_{\text{total}}=\Psi_{\text{internal}}+\Psi_{\text{env}}$. Observation sequences undergo moment-window analysis, and the Berlekamp–Massey algorithm extracts the minimal linear recurrence coefficients C[L], written into the residueon table as new poles; Bragg verification (point-by-point mirror recomputation of the tail segment) ensures the written law structure matches the environment's true dynamics — any mismatch rejects crystallization.

**BM pole extraction**: the observation sequence $\{o_t\}_{t=1}^{L}$ ($o_t\in\text{GF}(65537)$) satisfies the recurrence $o_{t}=\sum_{i=1}^{d}c_i\cdot o_{t-i}\pmod{65537},\quad t>d$; the roots $\{\zeta_j\}$ of the characteristic polynomial $C(x)=x^d-\sum_{i=1}^{d}c_i x^{d-i}$ give the environment's pole locations, and the residues are determined by partial-fraction decomposition: $\Psi_{\text{env}}(z)=\sum_{j=1}^{d}\frac{\rho_j}{z-\zeta_j},\ \rho_j=\frac{\zeta_j^{L}}{C'(\zeta_j)}\prod_{t=1}^{L}(o_t-\zeta_j)$. Bragg verification: recompute the first $L/2$ terms from $\{\zeta_j,\rho_j\}$ and compare point by point; crystallization-write is permitted only if the discrepancy $D(Q)<0.01$; exceeding the limit indicates nonlinearity beyond the linear approximation, requiring a higher pole order $d$ or piecewise extraction.

### 18.3 Many-Body Field Interference and Kuramoto Synchronization

N cognitive bodies form a many-body residue-field system; the phase of body i obeys the Kuramoto equation

$$\frac{d\theta_i}{dt}=\omega_i+\frac{K}{N}\sum_j\sin(\theta_j-\theta_i),$$

$\omega_i$ is the intrinsic frequency and K the coupling strength; the synchronization threshold $K>K_c=2/(\pi g(0))$ gives the critical point of the collective phase transition. Cognitive meaning: the **healthy critical zone** $0.3<R<0.7$ — individuals keep independent dynamics while global information integration is maximized (normal social cognition); **over-synchronization** $R\to1$ — phases fully locked, independent cognition zeroed (groupthink or epilepsy-like pathology); **complete desynchronization** $R\to0$ — no information exchange (coma or social dissolution). Social-cognition emergence = a collective PCD phase transition: sufficiently many cognitive bodies entering a phase-coherent state, the order parameter emerging continuously (a Landau second-order transition), with collective cognitive forms (norms, language, culture) stably existing as emergent pole spectra.

Many-body communication does not ferry data: the **deflection-synchronization** three-quantity protocol ($\Psi_{\text{global}}$, $\Psi_{\text{local}}$, $\delta=\Psi_{\text{local}}-\Psi_{\text{global}}$) is the wave-field form of chaos synchronization — clients upload only microscopic deflection parameters, the server broadcasts coarse-grained topological digests after PCD consistency checks, and each end automatically evolves the same effect because the underlying equations agree; the minimal unit of cross-body transmission is a topological invariant (Betti numbers + phase boundaries): interfere with intent, do not ferry state.

### 18.4 The Training Ground: Validating the Learning Closed Loop under Controlled Environments

The training ground is the key validation stage taking the cognitive architecture from theory to engineering; its core design principle: **controllable pressure → observable learning → verifiable convergence**.

#### 18.4.1 Robot Path Planning

The robot training ground validates applicability to the physical control domain (state = robot/target coordinates and obstacle distribution; action = discrete movement commands): **path = pole tracking on an algebraic curve** (each step determined by Born selection from the current field distribution); **reward = inverse field strength** (the reciprocal square of the target distance $r=1/d^2$, stronger when closer); **collision detection = pole sharing** (collision when a robot pole coincides with an obstacle pole, checked by GCD).

#### 18.4.2 The Training Closed Loop

The complete training cycle has four stages:

1. **Episode execution**: execute the policy and record trajectories (state–action sequences);
2. **DB3 storage**: trajectories are written into a three-dimensional database as pole sequences (each path point = one residueon pole);
3. **Hebbian learning**: the environment field updates as $env\leftarrow env+\eta\cdot trajectory$, with learning rate $\eta$ an integer in GF(65537) (typically 4 or 5);
4. **Animation replay**: multi-frame rule-stream replay for offline review and policy optimization.

Learning is not gradient descent but the deterministic superposition of residue fields — the geometric sum of the environment field and the trajectory field forms the new environment field, with no backpropagation. Mathematical description: the state of Episode $t$ is the pole set $S_t=\{z_k^{(t)}, r_k^{(t)}, n_k^{(t)}\}_{k=1}^{K_t}$; the policy $\pi_t$ produces the trajectory $\tau_t=(s_1,a_1,\dots,s_T,a_T)$ (state $s_i$ encoded as position $z(s_i)$); actions are determined by Born selection: $a_i=\arg\max_k\big|r_k^{(i)}\big|\cdot\big|z(s_i)-z_k^{(i)}\big|^{-n_k^{(i)}}$. Writing the trajectory into the residueon table yields the trajectory field $\Psi_{\text{traj}}(z)=\sum_{i=1}^{T}\frac{r_{\text{reward}}(s_i,a_i)}{\big(z-z(s_i)\big)^{n_{\text{step}}}}$ ($r_{\text{reward}}$ the GF encoding of the immediate reward; $n_{\text{step}}$ typically 1 or 2), and the environment field receives the Hebbian superposition $\Psi_{\text{env}}^{(t+1)}=\Psi_{\text{env}}^{(t)}\boxplus\eta\odot\Psi_{\text{traj}}$ ($\boxplus$ pole-set union with GCD deduplication; $\odot$ GF modular-multiplication scaling; $\eta$ an in-domain constant, typically $\eta=4$ or $5$) — the next Episode's Born selection is automatically biased toward similar trajectories: **a positive-feedback closed loop with no backpropagation**. Convergence criterion: convergence when $N$ consecutive Episodes satisfy $\big\|\Psi_{\text{traj}}^{(t)}-\Psi_{\text{traj}}^{(t-1)}\big\|_{\text{PCD}}<\varepsilon$ (the PCD norm $D(Q)=1-\big|\sum u_i\big|/\sum|u_i|$, $u_i$ the trajectory poles' residues); measured $N=5$, $\varepsilon=0.05$ gives stable convergence.

#### 18.4.3 Persistent Memory and Checkpoints

The robot persistent-memory bridge validates the long-term stability of learning: **learning** — the Hebbian loop reinforces the target token (e.g., 673) and suppresses competing tokens (e.g., 13), with learning rate $\eta=1/4$ (realized as a 2-bit right shift in the GF domain); **checkpoint write-to-disk** — the memory frame $\mathcal{F}=\big\langle M, \text{seq}, H, \text{row}, \{(z_k,r_k,n_k)\}_{k=1}^{K}\big\rangle$ ($M$ a magic number, $\text{seq}$ a monotone sequence number, $H$ the frame fingerprint, $\text{row}$ the row identifier), with frame fingerprint $H(\mathcal{F})=\text{NTT}\_\text{hash}\big(\{r_k\}_{k=1}^{K}\big)\mod 65537,$ ensuring the frame content cannot be silently tampered with; **cold-start recovery** — $\Psi_{\text{recovered}}(z)=\sum_{k=1}^{K}\frac{r_k}{(z-z_k)^{n_k}}$, and the recovered field must pass Bragg verification $|D_1|^2=|R_1|^2$ (point-by-point mirror recomputation of the tail segment); on mismatch, recovery is refused — preventing cognitive contamination from hardware bit flips. A new process needs zero re-learning: loading the checkpoint reproduces the learning outcome; a cognitive body can be frozen at any moment, migrated across hardware, and resumed bit-identically.

### 18.5 Observations of Bootstrap Internalization in the Training Ground

The experimental counterparts of Theorem VI12 in the training ground: **Lipschitz convergence** — measured $L\in[0.821,0.878]<1$, convergence exponent $\alpha=-\log_2 L=0.234$ bit/iteration; **the Kleene fixed point** — the NTT fourth-order eigenstate verifies $N^4=I$, and the projector $P_1=(1/4)(I+N+N^2+N^3)$ satisfies idempotence $P_1^2=P_1$; **learning-loop convergence** — the six-beat cycle "right-path error → arbitration detection → left-path correction → law discovery → pole-spectrum update → right-path direct hit" converges stably. Bootstrap internalization = the algebraic form of skill acquisition (declarative → procedural): initially explicit inference (left path dominant), after repeated Episodes intuition hits directly (right path dominant) — logic compressed into intuition is precisely Banach fixed-point iteration.

### 18.6 Connection with Existing Theory

| This paper's content → training-ground counterpart |
| --- |
| §10.6 error-driven learning unified kernel → environmental reward → synaptic weight update ($w\leftarrow w\boxplus G\cdot e$); §12.1 unified field equation → perceptual injection is the $J(t)$ external driving term |
| §8.3 odd×odd=even (insight) → collision of failed strategies produces new strategies; §11.3 proceduralization → declarative rules → procedural skills |
| §12.4 forgetting law → measurable relation between checkpoint intervals and memory decay; Theorem VI12 → measured training-ground Lipschitz convergence; §13.5 Kuramoto synchronization → many-body phase locking = emergence of social norms |
| §10.7 wave-field positioning → environment = fixed medium, interaction = excitation–response–observation; §13.6 sphere-ledger dashboard → health monitoring during interaction ($A$, PCD, RRC); §17.6 pole page table → the address space for learning writes and the precondition for selective forgetting |

### 18.7 Boundaries and Honesty Statements

1. **Scale**: training-ground mechanisms are proof-of-principle grade and have not undergone ten-thousand-scale concurrency stress testing;
2. **Division of labor with §17**: §17 = engineering validation in the text domain; §18 = application validation in the physical control domain (robot paths, the training closed loop, persistent memory);
3. **Long horizon**: many-body Kuramoto synchronization, the braided concurrent topological database, entangled-state storage — theory ready.

---
## 19 Conclusion

### 19.1 The Six-Paper Arc

$$\underbrace{\text{physical field}}_{\text{Paper1}}\to\underbrace{\text{computational field}}_{\text{Paper2}}\to\underbrace{\text{mathematical field}}_{\text{Paper3}}\to\underbrace{\text{primitives}}_{\text{Paper4}}\to\underbrace{\text{bootstrapping}}_{\text{Paper5}}\to\underbrace{\text{cognitive field}}_{\text{this paper}}$$

The master equation of the first paper, $\partial\Psi/\partial t=\dots-\gamma_r\mathrm{PCD}\Psi+J$, becomes in this paper the equation of cognitive dynamics: $J$ is sensory input, the PCD term is the self-suppression of cognitive contradictions, the three-state phase transition is memory consolidation, and the residue field is brain waves. **The observer term returns to the field equation** — the series departs from physics and closes in cognition: the residueon is a trinity of particle (pole), wave (residue), and topology (pole order), and cognition is the field theory of these three.

One-layer conclusions: **ontology** — residueon ⊃ qubit ⊃ classical bit, and the qubit is not the brain's hardware; it is the grammar of cognition; **architecture** — reasoning = dual path + arbitration + immunity + internalization; **methodology** — numbers pass audit, capacity passes the information-theoretic upper bound, constructions pass machine verification.

The six papers form a loop, not a full stop: the nine questions of §18.2 are the candidate starting points for subsequent installments. Where the loop closes is where the new road opens.

### 19.2 Open Problems

1. **The hard problem**: the GF loop reproduces functional structure; it does not explain experience (§15.3).
2. **τ_coh calibration**: the GF domain has no natural threshold; a clean validation set is needed to scan $D(Q)$.
3. **Clinical channel**: the PCD/RRC signature table (§13.4) requires prospective EEG validation.
4. **MPS-type truncation**: the GF domain has no SVD; QR-type algebraic truncation (§9.4) is the candidate for compressing entangled states.
5. **Online learning of chiral routing**: $\hat A$ separation and Hodge translation are ready; the Hebbian update law for the $I_5$ channel is undetermined.
6. **Braided concurrency**: the topological database is long-term: the braid verdict and the ΨDB PoolCore are ready; the concurrency protocol is not yet built.
7. **Engineering of cognitive thermodynamics**: U/S/T (§12.5) is still a vocabulary; an independently measurable engineering counterpart of $T=1/(1-D)$ is needed.
8. **Calibration of the consciousness criteria**: the $R$ critical zone and self-reference depth (§15.5) require statistics from long-run instance evolution rather than single-point assertions; critical slowing down (§13.5) requires EEG backtesting.
9. **Parameter learning of causal impedance**: the $(-10,2)$ in $T(e)=\sigma(-10D+2)$ are design constants; whether they can be learned online by the $\Delta$ law without drifting from the four-point calibration is unverified.

---
## References

1. Kuramoto, Y. (1975). Self-entrainment of a population of coupled non-linear oscillators. _International Symposium on Mathematical Problems in Theoretical Physics_, LNIP 39, Springer. — Original source of the Kuramoto model and the order parameter (§13.5, Theorem VI15).
2. Kuramoto, Y. (1984). _Chemical Oscillations, Waves, and Turbulence_. Springer. — Derivation of the critical coupling $K_c=2/(\pi g(0))$ (Theorem VI19).
3. Strogatz, S. H. (2000). From Kuramoto to Crawford: exploring the onset of synchronization in populations of coupled oscillators. _Physica D_, 143, 1–20. — Review of synchronization phase transitions (§13.5).
4. Mardia, K. V., & Jupp, P. E. (2000). _Directional Statistics_. Wiley. — Circular variance $V=1-\bar R$ and mean resultant vector length (Theorem VI15: the statistical identity of PCD).
5. Mardia, K. V. (1972). _Statistics of Directional Data_. Academic Press. — Founding work of directional statistics.
6. Jaeger, H. (2001). _The "echo state" approach to analysing and training recurrent neural networks_. GMD Report 148. — The echo state property and the ESP criterion (§9.1, §10.1).
7. Tegmark, M. (2000). Importance of quantum decoherence in brain processes. _Physical Review E_, 61(4), 4194–4206. — Brain decoherence timescales (§15.1 physical-layer verdict).
8. Hameroff, S., & Penrose, R. (1996). Orchestrated reduction of quantum coherence in brain microtubules: A model for consciousness. _Mathematics and Computers in Simulation_, 40, 453–480. — The Orch-OR hypothesis (§15.1, cited as an object under test).
9. Ryu, S., & Takayanagi, T. (2006). Holographic derivation of entanglement entropy from AdS/CFT. _Physical Review Letters_, 96, 181602. — The RT surface (§9.5).
10. Hebb, D. O. (1949). _The Organization of Behavior_. Wiley. — The Hebb rule (§3.4, §15.4).
11. Anderson, J. R. (1982). Acquisition of cognitive skill. _Psychological Review_, 89, 369–406. — declarative→procedural (§11.3, §15.4).
12. Baars, B. J. (1988). _A Cognitive Theory of Consciousness_. Cambridge University Press. — The global workspace (§15.4).
13. Friston, K. (2010). The free-energy principle: a unified brain theory? _Nature Reviews Neuroscience_, 11(2), 127–138. — The free-energy principle (§15.4, §12.5).
14. Kahneman, D. (2011). _Thinking, Fast and Slow_. Farrar, Straus and Giroux. — Dual systems (§7.3).
15. Pearl, J. (2009). _Causality: Models, Reasoning, and Inference_ (2nd ed.). Cambridge University Press. — The ladder of causation (§15.5).
16. Schaeffer, R., Miranda, B., & Koyejo, S. (2023). Are Emergent Abilities of Large Language Models a Mirage? _NeurIPS 2023_. — The emergence-mirage verdict (§15.5).
17. Vanchurin, V. (2024). _Neural networks in the universal limit of quantum field theory_. arXiv:2411.08139. — Gauge-field-theory mapping of the continuum limit of neural networks (§15.4, §17.5).
18. Sperry, R. W. (1961). Cerebral organization and behavior. _Science_, 133(3466), 1749–1757. — Split-brain research (§8.5).
19. Landau, L. D., & Lifshitz, E. M. (1958). _Statistical Physics, Part 1_. Pergamon Press. — Landau's theory of second-order phase transitions (Theorem VI17).
20. Ebbinghaus, H. (1885). _Über das Gedächtnis_. — The forgetting curve (§12.4).
21. Sorkin, R. D. (1994). Quantum mechanics as quantum measure theory. *Modern Physics Letters A*, 9, 3119–3127. — The second-order interference hierarchy (§6.1 axiomatization of the collision algebra).
22. Pego, R. L., & Weinstein, M. I. (1994). Asymptotic stability of solitary waves. *Communications in Mathematical Physics*, 164, 305–349. — Modulated-soliton + radiation-tail decomposition (§6.1 zero-illusion guarantee).

---

## Appendix A Constant Table

| Name | Value | Identity | GF verification |
| --- | --- | --- | --- |
| Modulus | $p=65537$ | $2^{16}+1=F_4$ | — |
| $i$ | 256 | $256^2\equiv-1$ | B.1 ✓ |
| $\sqrt2$ | 4080 | $4080^2\equiv2$ | B.1 ✓ |
| $1/2$ | 32769 | $2\cdot32769\equiv1$ | B.1 ✓ |
| $1/4$ | 49153 | $4\cdot49153\equiv1$ | B.1 ✓ |
| $1/\sqrt2$ | 2040 | $4080\times2040\equiv1$ | B.1 ✓ |
| $\mathrm{Hadamard}$ normalization | $4080^{-1}=2040$ | $H^2=I$ | B.4 ✓ |
| Banach $L$ lower/upper | 0.821 / 0.878 | GF encodings 53724 / 57443 | B.11 ✓ |
| Banach $\alpha$ | 0.234 bit/iteration | GF encoding 15346 | B.11 ✓ |
| PCD Scale | 65537 | Q16 encoding of $D$ | B.5 ✓ |
| $S$-gate phase | 256 | $S^2=Z$ | B.4 ✓ |
| Master-equation coefficients | $\alpha{=}100,\beta{=}200,\varepsilon{=}500,\gamma_r{=}1000,\kappa{=}300,\lambda{=}50$ | GF encodings (implementation constants) | Implementation ✓ |
| Plasticity operating point | $\beta=0.7616$, decay=0.0723 | Strong-learning/slow-forgetting operating point | B.18 ✓ |
| Causal impedance | $T=\sigma(-10D+2)$ | $D{=}0/0.2/0.3/0.5\to0.88/0.50/0.27/0.04$ | B.17 ✓ |
| Epilepsy criterion | $R\to1$; 236/237=99.6% | Global phase locking = pathology | B.17 ✓ |
| Gradeless tower | $n{=}0,1,2,3,65535$ | Atomic/composite/invocation/recursive/bootstrapping (implementation constants) | Implementation ✓ |

## Appendix B Formula Verification Record

> The appendix numbering follows the verification program's internal section numbers: the program has no section B.2, so this appendix has no B.2 either; B.3 executes after B.4 (internal program order); B.21 contains four subsections a–d.

Verification program (pure Python standard library; full-integer GF(65537) arithmetic + numerical cross-checks against the complex-analysis side + a full GF simulator of the Cl(4,1) geometric product + numerical experiments on Kuramoto/Landau/circular-variance dynamics). **123 assertions, 0 failures** (output archived). Section numbering and order follow the verification program's internal section numbers; the record is as follows:

**B.1 Constant layer (all 5 passed)**: $256^2\equiv-1$, $4080^2\equiv2$, $2\cdot32769\equiv1$, $32769^2\equiv\mathrm{inv}(4)=49153$, $\mathrm{inv}(4080)=2040$ (since $4080^2\equiv2\Rightarrow4080\cdot\frac{4080}{2}\equiv1$). An early draft miswrote $1/4=49151$; machine verification caught it and corrected it to 49153 — this erratum of the appendix itself is an on-the-spot specimen of the "every constant through the machine" discipline.

**B.4 Quantum gate algebra (all 7 passed)**: $X^2=Z^2=H^2=I$, $S^2=Z$, $S^4=I$, $ZXZ=-X$, $XZ\ne ZX$; the Hadamard is implemented as $H=2040\begin{psmallmatrix}1&1\\1&-1\end{psmallmatrix}$ ($2040=\mathrm{inv}(4080)$).

**B.3 Gate Hebbian (all 3 passed)**: the update vector $[7,1,1,0]=R_0+7E$ agrees component-by-component with the implementation; for the same input $(s_0,s_1)=(100,200)$ and $w=\mathrm{inv}(300)$, the outputs before and after the update differ and recomputation agrees (determinism in effect).

**B.5 PCD/RRC (all 7 passed)**: $D([1,1])=0$, $D([1,-1])=1$ (decimal semantics; GF full-scale encoding 65537, consistent with the implementation's assertion), mixed cases with $D\in[0,1]$; $\mathrm{RRC}(1,2,3)=0$, $\mathrm{RRC}(1,2,5)=2$, GF version $f_1+f_3-2f_2$.

**B.6 Chirality operators (all 6 passed)**: $P_+P_-=\frac12\neq0$ and $P_+^2=\frac{i}{2}\neq P_+$ (machine proof of the erratum); lossless decomposition under grade involution $M=M_++M_-$, $\hat A^2=\mathrm{id}$, $M_\pm$ as purely even/purely odd channels, $\hat A(M_\pm)=\pm M_\pm$ (idempotence of the eigenchannels).

**B.7 Residue theorem (1 passed)**: $\Psi(z)=\frac{3}{z-1}+\frac{5}{z-2}$; midpoint-rule numerical integration over 200,000 points on the circle $|z|=3$ gives $\oint\Psi\,dz=16\pi i=2\pi i(3+5)$ with error $4.1\times10^{-9}$ — the global contour integral = the sum of local residues (Theorem VI3).

**B.8 Field-multiplication entanglement (all 3 passed)**: the partial-fraction identity $\frac{ab}{(x-p_1)(x-p_2)}=\frac{ab}{p_1-p_2}\big(\frac1{x-p_1}-\frac1{x-p_2}\big)$ holds at all 5 sampled points in the GF domain ($a{=}7,b{=}9,p_1{=}100,p_2{=}200$, $c=64881$); changing $a$ necessarily changes the reading at $p_2$ (entanglement criterion); additive fields are independent (by construction).

**B.9 Full GF simulation of Cl(4,1) (all 9 passed)**: a 32-blade geometric-product simulator (signature $e_{1..4}^2=+1,e_5^2=-1$; per-vector folding; all coefficients mod 65537). Verified: metric; conformal null vectors $P\cdot P=0$ ($n_o=\frac12(e_4+e_5)$, $n_\infty=e_5-e_4$ with $n_o\cdot n_\infty=-1$); distance = inner product $P\cdot Q=-\frac12|p-q|^2$ (example value 65511 agrees across both computations); **Theorem VI6**: $B=P\wedge Q$ satisfies $B^2=(P\cdot Q)^2$, a pure scalar, and $C=B(P\cdot Q)^{-1}$ is an involution with $C^2=1$; $I_5^2=-1$; centrality of $I_5$, $I_5M=MI_5$ (random 32-channel multivectors); graded check of the Hodge star (spot checks on 8 grade-$k$ blades, all landing purely in grade-$5-k$); **Theorem VI4**: $*^2M=-M$ holds on all channels for random $M$. Development record: the simulator's first version dropped a sign in the wedge-product branch and reversed the folding order (the actual computation is reversion); both were located and fixed via the two failing assertions on B²/centrality — the two classic traps of geometric-product implementation (sign rules and folding order) were both caught inside the verification loop.

**B.10 Kleene projection (all 3 passed)**: $N^4=I$ (cyclic shift of order 4), $P_1^2=P_1$ (matrix idempotence in the GF domain), $P_1\mathbf{1}=\mathbf{1}$ (the repair eigenstate).

**B.11 Banach constants (all 4 passed)**: $53724/65537=0.8198$ (the main text's working constant is taken as 0.821), $57443/65537=0.8765$ (taken as 0.878), $15346/65537=0.2342\approx0.234$; the $-\log_2$ interval midpoint $=0.2361\approx\alpha$.

**B.12 Capacity bounding (all 4 passed)**: $K{=}20,S{=}4$: $\sum S_k=80$, $\sum S_k^2=320$, $\sum S_k^3=1280$; $\binom{20}{2}=190\Rightarrow2^{190}$ configurations; information upper bound $16K=320$ bit; classical walls $2^{30}\approx1.07\times10^9$, $2^{50}\approx1.13\times10^{15}$.

**B.13 Crystallization potential (all 3 passed)**: $P(1,1,1)=1.0$ (Solid), $P(0.5,0.5,0.5)=0.5$ (Liquid), $R(n)=1+g(\ln n-1)$ monotonically increasing.

**B.14 gf_sqrt erratum (all 3 passed)**: the current implementation gives $2^{16384}=1\neq\pm4080$ (bug demonstration); the true $\sqrt2=4080$ (hardcoded correctly); $65536^{16384}=1$ (the initial derivation yielding 256 was wrong; machine recheck gives 1).

**B.15 Echo–entanglement duality (all 2 passed)**: $\lambda=0.9\Rightarrow\Gamma=-\ln\lambda=0.1054$; memory timescale $\frac1{1-\lambda}$: 0.9→10 steps, 0.99→100 steps.

**B.16 GF logic gates (all 2 passed)**: Boolean truth tables of $a+b-ab$ and $1-ab$.

**B.17 Criteria and dynamics layer (all 19 passed)**: **Causal impedance** (Theorem VI16) — $\sigma(2)=0.8808$, $\sigma(0)=0.500$, $\sigma(-1)=0.2689$, $\sigma(-3)=0.0474$ agree with the four-point calibration 0.88/0.50/0.27/0.04; strictly monotonically decreasing over all 201 points; and capped by $T\le\sigma(2)$ (a machine proof that "perfect trust does not exist"). **Landau potential** (Theorem VI17) — numerical minimization: $\varepsilon=1\Rightarrow\rho^*=1.000,F_{\min}=-0.500$; $\varepsilon=-1\Rightarrow\rho^*=0,F_{\min}=0$. **Circular variance identity** (Theorem VI15) — for 64 equal-amplitude samples with random phases, $V=1-\bar R$ is bit-identical to the PCD formula ($V=0.6332$); all-in-phase $V=0$, exactly half opposed $V=1$, and $V$ unchanged after rotation by $\alpha=0.7$ (gauge invariance). **Kuramoto three states** (Theorem VI19) — full phase locking $R=1$; 2000 uniform random $R=0.015<0.1$ (the coma side); two-cluster construction $R=0.50\in(0.3,0.7)$ (the healthy critical zone is reachable); $236/237=99.58\%\approx99.6\%$. **Gödel orbit** (Theorem VI20) — $2\to4\to16\to256\to65536\to1$ verified step by step by machine, depth exactly 5; $G(1)=1$; endpoints and monotonicity of curiosity. Development record: the first two-cluster version had too large a phase separation ($R=0.24$, falling outside the window) — the healthy critical zone $0.3<R<0.7$ is narrower than intuition and requires a fine-tuned construction with cluster separation $\Delta\approx2$ rad; this is itself a numerical feel for Theorem VI19's "the healthy window is not wide".

**B.18 Cognitive thermodynamics and engineering numbers (all 14 passed)**: boundary cases of $U=\sum w(1-\beta)$ (all-solid $U=0$/all-gas $U=\sum w$); $T=1/(1-D)$: $D=0.3\to1.4286$; $18500/78=237.2\times$ (DeBERTa comparison); percolation jump $(0.58-0.28)/0.28=107.1\%$; $896=56\times16$ and $(64/896)^2=1/196\Rightarrow$ parameter reduction $99.49\%\approx99.5\%$; monotone extraction $\varepsilon-\gamma=\frac{1}{\Delta t}\ln\sigma_{\max}$; belief propagation $C_{\mathrm{final}}=C_s\prod(1-D_i)T_i\le C_s$; Gaussian time–frequency uncertainty $\sigma_t(\text{numerical})=\sigma/\sqrt2$, $\Delta t\cdot\Delta\omega=0.5$ (equality attained for the minimum-uncertainty wave packet); STDP kernel $e^{-\Delta t/\tau}$ monotone; write-refusal logic $\beta_{\mathrm{eff}}=\beta\alpha_b\Theta$; brain-wave power ordering $A^2f^2$ (γ 1600 > α 400); semantic spectral ordering of phase differences and the rational criterion for phase-locked harmonics.

**B.19 Moment encoding and power sequences (all 6 passed)**: **Moment identities** (Proposition VI22) — three-pole samples $(3,5,7),(7,11,9),(2,8,5)$: $G_0=\sum r_k=21$, $G_1^x=\sum r_kx_k=94$, $G_1^y=\sum r_ky_k=174$ (bitwise in the GF domain); merge linearity $\mathrm{encode}(A\cup B)=\mathrm{encode}(A)+\mathrm{encode}(B)$ (the algebraic root of the pole-count-independent $O(32)$); stratification layer count $\lceil N/10\rceil$ ($N{=}3\to1$ layer, $N{=}25\to3$ layers). **Grade alternation of the power sequence** (corollary of VI6) — computing $B^n$ consecutively ($n=1..7$) with the B.9 Cl(4,1) simulator: odd powers land purely in $G_2$ (directional blades), even powers land purely in $G_0$ (scalars), all seven consecutive jumps hit — the machine basis for §8.4's "finite-order field terms oscillate between the scalar and directional blades, and only the $n=\infty$ bootstrapping layer always lands in $G_0$". Development record: the first version of the assertion wrote the expected $G_1^y$ as 156 (missing the second pole's $y=11$); machine recheck gave 174 — expected constants must also be recomputed; mental arithmetic must not be copied.

**B.20 Cognitive curve monitor (all 5 passed)**: constructive verification of the U-shape detector — $E=[1.2, 0.9, 0.6, 0.7, 1.1, 1.15]$, $E_c=1$: trough segment identified, length 3; moment of the recent rebound crossing the line = 4; convergence criterion $|\Delta E|<0.1$ (simulation with the topological charge stable); flat high-level sequence has no trough segment (the §13.4 pattern-collapse early-warning signature); U-shape triple output (trough duration, backtrack count, convergence moment) $=(3,1,4)$.

**B.21 Cognitive-domain formula family (all 17 passed; four subsections within the program: B.21a Born normalization/timescales/PCD closed forms, B.21b Hodge complement closed form, B.21c unified learning kernel, B.21d dynamics)**: **Born GF normalization** — $r=[3,5,7]$: $\sum_k P(k)\equiv1\pmod p$, argmax agrees. **Timescales** — $\tau=1/(1-\alpha)=\{4,2,\tfrac43\}$ ($\alpha=\{3/4,1/2,1/4\}$); $\tau=-1/\ln0.95=19.50$ steps. **Two-oscillator PCD closed form** — $D=1-\cos(\Delta\phi/2)$ holds at all four points $\Delta\phi=0.5/1.0/2.0/\pi$; Byzantine bound $n\ge3f+1$; desynchronization baseline $\bar R=\sqrt\pi/(2\sqrt N)=0.0198$ ($N=2000$). **Hodge complement closed form** — $*e_A=(-1)^{\binom{k}{2}+\sum_{i\in A}(5-i)}(\prod_{i\in A}\varepsilon_i)e_{A^{\complement}}$ is bit-identical to the geometric-product simulator on all 32 blades. **Verification note**: a hand derivation initially asserted that "the combinatorial signs cancel completely in 5 dimensions, $\sigma=\prod\varepsilon_i$" — the first run failed on the $e_2$ blade ($*e_2=-e_{1345}$; the sign depends on blade order); the transposition count $\binom{k}{2}+\sum(5-i)$ cannot be omitted; after the fix, all 32 blades pass. "A beautiful closed form" and "a correct closed form" are not the same thing; the simulator is the sole referee. **Unified learning kernel** — NLMS exact in one step ($x=2,y=5\Rightarrow w_1=2.5,\hat y=5$); ridge Cramer GF solution $w=(1,3)$, consistent on component-wise back-substitution; Vandermonde GF Gaussian elimination $p(x)=5-x+2x^2$ (zero iterations, zero learning rate), back-substitution at three points $6/11/20$ exact. **Dynamics** — critical slowing down $\tau=1/(2|\varepsilon|)$: for $\varepsilon=0.05$ the half-recovery is $6.93$ and the trajectory $\rho(t)=\rho_0e^{-0.1t}$ crosses half exactly; Ebbinghaus $t_{1/2}=\ln2/0.0723=9.59$ ticks; GF phase discretization: $i^m$ four-point cycle $\{1,256,65536,65281\}$, $\mathrm{inv}(i)=65281=-i$ (integerization of the Wilson line).

**B.22 Pole page table (the machine ledger of §17.6, all 5 groups passed)**: **Semantic baseline** — the sequential-form reference implementation reproduces the official kernel demo output verbatim, 3/3; baseline step-by-step argmax margins $\{9.1,10.2,9.0,10.9,9.9,10.0,9.3,9.7,10.2\}$ (memory 1) and $\{10.6,10.4,11.2,10.5,10.8,9.7,10.4\}$ (memory 2), floor 9.03. **Silent equivalence and redundancy** — of 112 single-point ablations, 102 leave the output verbatim-invariant; silent verbatim intact in 10/16 head instances, truncated in 12/16, crashed in 16/16. **Recalibration invariance** — zeroing all 16 timescales simultaneously leaves the output verbatim-invariant, vs. truncation upon zeroing a single one. **One-sided dead zone** — a $-10$ offset changes nothing; $+4$ truncates (threshold head (0,0)) and $+5$ truncates (threshold head (0,5)). **Page table** — zeroing (0,2): memory 1 stops at the 4th word, memory 2 verbatim intact; zeroing (0,7): memory 2 stops at the 5th word, memory 1 verbatim intact; zeroing (1,0)/(1,4)/(1,5): memory 1 stops at the 3rd/2nd/1st word from the end respectively, memory 2 verbatim intact throughout — five-address bidirectional selective forgetting.

**B.23 Perfect decomposition and the sphere-ledger dashboard (the machine ledger of §17.7, all 7 groups passed)**: **Synthetic-domain decomposition** — within GF(65537), K=12 with 134× cancellation (components ±63000/per-channel ±472): poles hit 12/12, residues bit-exact, 64-step return tickets bit-identical; float64 on the same case gives a maximum residue error of 44.3% (condition number 2.9×10³⁴). **The three ledgers of decomposition** — return tickets max|Σ paths − block output| = 8.3×10⁻¹⁷; recipe difference (margin − Σ path contributions) = 0.00e+00; the surgery simulation reproduces three real surgeries verbatim. **Failure-step bill** — the surgical sphere +0.147→+1.825 while the other seven spheres move Δ −0.2~−3.2; the baseline winner falls to 2nd place, trailing by 0.11 nat. **Equilibrium recovery curve** — sweeping α from 1 to 0: A=304.94/5.57/2.97/1.85/1.50/1.22/1.10/1.00, net ledger +0.01→+10.23, text partially recovered → verbatim baseline; baseline A=1.00 exact (all sphere ledgers positive). **Two rulers** — baseline PCD ≈0 throughout and the second difference of the net ledger ±2.7; surgical RRC crosses the limit four steps early (−38.9/+33.3/+9.3/−81.0/+68.5) with PCD failure step 0.9967; joint diagnostic codes 0.00 vs 100.67. **Directional spectrum** — 241 directions: healthy/baseline median A 1.70/1.92 while the margin direction has 1.00; surgery drops the median to 1.16 (the solo trap) while the margin direction reaches 305. **Geodesic blindness** — state-norm deviations of 5–9× at every step traversed (including steps with verbatim-identical outputs).

## Appendix C Glossary

| Term | Definition | First appearance |
| --- | --- | --- |
| residueon | $(z_k,r_k,n_k)$: the pole/residue/pole-order triple | [Paper4] |
| residue field | $\Psi(z)=\sum_k r_k/(z-z_k)^{n_k}$ | [Paper1] |
| five operators | ⊙ ◦ ≋ ↡ ∆ (field multiplication/geometric product/resonance/Born/Hebbian) | [Paper2] |
| three nons | non-uncertainty, non-dissipation, non-randomness | [Paper2] |
| PCD | phase-coherence divergence $D(Q)=1-\vert\sum u\vert/\sum\vert u\vert$ (this paper's core criterion · phase ruler) | [Paper1]; previewed at this paper §2.5 |
| RRC | residue rank condition $f_3-2f_2+f_1$ (discrete Laplacian; core criterion · curvature ruler) | previewed at this paper §2.5, expanded in §13.2 |
| NDM | non-destructive measurement (Born=argmax; the field is unchanged) | this paper §3.5 |
| DFL | deterministic localization (same input→same output) | [Paper2] |
| grade involution | $\hat A(M)=\sum_k(-1)^kM_k$; the dual-path separation operator | this paper §8.1 |
| gate residue | $R_k\in M_2(\mathrm{GF}(p))$; the matrix upgrade of the residueon table | this paper §6.3 |
| field-multiplication entanglement | the product field's residue $ab/(p_1-p_2)$ is indecomposable | this paper §9.2 |
| echo–entanglement duality | $\lambda_{\max}\leftrightarrow e^{-\Gamma}$ | this paper §9.1 |
| bootstrapping internalization | $T(R^*)=R^*$: logic compressed into intuition | this paper §11 |
| three-state phase transition | Gas/Liquid/Solid = uncertain/learning/solidified | [Paper1]; this paper §12.3 |
| circular variance | $V=1-\bar R$; the statistical identity of PCD (Mardia & Jupp 2000) | this paper §7.1 |
| gauge invariance | $D(e^{i\alpha}\Psi)=D(\Psi)$: contradictions cannot be recolored | this paper §7.1 |
| causal impedance | $T(e)=\sigma(-10\,\mathrm{PCD}+2)$: edge conductance / contradiction fuse | this paper §11.6 |
| Kuramoto order parameter | $R=(1/N)\vert\sum e^{i\theta_j}\vert$ (Kuramoto 1975): the coma/healthy/epilepsy three-way split | this paper §13.5 |
| critical slowing down | phase-transition precursor: variance grows while the mean stays constant (5–10 s before epileptic seizure) | this paper §7.1/§13.5 |
| Maxwell's-demon crystallization | knowledge crystallization = expending work to buy local entropy reduction, with the cost booked to the environment term | this paper §12.5 |
| Landau order parameter | $F(\rho)=-\varepsilon\rho^2+\frac12\rho^4$; phase transition upon sign change of $\varepsilon$ | this paper §12.5 |
| floating-point customs | 32-bit float → sign/mantissa/exponent triple; the sole gateway for floats into the GF world | this paper §17.5 |
| self-reference depth | number of steps for the $G(x)=x^2$ orbit to reach its fixed point (measured: 5) | this paper §15.5 |
| moment encoding | the whole table = a 32-channel multivector ($G_0$=Σr, $G_1$=centroid, $G_2$=coupling moment, $G_3$=nested moment, $G_5$=det); merging in $O(32)$ | this paper §6.4 |
| Dual-Path Cognitive Architecture | the cognitive architecture proposed in this paper (Dual-Path Cognitive Architecture) | this paper §1.1 |


<!-- PAPER6-APPEND-ANCHOR -->
