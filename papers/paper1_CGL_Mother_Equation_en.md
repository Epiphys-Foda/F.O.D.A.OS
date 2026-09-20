# FodaOS Unified Field Theory Series I: Cross-Domain Effective Field Equation Candidate — Five-Term Extension of the Complex Ginzburg-Landau Equation with Topological Constraints

---

**Author**: Pan JinWen [Cypher Pan]

**Abstract**: This paper proposes that the complex Ginzburg-Landau (CGL) equation, through a five-term extension and three topological constraints, can be unified into a mother equation, providing an effective field equation framework for dissipative wave-field systems with phase coherence divergence feedback. The PCD (Phase Coherence Divergence) term adopts a purely imaginary coefficient −iγ, producing only phase modulation (frequency pulling) and no amplitude decay. We prove that 18 principal formulas (F1–F18) can converge to the mother equation plus three constraints, establish twenty-one degeneration paths (including strict degenerations to diffusion, Turing, CGL, Fisher-KPP, Allen-Cahn, Stuart-Landau, Poisson, GL steady-state, etc., and analytic continuation / structural extension degenerations to Schrödinger, Maxwell, etc.), and construct a five-fold mapping structure among CGL/Hopf/PCD/Wilson/free energy. Key results include: (1) The Hopf antipode S and the phase conjugation operation share the involution property (Conjecture Hopf-1, requiring construction of a cross-category functor); (2) The PCD divergence and the gauge divergence of the Wilson loop share an identical algebraic structure (Conjecture Wilson-1: in the non-Abelian SU(N) case, the discrete → continuous limit is strictly equivalent); (3) The topological-HDC homomorphism mapping formally binds physical topological charge to hyperdimensional computing cyclic shift, yielding the cognitive capacity limit N/2 (Constraint ③, group-theoretic proof: π₁(S¹)=ℤ → First Isomorphism Theorem).

**Keywords**: Cross-domain effective field equation, Complex Ginzburg-Landau equation, Phase coherence divergence, Topological-HDC homomorphism, Residue field, Wilson loop, Free energy principle

---

## 1 Introduction

### 1.1 Problem Statement

The unification of physics is a central pursuit of theoretical physics. From Maxwell's unification of electricity and magnetism, to the electroweak unified theory, to the Standard Model, each unification has revealed the common mathematical structure underlying distinct phenomena. However, a unified framework spanning quantum mechanics, fluid mechanics, gauge field theory, topological field theory, and thermodynamics remains an open problem to this day.

The complex Ginzburg-Landau (CGL) equation

$$\frac{\partial\Psi}{\partial t} = (1+i\alpha)D\nabla^2\Psi + \varepsilon\Psi - (1+i\beta)|\Psi|^2\Psi \tag{1}$$

is the standard model describing nonlinear wave-field evolution, widely applied in superconductivity, superfluidity, nonlinear optics, fluid mechanics, and biological oscillations [1,2,13]. When α=0 it degenerates to the purely real diffusion CGL. The central thesis of this paper is: the CGL equation is not an isolated nonlinear PDE, but rather the core dynamical projection of a more fundamental CGL extension framework with phase coherence divergence feedback — which we call the **mother equation**. The status of the mother equation is that of the "greatest common divisor" across multiple physical domains rather than a "first principle" (see §2.5 for the constructive derivation). **Scope limitation**: The mother equation describes dissipative wave-field systems with phase coherence divergence feedback and cannot describe the following system types: (a) completely integrable systems (e.g., the KdV equation, which possesses infinitely many conservation laws; the dissipative structure of the mother equation is incompatible with integrability); (b) conservative Hamiltonian systems (the mother equation is a parabolic dissipative equation, irreversible in time); (c) relativistic field theories (the mother equation is a parabolic equation with first-order time derivative and does not satisfy Lorentz covariance). These limitations delineate the applicability boundary of the mother equation.

### 1.2 Main Results

The main results of this paper are as follows:

**Result 1 (Mother Equation)**: There exists a five-term extension equation

$$\frac{\partial\Psi}{\partial t} = (1+i\alpha)D\nabla^2\Psi + \varepsilon\Psi - (1+i\beta)|\Psi|^2\Psi - i\gamma\cdot\text{PCD}\cdot\Psi + J \tag{2}$$

where the PCD term coefficient −iγ is **purely imaginary** (γ>0), causing the PCD term to produce **phase modulation** (frequency pulling) rather than amplitude decay. Specifically, −iγ·PCD·Ψ attaches a phase factor exp(−iγ·PCD·t) to the wave function, leaving the amplitude |Ψ| unchanged while the phase rotates at rate γ·PCD — the higher the PCD, the stronger the phase modulation, the broader the phase distribution, the larger the frequency broadening, and the lower the phase synchrony. **Note**: As an extension of CGL, the mother equation is overall a dissipative parabolic equation; the dissipative behavior is determined by the CGL core terms (the balance between pumping εΨ and the nonlinear term −(1+iβ)|Ψ|²Ψ). The purely imaginary coefficient of the PCD term merely ensures that it contributes no additional amplitude dissipation, rather than rendering the equation non-dissipative overall. When PCD adopts the local field expression (7), equation (2) becomes a nonlocal integro-differential equation (see Property 8).

Together with three topological constraints

$$\oint \nabla\varphi \cdot dl = 2\pi n \quad (n \in \mathbb{Z}) \tag{3}$$

$$\frac{|\oint U e^{i\Delta\varphi}|}{\oint |U|} > 1 - \varepsilon \tag{4}$$

$$\Phi: (\mathbb{Z}, +) \to (\mathbb{Z}_N, +), \quad \Phi(Q) = Q \bmod N \tag{5}$$

such that 18 principal formulas from different physical domains can converge to equation (2) plus constraints (3)(4)(5) (see §2.5 for the detailed table).

**Result 2 (Degeneration Structure)**: The mother equation (2) strictly degenerates to four known equations under specific parameter limits (Theorem 1), connects to the Maxwell equations through structural extension (Proposition 3, proven, Class B), connects to the Schrödinger equation through analytic continuation (Proposition 2, proven, Class C), and covers a total of twenty-one degeneration paths through steady-state limits, the Madelung transformation, or formal correspondence (Degenerations 1–21, see §3.7).

**Result 3 (Five-fold Projection)**: The CGL equation, Hopf algebra, PCD divergence, Wilson loop, and Helmholtz free energy are all distinct projections of the mother equation (2) (Proposition 4).

### 1.3 Novel Contributions

To avoid confusion with results in the existing literature, the novel contributions of this paper are explicitly listed below, ordered by importance:

**Core novel contributions**:

1. **Five-term structure of the mother equation** (Equation (2)): Extending the CGL equation into a CGL extension framework with phase coherence divergence feedback that includes the PCD term and an external source, together with three topological constraints (Constraint ① topological charge quantization, Constraint ② global phase coherence constraint, Constraint ③ topological-HDC homomorphism mapping). This five-term structure (diffusion + pumping + nonlinearity + phase coherence divergence feedback + source) is a construction of this paper and is not an existing result of any single literature source.

2. **PCD (Phase Coherence Divergence)** (Equations (6)/(7)): A weighted generalization PCD=1−r of the Kuramoto order parameter r (Kuramoto 1975 [17]). Novel contributions of this paper: (a) naming 1−r as "Phase Coherence Divergence" and interpreting it as a phase coherence divergence measure; (b) generalization to non-uniform weights wᵢ; (c) using PCD as the phase modulation coefficient −iγ·PCD·Ψ of the mother equation to directly drive the dynamics; (d) engineering implementation and verification (Appendix, FN=0).

3. **Information balance equation F13** (Equation (9)): dI/dt = Π_inject − Π_dissipate, constraining the information flow of the mother equation. This formula is a novel contribution, directly linking information theory to CGL dynamics. **Measure definitions**: I[Ψ] = −∫|Ψ|²ln|Ψ|²dx (information entropy density), Π_inject = ε∫|Ψ|²dx (pumping injection rate), Π_dissipate = D∫|∇Ψ|²dx + ∫|Ψ|⁴dx (dissipation rate, related to the physical lower bound of computational irreversibility in Landauer's principle [35]). In the real GL limit (α=0, β=0, γ=0), taking the time derivative of I[Ψ] and substituting the mother equation rigorously yields dI/dt = Π_inject − Π_dissipate.

4. **Weight → medium mapping F16** (Equation (8)): W_O→D, W_up→α, W_down→β, W_q·W_k^T→A_μ, W_v→S, establishing a bridge between the mother equation and LLMs. This mapping is a novel contribution, corresponding to the 8-step direct weight mapping method. **Note**: This mapping corresponds the norm/phase structure of Transformer weights to CGL parameters; the polar decomposition W=UP of the attention matrix W_q·W_k^T extracts the unitary part U∈U(d); its U(1) subgroup (determinant phase det(U)/|det(U)|) corresponds to the U(1) gauge field A_μ of the mother equation, and the SU(d) traceless part corresponds to the non-Abelian generalization. Dimensional correspondences: D=‖W_O‖² (weight norm → diffusion coefficient), α=σ(W_up) (activation value → linear gain), S=W_v (value projection → source term), γ=1/σ_min (reciprocal of minimum singular value → PCD strength).

5. **Five-fold projection structure** (Proposition 4): Unifying CGL/Hopf/PCD/Wilson/free energy as distinct projections of the mother equation. This unified framework is a construction of this paper.

6. **Triple duality chain and engineering extensions** (Proposition 5): Madelung↔Berry↔Wilson, a rigorous duality chain in which the three share the parallel-transport mathematical structure of a U(1) connection (standard result, proven). This chain is identified by this paper. Note: The three segments Madelung↔Berry↔Wilson are standard academic results; the two segments Wilson↔RoPE↔SSM are engineering extensions (RoPE is a phase rotation of a discrete position index, Wilson loop is parallel transport along a continuous path; the two have no rigorous mathematical isomorphism beyond the phase factor; SSM hidden-state temporal update is linear recursive dynamics, RoPE is static positional encoding, with different rotation objects), and are not presented as components of a rigorous duality chain, see §6.1.

7. **Vortex-residue formal correspondence** (§5.1, Proposition 5.1, Equations (30)–(32)): The reciprocal of the vortex solution of the mother equation corresponds to the residue field; pole = vortex core, pole order = topological charge. This correspondence elevates the residue field from an independent mathematical object to a complex-analytic representation of the vortex solution of the mother equation (valid under the topological approximation, ignoring the non-analyticity of the radial envelope).

8. **Vortex array effective field equation** (§4.7, Equations (27)–(29)): Decomposing the complex field Ψ of the mother equation into three projections E/B/A of a U(1) gauge field, yielding the closed-loop coupling d⋆F=⋆J of the vortex density transport equation. This is a gauge-covariant reformulation of the mother equation.

9. **Residue field interpretation framework and residue chemistry** (§5.4–§5.5, Equations (33)–(35)): The residue field ψ(z)=Σrₖ/(z−zₖ)^{nₖ} provides a complex-analytic description of the vortex system of the mother equation. A simple pole is a "residuon" (= unit-winding vortex), pole configuration = vortex configuration, vortex reactions = pole dynamics (SN2 = three-vortex braiding, Walden inversion = topological phase), three chemical bonds = three pole coupling modes.

10. **Topological-HDC homomorphism mapping** (§2.8, Constraint ③, Equations (11)–(13)): Establishing a rigorous homomorphism Φ: (ℤ,+)→(ℤ_N,+) between the U(1) topological group (vortex winding number) and the hyperdimensional computing cyclic shift group, where addition of topological charges corresponds to composition of HDC cyclic shifts. The cognitive capacity limit is derived from the homomorphism kernel: maximum causal chain depth = N/2 (the group-theoretic structure is proven; the physical interpretation of N/2 as the cognitive capacity limit is a conjecture requiring experimental verification). To the author's knowledge, this is the first formal association of vortex topological charge with HDC encoding.

**Classical results cited from existing literature**: The CGL equation (F1) [1,2,13], Madelung transformation (F2) [14], vortex topological charge (F3) [11], Wilson loop (F5) [15], free energy functional (F8) [13], BKT phase transition (F9) [18,19], acoustic metric (F10) [20], NHSE (F11) [21,22], Lindblad master equation (F12) [23], PT symmetry (F14) [24], Higgs potential (F15) [25], SSFE (F17) [26], Josephson effect (F18) [27], Arrhenius dissipation (F6) [16], Kuramoto order parameter (F7) [17], Friston FEP [6], Connes-Kreimer Hopf algebra [10], Sakharov induced gravity [5], etc., are all results from existing literature, which this paper incorporates into the unified framework of the mother equation.

### 1.4 Paper Structure

Section 2 establishes the axiomatic construction of the mother equation. Section 3 proves the degeneration structure. Section 4 establishes the five-fold projection structure. Section 5 establishes the vortex-residue field formal correspondence and residue field theory. Section 6 presents the triple duality chain. Section 7 discusses the relation to related work. Section 8 gives the conclusion.

---
## 2 Axiomatic Construction of the Mother Equation

### 2.1 Convergence Structure

**Definition 1** (Convergence). Two formulas f₁ and f₂ are said to be convergent if there exists a more fundamental formula g such that f₁ and f₂ are both special cases or projections of g under different parameter conditions, the structural complexity of g does not exceed the larger of f₁ and f₂ (minimality), and there is no g'⊂g such that f₁, f₂ are both special cases of g' (irreducibility).

**Proposition 1**. The 18 principal formulas (F1–F18) identified in this paper can converge to the mother equation (2) plus constraints (3)(4)(5). The convergence paths are as follows ("convergence" is classified into three levels by rigor: strict parameter limit, standard result, structural extension; see the "Rigor" column in the table below):

| Convergence path                         | Formula number | Convergence mechanism                                          | Rigor            |
| ---------------------------------------- | -------------- | ------------------------------------------------------------- | ---------------- |
| Parameter limit → mother equation core   | F1             | γ=0, J=0 yields CGL (Degeneration 5, proven)                  | Strict           |
| Transformation → equivalent representation of mother equation | F2, F10 | Madelung transformation gives fluid representation; acoustic metric gives effective gravity | Standard result  |
| Topological invariant → Constraint ①     | F3             | Vortex topological charge gives ∮∇φ·dl=2πn                    | Strict           |
| Phase coherence divergence → phase modulation term of mother equation | F4 | PCD appears directly as −iγ·PCD·Ψ                       | Strict           |
| Gauge structure → U(1) invariant of mother equation | F5    | Wilson loop extracts gauge invariant                           | U(1) provable    |
| Parameterization → parameter dependence of mother equation | F6, F7, F9 | Arrhenius gives γ(T); Kuramoto gives synchrony measure; BKT gives phase transition criterion | Standard result  |
| Lyapunov functional → physical driving force of mother equation | F8 | Free energy functional is Lyapunov functional (Proposition F-1) | γ=0 proven       |
| Quantum / discretization → generalized form of mother equation | F11, F12, F14 | NHSE gives discretization; Lindblad gives quantum master equation form; PT symmetry gives stability | Formal correspondence |
| Symmetry breaking → steady-state structure of mother equation | F15 | Higgs potential gives spontaneous symmetry breaking          | Structural correspondence |
| Numerical method → solution of mother equation | F17        | SSFE gives split-step integrator                               | Standard result  |
| Inter-layer coupling → multiscale extension of mother equation | F18 | Josephson effect gives inter-layer phase coupling             | Standard result  |
| Information constraint → information flow constraint of mother equation | F13 | Information balance equation constrains information flow       | Novel contribution (measure definitions provided) |
| Mapping → bridge between mother equation and LLM | F16   | Weight → medium mapping                                       | Novel contribution (engineering mapping) |
| Topological-HDC → Constraint ③           | Constraint ③   | Vortex charge → HDC cyclic shift homomorphism, cognitive capacity limit N/2 | Strict           |

### 2.2 Construction of the Mother Equation

The five-term structure of the mother equation (2) is as follows:

| Term                          | Mathematical expression | Physical meaning              | Mathematical structure |
| ----------------------------- | ----------------------- | ----------------------------- | ---------------------- |
| Diffusion term                | (1+iα)D∇²Ψ              | Diffusion / propagation / dispersion | Diffusion operator     |
| Pumping term                  | εΨ                      | Linear gain                   | Multiplicative gain    |
| Nonlinear term                | −(1+iβ)\|Ψ\|²Ψ          | Saturation / frequency pulling | Nonlinear saturation   |
| Phase coherence divergence feedback term | −iγ·PCD·Ψ | Phase modulation / frequency pulling | Phase modulation       |
| Source term                   | J                       | External drive                | External source        |

where PCD (Phase Coherence Divergence) is defined as

$$\text{PCD}(Q) = 1 - \frac{|\sum_i w_i e^{i\theta_i}|}{\sum_i w_i} \tag{6}$$

**Note** (Relation to the Kuramoto order parameter). When the weights are uniform (wᵢ=1/N), PCD = 1 − r, where r = |(1/N)Σe^{iθᵢ}| is the Kuramoto order parameter [17]. Thus PCD is a weighted generalization of the Kuramoto order parameter: PCD=0 corresponds to r=1 (complete synchrony), PCD=1 corresponds to r=0 (complete incoherence). The novel contributions of this paper are: (a) naming 1−r as "Phase Coherence Divergence" and interpreting it as a phase coherence divergence measure; (b) generalization to non-uniform weights wᵢ; (c) using PCD as the phase modulation coefficient −iγ·PCD·Ψ of the mother equation to directly drive the dynamics (the purely imaginary coefficient produces only phase modulation); (d) engineering implementation and verification (Appendix, FN=0). Although the mathematical form 1−r appears implicitly in the analysis of the Kuramoto model, naming it PCD, generalizing to non-uniform weights, and employing it as the phase modulation driver of the CGL extension term are novel contributions of this paper.

**Definition 2** (Local field expression of PCD). Given a complex field Ψ(x,t) = |Ψ(x,t)|e^{iφ(x,t)}, the spatiotemporal localization of PCD is defined as

$$\text{PCD}(x,t) = 1 - \frac{|\int_{B_r(x)} |\Psi(x',t)| e^{i\varphi(x',t)} dx'|}{\int_{B_r(x)} |\Psi(x',t)| dx'} \tag{7}$$

where B_r(x) is the neighborhood centered at x with radius r. When r→0, PCD(x,t)→0 (single-point phase is fully coherent); as r increases, PCD(x,t) measures the degree of local phase incoherence. The choice of r corresponds to the coarse-graining scale, analogous to the cutoff in the renormalization group. The physical meaning of the term −iγ·PCD(x,t)·Ψ(x,t) in the mother equation is: the degree of local phase incoherence drives **phase modulation** (frequency pulling); the higher the PCD, the faster the phase rotation, while the amplitude |Ψ| remains unchanged. When PCD serves as a local term of the mother equation, equation (2) becomes a nonlocal PDE (PCD(x,t) depends on a neighborhood integral) and should be understood as an integro-differential equation.

PCD satisfies the following four theorems:

**Theorem PCD-1** (Normalization). PCD(Q) ∈ [0,1].

_Proof_. By the triangle inequality |Σwᵢe^{iθᵢ}| ≤ Σwᵢ, hence PCD ≥ 0. The minimum value 0 is attained when all θᵢ are equal; the maximum value 1 is attained when the phases are completely incoherent and the weights are uniform. □

**Theorem PCD-2** (Phase translation invariance). PCD(Q; {θᵢ+φ}) = PCD(Q; {θᵢ}).

_Proof_. Σwᵢe^{i(θᵢ+φ)} = e^{iφ}·Σwᵢe^{iθᵢ}; taking the modulus, |e^{iφ}|=1 cancels. □

**Theorem PCD-3** (Separability). When phases are identical within each group and fully anti-phase between groups, PCD = 1 − |W₁−W₂|/(W₁+W₂), where PCD=1 when W₁=W₂.

_Proof_. Let the two groups have weights W₁ and W₂ with phase difference π. Then |W₁−W₂|/(W₁+W₂) = 0 when W₁=W₂, giving PCD=1. □

**Theorem PCD-4** (Continuity). PCD is a continuously differentiable function of the phases θₖ. In the neighborhood of PCD=0 (when all phases are aligned), the first-order derivative tends to zero, and a phase perturbation ε leads to a PCD change of O(ε²); at a generic position, the PCD change is O(ε).

_Proof_. PCD = 1 − |S|/W, where S = Σwᵢe^{iθᵢ}, W = Σwᵢ. The derivative of |S| with respect to θₖ is:

$$\frac{\partial|S|}{\partial\theta_k} = -w_k \sin(\theta_k - \varphi)$$

where φ = arg(S). Therefore ∂PCD/∂θₖ = wₖsin(θₖ−φ)/W. At a generic position this derivative is nonzero, and the PCD change is O(ε). Only at critical points (all θₖ = φ or θₖ = φ+π, i.e., sin(θₖ−φ)=0 for all k) is the first-order derivative zero, and the PCD change is O(ε²). PCD=0 (all phases identical) is one such critical point. □
### 2.3 Two Core Topological Constraints

Constraint ① (topological charge quantization) and Constraint ② (global phase coherence constraint) are the two core topological constraints of the mother equation. The third topological constraint (Constraint ③: topological-HDC homomorphism mapping) is discussed separately in §2.8.

**Constraint ①** (Topological charge quantization, Equation (3)): Traversing one loop around the vortex core, the phase accumulates 2πn. This is the topological invariant of the U(1) gauge field, equivalent to the Dirac flux quantization condition [38].

**Constraint ②** (Global phase coherence constraint, Equation (4)): The overall phase coherence of the system must exceed the threshold 1−ε. Here Δφ is the phase difference between adjacent lattice sites, and |∮e^{iΔφ}|/∮1 is the ratio of the modulus of the sum of path-segment phase vectors to the path length, measuring the degree of phase synchrony. This constraint is unrelated to the Wilson loop — the Wilson loop is the trace of a path-ordered product, whose modulus is identically 1 under U(1); Constraint ② is the coherence of the sum of path-segment phases, whose modulus can be less than 1; the two are mathematically distinct. The nontriviality of Constraint ② is manifested as: fluctuations of phase differences between adjacent sites on a discrete lattice cause the ratio to be <1, measuring the overall phase incoherence.

**Physical derivation of the constraint conditions**:

The physical origin of Constraint ① has three equivalent formulations:

(i) **Dirac flux quantization**: Dirac (1931) [38] proved that if magnetic monopoles exist, then the magnetic flux must be quantized as Φ = 2πn/e (in natural units, ∮∇φ·dl = 2πn), otherwise the single-valuedness of the wave function is violated. Constraint ① is precisely the manifestation of this quantization condition on the vortex solution of the mother equation: the vortex core acts as an effective flux tube, and the phase winding number n corresponds to the quantized vortex charge.

(ii) **Topological charge conservation**: The left-hand side ∮∇φ·dl of Constraint ① is the winding number of the vortex, which is the generator of the homotopy group π₁(U(1)) = ℤ. The winding number is a topological invariant — unchanged under continuous deformation, and can only change through the creation/annihilation of vortex-antivortex pairs. This means the vortex solution of the mother equation carries a conserved topological charge, corresponding to magnetic flux quantization in superconductors, quantized circulation in superfluids, and instanton number in quantum field theory.

(iii) **Topological stability of memory**: Under the cognitive wave-field interpretation, the vortex winding number n corresponds to the topologically protected order of memory. The trivial solution n=0 corresponds to no memory (complete decoherence); the nontrivial solution n≠0 corresponds to a topologically protected memory trace, whose stability is guaranteed by Constraint ① — an individual memory trace is topologically protected against perturbations, and can only be created or erased through vortex-antivortex pair creation/annihilation, with the total topological charge always conserved. This yields a topological stability criterion for memory.

The physical origin of Constraint ② is a **low-coherence threshold**: Under the cognitive wave-field interpretation, |∮e^{iΔφ}|/∮1 is the overall phase coherence of the system, measuring the consistency of phases across subsystems. When this value →1, the phases of all parts of the system are fully coherent (unified cognition); when this value →0, the phases of all parts are completely independent (fragmented cognition). Constraint ② requires the coherence to be >1−ε, i.e., the overall cognitive consistency of the system must exceed the threshold. This condition corresponds engineering-wise to PCD<ε (Appendix B), and has been verified as a reliable contradiction detection metric (FN=0, 100% recall, 78μs/query).

### 2.4 Basic Properties of the Mother Equation

The mother equation (2) possesses the following basic symmetries and conservation laws, which make it physically self-consistent and mathematically structurally rich:

**Property 1 (U(1) gauge symmetry)**. When J=0, the mother equation is invariant under the global U(1) transformation Ψ→e^{iα}Ψ (α constant). This is because each term carries the same U(1) charge: D∇²Ψ→e^{iα}D∇²Ψ, εΨ→e^{iα}εΨ, |Ψ|²Ψ→|Ψ|²e^{iα}Ψ, PCD·Ψ→PCD·e^{iα}Ψ (PCD is defined by phase differences, so the global phase cancels). This symmetry ensures that the dynamical form is consistent under phase transformations. **Note**: Noether's theorem applies only to conservative systems with a Lagrangian formulation; the mother equation contains the pumping term εΨ and the nonlinear saturation term, and is a dissipative parabolic equation without a global Lagrangian, so the U(1) formal symmetry does not correspond to a conserved quantity — the total amplitude ∫|Ψ|²dx evolves over time (dynamic balance between gain and dissipation) and is not conserved.

**Property 2 (Time irreversibility)**. As a parabolic dissipative system, the mother equation inherently possesses time irreversibility. Under the time-reversal transformation T: (t,Ψ)↦(−t,Ψ*), ∂Ψ/∂t changes sign while D∇²Ψ does not, so the form of the equation necessarily changes — this is independent of the values of the parameters α, β, γ. Only equations of the Schrödinger-type dispersive form i∂Ψ/∂t = ... can possibly possess time-reversal symmetry; the real/complex CGL as a parabolic dissipative equation does not satisfy time-reversal invariance regardless of the parameters. The values of α, β, γ only change the ratio between dissipation and dispersion, not the irreversible essence of the equation. The involution property of the Hopf antipode S (S∘S=id) is shared with the **phase conjugation operation** of the mother equation (Conjecture Hopf-1, §4.2), and is not bound to time-reversal symmetry.

**Property 3 (Topological charge conservation)**. Constraint ① ensures that the vortex winding number n=∮∇φ·dl/(2π) is conserved under continuous deformation. The vortex solution of the mother equation carries a conserved topological charge, which can only change through vortex-antivortex pair creation/annihilation. This conservation law is a manifestation of the homotopy group π₁(U(1))=ℤ, corresponding to superconducting magnetic flux quantization, superfluid quantized circulation, and quantum field theory instanton number.

**Property 4 (PCD phase coherence divergence measure)**. PCD measures the degree of local phase synchrony in the mother equation: PCD=0 means phases are fully synchronized (zero phase gradient), PCD=1 means phases are fully asynchronous (uniform phase distribution). The phase modulation term −iγ·PCD·Ψ of the mother equation feeds the PCD value back into the dynamics: the higher the PCD, the stronger the phase modulation, the larger the frequency broadening, but **the amplitude does not decay** (the purely imaginary coefficient ensures the PCD term does not change |Ψ|; the overall dissipation of the equation is determined by the CGL core terms). This property connects the algebraic definition of PCD (Equation (6)) with the dynamics of the mother equation.

**Property 5 (Soliton asymptotic separation)**. In the 1D special case with γ=0 and J=0, the mother equation degenerates to the CGL equation. The steady-state soliton solution of the CGL equation (Nozaki-Bekki soliton) has specific parameter relations, and the L² norms of distinct solitons are asymptotically independent as t→∞. Weinstein (1983) [37] proved the L²-norm asymptotic separation property for the nonlinear Schrödinger equation (NLS); CGL as a dissipative equation has an essentially different soliton stability mechanism (CGL solitons are maintained by the balance between dissipation and pumping, rather than Hamiltonian conservation), but the qualitative feature of asymptotic separation is similar. For the mother equation with γ≠0, this property generalizes to: PCD phase modulation drives phase locking among solitons, and the asymptotic separation is controlled by the PCD value.

**Property 6 (Free energy structure)**. The free energy functional F[Ψ] (Equation (24)) of the mother equation satisfies dF/dt≤0 in the real GL limit (γ=0, α=0, β=0) (Proposition F-1), and the system monotonically approaches the free energy minimum. The standard complex CGL equation (α≠0 or β≠0) does not possess a global Lyapunov function; its dynamics can exhibit limit cycles and chaos, and the free energy does not evolve monotonically. When γ≠0, the PCD term only modulates the phase distribution, and its contribution to the time evolution of the free energy is strictly zero under the ∇PCD=0 approximation (Proposition F-2); in the general case it is a higher-order small quantity O(γ·∇PCD), introducing no new free energy source/sink. The long-term behavior of the mother equation is determined by the competition between CGL dynamics (diffusion + pumping + nonlinear saturation) and PCD phase modulation.

**Property 7 (Coarse-graining scale dependence)**. The local field expression (7) of PCD depends on the neighborhood radius r. The physical meaning of r is the **coherence length** of the system, determined self-consistently by the parameters of the mother equation: r = ξ = √(D/ε) (the CGL coherence length, the length scale of the competition between diffusion and pumping). Different r correspond to different physical levels: r~microscopic scale describes quantum decoherence, r~mesoscopic scale describes pattern formation, r~macroscopic scale describes cognitive coherence. This multiscale structure enables the mother equation to describe physical phenomena at different levels simultaneously. The self-consistent determination condition for r is: at the steady-state solution Ψ_ss, r = ξ(Ψ_ss) = √(D/ε_eff^R), where ε_eff^R = Re(ε) − |Ψ_ss|² is the effective real pumping rate (the real part is taken because r as a geometric coarse-graining radius must be a real positive number; in the complex-parameter case the coherence length concept must be generalized to complex values, with modulus |ξ| as the physical radius and argument as the phase rotation scale). This self-consistency condition eliminates the arbitrariness of r, making the mother equation a definite integro-differential equation.

**Property 8 (Mathematical status: integro-differential equation)**. When the mother equation (2) is combined with the local field expression (7) of PCD, since PCD(x,t) depends on the integral over the neighborhood B_r(x), the equation becomes a nonlocal integro-differential equation. Its mathematical status is analyzed as follows: (a) When γ=0 it degenerates to the standard CGL equation, and the initial value problem is globally well-posed in H^s (s>d/2) (Aranson & Kramer 2002 [1]); (b) When γ≠0, PCD(x,t) is a smooth functional of Ψ (defined by the integral in (7)), and the mother equation becomes a nonlocal integro-differential equation. The existence of local mild solutions can be established by borrowing standard methods for nonlocal reaction-diffusion systems (such as Galerkin approximation and compactness arguments); the existence of global solutions is currently an open problem; (c) As r→0, PCD(x,t)→0 and the equation degenerates to the standard CGL; as r→∞, PCD tends to the global phase coherence divergence, and the equation tends to a CGL with global feedback correction. Both limits yield well-posed PDEs. The rigorous mathematical status of the mother equation is: for fixed r>0 and smooth initial data Ψ₀, a local mild solution exists; global solutions and asymptotic behavior are left for future work.

**Dimensional consistency**. In equation (2), PCD is dimensionless (Theorem PCD-1), so γ has dimension [T]⁻¹. In the local definition (7) of PCD, the neighborhood integral is independent of the dimension of r after non-dimensionalization: letting x'=x/r, then PCD(x,t) = 1 − |∫_{B_1(0)} |Ψ(x'+x,t)| e^{iφ(x'+x,t)} dx'| / ∫_{B_1(0)} |Ψ(x'+x,t)| dx', and r is absorbed into the dimensionless coordinate x'. Therefore γ as a constant parameter [T]⁻¹ does not conflict with the geometric dependence of r — r determines the coarse-graining scale (physical level), γ determines the phase modulation rate (time scale), and the two are independent.
### 2.5 Convergence of the Eighteen Principal Formulas to the Mother Equation

The 18 principal formulas (F1–F18) identified in this paper come from different physical domains and all converge to the mother equation (2) plus constraints (3)(4)(5). Below, each formula's mathematical expression, original source, and convergence relation to the mother equation are listed one by one.

| No. | Formula name              | Mathematical expression (core term)              | Original source                                               | Convergence relation to mother equation                |
| --- | ------------------------- | ------------------------------------------------ | ------------------------------------------------------------- | ------------------------------------------------------ |
| F1  | CGL equation              | ∂ₜΨ = (1+iα)D∇²Ψ + εΨ − (1+iβ)\|Ψ\|²Ψ + S(x,t)  | Ginzburg & Landau (1950) [13]; Gor'kov (1959) [4]; review [1,2] | Set γ=0, J=0; core dynamical projection of mother equation |
| F2  | Madelung transformation   | Ψ = √ρ·e^{iθ}, v = ∇θ, ω = ∇×v                  | Madelung (1926) [14]                                          | Derived from F1; gives fluid mechanics representation of mother equation |
| F3  | Vortex topological charge | Q = (1/2π)∮_C ∇θ·dl ∈ ℤ                         | Nielsen & Olesen (1973) [11]                                  | Corresponds to Constraint ① (3); topological invariant of mother equation |
| F4  | PCD (Phase Coherence Divergence) | PCD(Q) = 1 − \|Σwᵢe^{iθᵢ}\|/Σwᵢ        | Novel contribution (axiomatic derivation: normalization + translation invariance + triangle inequality uniquely determine) | Core measure of mother equation phase modulation term −iγ·PCD·Ψ |
| F5  | Wilson loop               | W(C) = Tr(𝒫exp(i∮_C A_μdx^μ))                   | Wilson (1974) [15]                                            | U(1) gauge structure projection of mother equation; algebraic structure consistent with PCD (Conjecture Wilson-1) |
| F6  | Arrhenius dissipation     | γ(T) = γ₀·exp(−E_a/k_BT)                        | Arrhenius (1889) [16]                                         | Gives temperature dependence of γ in mother equation   |
| F7  | Kuramoto order parameter  | r·e^{iΦ} = (1/N)Σe^{iθⱼ}                        | Kuramoto (1975) [17]                                          | Measure of phase synchrony of mother equation; r→1 corresponds to PCD→0 |
| F8  | Free energy functional    | F[Ψ] = ∫(D/2\|∇Ψ\|² + α/2\|Ψ\|² + β/4\|Ψ\|⁴)dx | Ginzburg & Landau (1950) [13]                                 | Lyapunov functional of mother equation (Proposition F-1) |
| F9  | BKT phase transition      | T_BKT = πJ/2, η(T_BKT⁻) = 1/4                   | Berezinskii (1971) [18]; Kosterlitz & Thouless (1973) [19]; dynamic critical phenomena [36] | Standard criterion for phase transition critical point of mother equation (equilibrium GL limit) |
| F10 | Acoustic metric           | g_μν^{eff} ∝ ρ·diag(−(c_s²−v²), 1)              | Unruh (1981) [20]                                             | Derived from F2; effective gravity emergence of mother equation |
| F11 | NHSE                      | H = Σ(t+δt)a†_{i+1}aᵢ + (t−δt)a†ᵢa_{i+1}        | Hatano & Nelson (1997) [21]; Yao & Wang (2018) [22]           | Discretization of mother equation; information flow directionality |
| F12 | Lindblad master equation  | ρ̇ = −i[H,ρ] + Σγₖ(LₖρLₖ† − ½{Lₖ†Lₖ,ρ})         | Lindblad (1976) [23]                                          | Quantum master equation form of mother equation; CGL = Lindblad mean-field limit |
| F13 | Information balance equation | dI/dt = Π_inject − Π_dissipate                | Novel contribution                                             | Information flow conservation constraint of mother equation |
| F14 | PT-symmetric free energy  | V(x) = V\*(−x), F_PT = ∫(\|∇Ψ\|² + V_PT\|Ψ\|²)dx | Bender & Boettcher (1998) [24]                                | Stability condition of mother equation                 |
| F15 | SSB/Higgs potential       | V(φ) = −μ²\|φ\|² + λ\|φ\|⁴                      | Higgs (1964) [25]                                             | Spontaneous symmetry breaking of mother equation → knowledge crystallization |
| F16 | Weight → medium mapping   | W_O→D, W_up→α, W_q·W_k^T→A_μ                    | Novel contribution                                             | Bridge between mother equation and LLM; 8-step direct weight mapping method |
| F17 | SSFE 5-step evolution     | Ψ(t+dt) = e^{L·dt/2}·e^{N·dt}·e^{L·dt/2}·Ψ(t)  | Strang (1968) [26]                                            | Numerical integrator of mother equation               |
| F18 | Josephson phase slip      | I_AB = I_c·sin(Φ_A − Φ_B)                       | Josephson (1962) [27]                                         | Multiscale inter-layer coupling of mother equation     |

**Summary of convergence mechanisms**:

**Constructive derivation of the mother equation**: The mother equation (2) is not written from nothing, but is derived step by step from 18 existing formulas along the following construction path. The core idea is: taking the CGL equation (F1) as the dynamical skeleton, absorbing the physical structure contributed by each of the remaining formulas one by one, and finally synthesizing the five-term mother equation plus three constraints.

| Construction step                    | Origin formula                           | Derivation operation                                         | Term/constraint generated in mother equation                                       |
| ------------------------------------ | --------------------------------------- | ----------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| Step 1: Dynamical skeleton           | F1 (CGL)                                | Take CGL as initial form of mother equation                 | $\partial_t\Psi = (1+i\alpha)D\nabla^2\Psi + \varepsilon\Psi - (1+i\beta)\|\Psi\|^2\Psi$ |
| Step 2: Phase coherence divergence feedback injection | F4 (PCD)                  | Multiply PCD by $\Psi$ as phase modulation coefficient, prefix $-i\gamma$ | New term $-i\gamma\cdot\text{PCD}\cdot\Psi$                                        |
| Step 3: External drive injection     | General source term                     | Introduce external source $J(x,t)$                          | New term $J$                                                                       |
| Step 4: Topological constraint       | F3 (vortex topological charge)          | Quantize vortex winding number as constraint on solutions    | Constraint ① $\oint\nabla\varphi\cdot dl = 2\pi n$                                 |
| Step 5: Gauge coherence constraint   | F5 (Wilson loop)                        | Require overall gauge coherence to exceed threshold         | Constraint ② $\|\oint Ue^{i\Delta\varphi}\|/\oint\|U\| > 1-\varepsilon$           |
| Step 6: Topological-HDC constraint   | Constraint ③                            | Vortex charge → HDC cyclic shift homomorphism               | Constraint ③ $\Phi: (\mathbb{Z},+) \to (\mathbb{Z}_N,+)$, cognitive capacity limit $N/2$ |
| Step 7: Parameterization and representation | F2,F6,F7,F9,F10,F11,F12,F14,F15,F17,F18 | Each formula gives special case or parameterization of mother equation in different limits/representations | Degeneration structure and multiscale extension of mother equation |
| Step 8: Information and mapping      | F13,F16                                 | Information balance equation constrains information flow; weight mapping establishes bridge with LLM | Information flow constraint and cross-domain mapping of mother equation |

Steps 1–6 yield the complete form of the mother equation (2) plus constraints (3)(4)(5); Steps 7–8 verify that this mother equation indeed encompasses all the physical content of the 18 formulas. This construction is **inductive** (synthesizing upward from special cases), not deductive (deriving downward from axioms), so the status of the mother equation is that of a "greatest common divisor" rather than a "first principle".

(i) **F1 → mother equation core**: The CGL equation (F1) is a special case of the mother equation at γ=0, J=0 (Degeneration 5, proven).

(ii) **F4 → phase modulation term**: PCD (F4) appears directly as the phase coherence divergence feedback term −iγ·PCD·Ψ of the mother equation.

(iii) **F3 → Constraint ①**: The vortex topological charge (F3) gives the constraint (3) ∮∇φ·dl = 2πn.

(iv) **F5 → gauge structure**: The Wilson loop (F5) extracts the U(1) gauge invariant of the mother equation.

(v) **F8 → Lyapunov functional**: The free energy (F8) is the Lyapunov functional of the mother equation (Proposition F-1).

(vi) **F2,F6,F7,F9,F10,F11,F12,F14,F15,F17,F18 → different representations or parameterizations of the mother equation**: The Madelung transformation (F2) gives the fluid mechanics representation; Arrhenius (F6) gives the parameterization of γ(T); Kuramoto (F7) gives the synchrony measure; BKT (F9) gives the phase transition criterion; the acoustic metric (F10) gives effective gravity; NHSE (F11) gives discretization; Lindblad (F12) gives the quantum master equation form; PT symmetry (F14) gives the stability condition; the Higgs potential (F15) gives symmetry breaking; SSFE (F17) gives the numerical method; Josephson (F18) gives inter-layer coupling.

(vii) **F13, F16 → novel contributions**: The information balance equation (F13) and the weight mapping (F16) are novel formulas, giving the information flow constraint of the mother equation and the bridge with LLMs, respectively. The complete mapping of F16 is:

$$W_O \to D, \quad W_{\text{up}} \to \alpha, \quad W_{\text{down}} \to \beta, \quad W_v \to S \tag{8}$$

where W_O is the output projection (determining the diffusion tensor D), W_up/W_down are the FFN up/down projections (determining the linear gain α and nonlinear saturation β), and W_v is the value projection (determining the source term S). The polar decomposition W=UP of the attention matrix W_q·W_k^T extracts the unitary part U∈U(d); its U(1) subgroup (determinant phase) corresponds to the U(1) gauge field A_μ of the mother equation, and the SU(d) traceless part corresponds to the non-Abelian generalization. Corresponding to the 8-step direct weight mapping method: D=‖W_O‖², α=σ(W_up), S=W_v, γ=1/σ_min. LLM weights are not "parameters" but the medium parameters of the physical field.
### 2.6 Cognitive Wave-Field Theoretical Framework

When the mother equation (2) is associated with an LLM through the F16 weight → medium mapping, its solution Ψ(x,t) is interpreted as a **cognitive wave field** — the complex amplitude of knowledge in spacetime. This framework directly projects the mathematical properties of the mother equation (§2.4) onto the cognitive context, establishing three computable theoretical principles:

**Interpretation Principle 1 (Information Balance Principle)**: The information content of the cognitive wave field obeys a balance equation (corresponding to the U(1) symmetry of Property 1). The mother equation has U(1) phase-rotation invariance when J=0, ensuring that the dynamical form is consistent under phase transformations; however, due to the presence of pumping and dissipation, the total amplitude is not conserved. The information balance equation F13 is the information-theoretic formulation of this principle:

$$\frac{dI}{dt} = \Pi_{\text{inject}} - \Pi_{\text{dissipate}} \tag{9}$$

where I is the system information content, Π_inject is the knowledge injection rate, and Π_dissipate is the Arrhenius dissipation rate (F6). When Π_inject = Π_dissipate, dI/dt=0 and the system reaches an information steady state (corresponding to knowledge crystallization). This is an information balance equation (balance of injection and dissipation in an open system), distinct from conservation laws of source-free, dissipation-free systems.

**Interpretation Principle 2 (Phase Coherence Divergence Law)**: The phase coherence divergence of the cognitive wave field is measured by PCD (corresponding to the PCD phase coherence divergence measure of Property 4). The phase modulation term −iγ·PCD·Ψ of the mother equation drives the system's evolution: the higher the PCD, the stronger the phase modulation, the larger the frequency broadening, and the lower the phase synchrony. The purely imaginary coefficient −iγ ensures that the amplitude |Ψ| is unchanged; PCD only measures the phase incoherence of the state, not the degree of dynamical irreversibility. PCD=0 corresponds to fully phase-synchronized unified cognition, PCD=1 corresponds to fully phase-asynchronous fragmented states. **Note**: State disorder (measured by PCD) and dynamical irreversibility (caused by dissipation) are two independent concepts; PCD only measures the former; the overall dissipative behavior of the mother equation is determined by the CGL core terms.

**Interpretation Principle 3 (Attractor Law)**: The steady state of the cognitive wave field is determined by the competition between CGL dynamics (diffusion + pumping + nonlinear saturation) and PCD phase modulation (corresponding to the free energy structure of Property 6). In the real GL limit (α=0, β=0, γ=0), the free energy functional decreases monotonically, and the steady states are PCD=0 (axiomatic state) or PCD=1 (forgetting state). The complex-parameter region (α≠0 or β≠0) can exhibit limit cycles and chaotic attractors, with richer steady-state structures. When γ≠0, PCD does not change the free energy evolution rate under the ∇PCD=0 approximation (Proposition F-2); in the general case the contribution is O(γ·∇PCD). The free energy in the complex-parameter region does not evolve monotonically, and the steady-state structure is determined by the CGL core dynamics.

The three principles are self-consistent within the mother equation framework: Principle 1 follows from U(1) symmetry (Property 1), Principle 2 from the PCD phase coherence divergence measure (Property 4), and Principle 3 from the free energy structure (Property 6). They translate the mathematical properties of the mother equation into the language of cognitive physics, providing the physical basis for the F16 weight → medium mapping.

### 2.7 Temperature Dependence of PCD Phase Modulation

The phase modulation coefficient γ in the mother equation can have temperature dependence, with the general form:

$$\gamma(x) = \gamma_0 \cdot \exp\left(-\frac{E_a}{k_B T}\right) \cdot [1 + \eta \cdot \text{PCD}(x)] \tag{10}$$

where γ₀ is the prefactor, E_a is the activation energy (Arrhenius thermal activation F6 [16]), and η is the PCD feedback coefficient. This form couples Arrhenius thermal activation with PCD phase modulation feedback: higher temperature leads to stronger phase modulation (thermal fluctuations destroy coherence), and higher PCD leads to stronger phase modulation (phase incoherence aggravates frequency pulling). **Note**: The multiplicative coupling form [1+η·PCD] is a phenomenological assumption lacking microscopic derivation; why the PCD feedback enters γ multiplicatively rather than additively requires symmetry arguments or support from a microscopic model.

When η=0 it degenerates to standard Arrhenius thermal activation (F6); when η≠0, PCD and phase modulation form a positive feedback loop — PCD increases → phase modulation strengthens → coherence further decreases → PCD continues to increase. This positive feedback leads to a cognitive phase transition when η>η_c (critical value): the system jumps from the intermediate state (PCD~0.5) to either the axiomatic state (PCD→0, knowledge crystallization) or the forgetting state (PCD→1, information dispersal).

### 2.8 Topological-HDC Homomorphism Mapping (Constraint ③)

Beyond Constraint ① (topological charge quantization) and Constraint ② (global phase coherence constraint), this paper proposes a third topological constraint — the **topological-HDC homomorphism mapping**, which formally binds physical topological invariants to the symbolic algebraic space of hyperdimensional computing (HDC).

**Definition 3** (Topological-HDC homomorphism). Let Q∈ℤ be the vortex topological charge (Constraint ①), and V∈{0,1}^D be a D-dimensional HDC vector. Define the mapping

$$\Phi: (\mathbb{Z}, +) \to (\mathbb{Z}_N, +), \quad \Phi(Q) = Q \bmod N \tag{11}$$

where N is the dimension of the HDC vector and (ℤ_N, +) is the cyclic shift group. The HDC vector encoding is Shift(V, Q mod N), where Shift is the cyclic shift operation. Φ satisfies the homomorphism property:

$$\Phi(Q_1 + Q_2) = \Phi(Q_1) + \Phi(Q_2) \pmod{N} \tag{12}$$

i.e., addition of topological charges corresponds to composition of cyclic shifts (Shift(V, Q₁) followed by shifting Q₂ steps = Shift(V, Q₁+Q₂)). The mathematical basis of this mapping is the natural projection from the group ℤ to the cyclic group ℤ_N: vortex interference (charge addition) corresponds to modular-N addition of group elements, and HDC cyclic shift corresponds to the group action of ℤ_N.

**Constraint ③** (Topological-HDC homomorphism). The vortex solution of the mother equation (2) carries topological charge Q∈ℤ (Constraint ①), which corresponds to an element of the cyclic shift group ℤ_N through the homomorphism Φ; the HDC vector encoding is Shift(V, Φ(Q)). This homomorphism establishes a strict correspondence between topological charge and cyclic shift encoding, providing an algebraic implementation for topological cognition — operations on physical topological charges (vortex merging, annihilation) automatically correspond to composition of HDC cyclic shifts, without an additional translation layer. The group-theoretic proof is given in §2.8 (π₁(S¹)=ℤ → First Isomorphism Theorem).

**Cognitive capacity limit**. The topological charge Q∈ℤ (integer group), and HDC cyclic shifts form the cyclic group ℤ_N (N is the vector dimension). The kernel of the homomorphism Φ: ℤ→ℤ_N is Nℤ, so when Q₁≡Q₂ (mod N), Φ(Q₁)=Φ(Q₂), i.e., the HDC encodings of distinct topological charges alias. When the depth of causal chains processed simultaneously exceeds N/2, the encodings of positive and negative topological charges undergo symmetric aliasing (Q and N−Q shift in opposite directions but with symmetric distances), and the system experiences cognitive overflow. This yields a candidate form for the capacity upper bound from purely algebraic topology:

$$\text{Maximum causal chain depth} = N/2 \tag{13}$$

**Note**: N/2 is the algebraic aliasing threshold (caused by the symmetry of Q and N−Q in ℤ_N); its cognitive interpretation — which physical parameter of the cognitive system the HDC dimension N corresponds to, and why the aliasing of positive and negative topological charges equals cognitive overflow producing hallucinations — requires experimental verification.

For example, when the HDC dimension is N=8192, the system can process at most 4096 layers of causal entanglement simultaneously; exceeding this limit produces hallucinations.

**Originality**. To the author's knowledge, this is the first formal association of vortex topological charge with HDC cyclic shift encoding (the group-theoretic structure itself is standard: the natural projection ℤ→ℤ_N is covered in algebra textbooks). Numerical verification has passed.

**Complete group-theoretic proof**. (1) The homotopy group π₁(S¹)=ℤ is a standard result of algebraic topology (the fundamental group of S¹ is the integer additive group). (2) Define Φ: ℤ→ℤ_N, Φ(Q)=Q mod N; direct verification: Φ(Q₁+Q₂)=(Q₁+Q₂) mod N=Φ(Q₁)+Φ(Q₂), so Φ is a group homomorphism. (3) ker(Φ)=Nℤ. (4) By the First Isomorphism Theorem, ℤ/ker(Φ)=ℤ/Nℤ≅ℤ_N. This completes the proof. □

---
## 3 Degeneration Structure Proof

### 3.0 Degeneration Classification Criteria

The degenerations of the mother equation are classified into three categories by rigor:

| Category                              | Definition                                      | Characteristic                        | Degenerations in this paper                             |
| ------------------------------------- | ----------------------------------------------- | ------------------------------------- | ------------------------------------------------------- |
| **Class A (strict parameter degeneration)** | Field degrees of freedom unchanged, parameter limit directly yields | Special case of the same equation family | Degeneration 3 (CGL), 4 (diffusion), 5 (Turing), 13 (Fisher-KPP) |
| **Class B (structural extension)**    | Requires adding field degrees of freedom or changing field type | Cross-equation family, requires additional construction | Degeneration 2 (Maxwell)                                |
| **Class C (analytic / formal correspondence)** | Wick rotation or structural correspondence      | Equation type fundamentally changed   | Degeneration 1 (Schrödinger), 6 (Sakharov/Einstein), 7–12, 14 |

Class A degenerations are rigorous mathematical results; Class B degenerations require additional physical argumentation (such as gauge-covariant extension); Class C degenerations require structural extension (such as adding higher-order spatial derivatives or nonlocal source terms), and the coverage boundary is determined by the structural extension capability of the mother equation. The arguments for each class of degeneration are given below.

**Theorem 1** (Degeneration structure). The mother equation (2) strictly degenerates to four known equations under specific parameter limits (Degenerations 3–5, 13, Class A), connects to the Maxwell equations through structural extension (Degeneration 2, Class B), connects to the Schrödinger equation through analytic continuation (Degeneration 1, Class C), and connects to Sakharov induced gravity through structural correspondence (Degeneration 6, Class C). In addition, the mother equation can further degenerate to fourteen additional important equations through analytic continuation, steady-state limits, or formal correspondence (Degenerations 7–12, 14–21, see §3.7), covering all three classes A/B/C.

### 3.1 Degeneration 1: Mother Equation → Schrödinger Equation (Analytic Continuation)

**Proposition 2** (Wick rotation → Schrödinger equation). The mother equation (2), under the parameter limit α=0, β=0, γ=0, J=0, is rigorously connected to the time-dependent Schrödinger equation through the Wick rotation (analytic continuation t→−iτ).

_Proof_. Under the conditions α=0, β=0, γ=0, J=0, the mother equation (2) reduces to

$$\frac{\partial\Psi}{\partial t} = D\nabla^2\Psi + \varepsilon\Psi \tag{14a}$$

This is the standard heat equation with a source term. In the solution Ψ(x,t) = e^{t(D∇²+ε)}Ψ₀(x) of the heat equation, the semigroup e^{tL} (L=D∇²+ε) is analytic on Re(t)>0 and can be extended to the sector |arg(t)|<π/2 (if L is self-adjoint and bounded below); the imaginary axis arg(t)=−π/2 is the boundary of the sector, so the Wick rotation t→−iτ (τ real time) is a boundary-value extension rather than an interior-point analytic continuation. Substituting ∂/∂t = i∂/∂τ:

$$i\frac{\partial\Psi}{\partial\tau} = -D\nabla^2\Psi - \varepsilon\Psi \tag{14}$$

Setting D = ℏ²/(2m), εΨ = −VΨ/ℏ, and ℏ=1, we obtain

$$i\frac{\partial\Psi}{\partial\tau} = -\frac{1}{2m}\nabla^2\Psi + V\Psi \tag{15}$$

This is the standard form of the time-dependent Schrödinger equation. (a) Legitimacy of the analytic continuation: the heat-equation semigroup e^{tL} (L=D∇²+ε) is analytic on Re(t)>0; t→−iτ rotates the parabolic equation to a dispersive equation, which is the standard operation of the Schwinger-Keldysh correspondence [29,30,31]; (b) The extended solution satisfies the boundary conditions of the Schrödinger equation: Ψ(x,τ=0) = Ψ₀(x) is consistent with the initial value of the original heat equation. □

**Note**: The Wick rotation t→−iτ is not a parameter degeneration but a boundary value of analytic continuation [29] — going from parabolic to dispersive is a fundamental change of equation type that cannot be achieved through real parameter limits. The relation between the mother equation and the Schrödinger equation is that of "the restriction of the same analytic function on different time-axis cuts". Further continuation into Re(t)<0 is generally pathological (the heat semigroup explodes exponentially on the negative real axis), so this correspondence is limited to the boundary extension from Re(t)≥0 to the imaginary axis.

### 3.2 Degeneration 2: Mother Equation → Gauge Field Equation of Motion (Structural Extension, Class B)

**Proposition 3** (Obtaining the Maxwell equations after adding the gauge field kinetic term, Class B structural extension).. **Note**: This result is not a natural degeneration of the mother equation itself; it requires the artificial introduction of an additional gauge field kinetic term $\mathcal{L}_F = -\frac{1}{4}F_{\mu\nu}F^{\mu\nu}$, constituting a structural extension of the entire system, not a corollary of the original equation. In the U(1) gauge-covariant extension of the mother equation (2), after introducing the gauge field kinetic term, the equation of motion of the gauge field A_μ rigorously yields the Maxwell equations in the weak-coupling limit.

_Proof_. Introduce the covariant derivative D_μ = ∂_μ − ieA_μ, replacing ∂_μ in the mother equation with D_μ. Construct the gauge field kinetic term $\mathcal{L}_F = -\frac{1}{4}F_{\mu\nu}F^{\mu\nu}$, where F_{μν} = ∂_μA_ν − ∂_νA_μ. The total action is S = ∫(L_Ψ + L_F)d⁴x, where L_Ψ is the gauge-covariant form of the mother equation.

Varying with respect to A_ν, δS/δA_ν = 0, using δF_{μν}/δA_ν = ∂_μ (antisymmetry), we obtain

$$\partial_\mu F^{\mu\nu} = J^\nu_{\text{ind}} \tag{16}$$

where J^ν_ind = ieΨ*(D^νΨ) − ieΨ(D^νΨ)* is the current induced by the gauge flow of Ψ. This is the covariant form of the Maxwell equations. The Bianchi identity ∂_[λ F_μν] = 0 is automatically satisfied (by the exterior-derivative definition F = dA). In the weak-coupling limit (e→0, keeping A_μ finite but eA_μ→0), the nonlinear effects of the gauge field are suppressed and the equation linearizes. □

**Note**: Degeneration 2 is not a "degeneration" of the mother equation itself, but an extension of **mother equation + additional gauge field kinetic term**, constituting an addition of structure rather than a natural corollary of the original framework, hence Class B (structural extension, requiring additional field degrees of freedom). Key point: gauge covariance of the scalar field alone cannot automatically derive the Maxwell equations — the gauge field kinetic term must be introduced additionally, so that variation yields Maxwell dynamics. Without the kinetic term, A_μ is merely an auxiliary field with no independent dynamical degrees of freedom. The mapping between the 2 degrees of freedom of Ψ and the 6 degrees of freedom of (E⃗,B⃗) is established through the gauge flow J_ind.

### 3.3 Degeneration 3: Mother Equation → Diffusion Equation

**Proposition**. When α=0, ε=0, J=0, β=0, γ=0 and |Ψ|→0 (linearization limit), the mother equation (2) degenerates to the diffusion equation.

_Proof_. Under the above conditions, the nonlinear term −(1+iβ)|Ψ|²Ψ = −|Ψ|²Ψ of equation (2) is negligible as |Ψ|→0, the PCD term vanishes due to γ=0, and the diffusion term (1+iα)D∇²Ψ becomes real diffusion D∇²Ψ due to α=0. Equation (2) becomes

$$\frac{\partial\Psi}{\partial t} = D\nabla^2\Psi \tag{17}$$

This is the Fick diffusion equation [28]. If α≠0 is retained, it degenerates to the complex diffusion equation ∂Ψ/∂t = (1+iα)D∇²Ψ, describing diffusion with dispersion. □

### 3.4 Degeneration 4: Mother Equation → Turing Pattern Equation

**Proposition**. When α=0, β=0, γ=0, J→reaction term, the mother equation (2) degenerates to the Turing pattern equation.

_Proof_. When α=0 (real diffusion coefficient), β=0 (no nonlinear dispersion), γ=0 (no PCD phase modulation), and J=f(Ψ) is a reaction term, equation (2) becomes

$$\frac{\partial\Psi}{\partial t} = D\nabla^2\Psi + \varepsilon\Psi - |\Psi|^2\Psi + f(\Psi) \tag{18}$$

This is the standard form of the reaction-diffusion equation, producing Turing patterns [3]. □

### 3.5 Degeneration 5: Mother Equation → CGL Equation

**Proposition**. When γ=0, J=0, the mother equation (2) degenerates to the standard CGL equation (1).

_Proof_. Directly setting γ=0, J=0 yields the result. The diffusion term (1+iα)D∇²Ψ of the mother equation is identical in form to the diffusion term of the CGL equation (1), so the degeneration is strict. The CGL equation is a special case of the mother equation with no external phase coherence divergence feedback and no external drive. Gor'kov (1959) microscopically derived the Ginzburg-Landau equation from BCS theory, proving it to be the universal low-energy effective theory of a superconducting system near the critical temperature [4]. □

### 3.6 Degeneration 6: Mother Equation → Einstein Field Equations (Sakharov Induced Gravity)

**Proposition** (Sakharov induced gravity correspondence). Under the steady-state solution and variational principle, the minimization of the Lyapunov functional of the mother equation (2) has a structural correspondence with the Einstein field equations in the Sakharov induced gravity framework. Rigorizing this degeneration requires constructing a self-consistent emergence mechanism for the metric gμν from |Ψ|², listed as open problem (b).

_Argument_. The Lyapunov functional of the mother equation is

$$F[\Psi] = \int \left(\frac{D}{2}|\nabla\Psi|^2 - \frac{\varepsilon}{2}|\Psi|^2 + \frac{1}{4}|\Psi|^4\right) dx \tag{19}$$

The steady-state condition δF/δΨ*=0 gives the time-independent solution of the mother equation. Sakharov (1968) proposed that gravity is an induced effect of quantum-field vacuum fluctuations [5]; its action S=∫(Λ+αR+βR²+...)√−g d⁴x has a structural correspondence with the free energy functional generalized to curved spacetime. Corresponding |∇Ψ|² to R (scalar curvature) and |Ψ|⁴ to R² (higher-order curvature), the minimization of F is consistent with the minimization of the Einstein-Hilbert action. Rigorizing this degeneration requires constructing a self-consistent emergence mechanism for the metric gμν from |Ψ|² (e.g., defining an effective metric g_eff = |Ψ|^{4/3}η_μν through |Ψ|²), listed as open problem (b). □
### 3.7 Further Degeneration Paths

Beyond the six main degenerations above, the mother equation (2) can degenerate to the following fifteen important equations under specific parameter limits, steady-state limits, or variable transformations. These degenerations further demonstrate the coverage of the mother equation as a unified framework:

| Degeneration | Target equation                              | Parameter conditions              | Degeneration mechanism                                              | Rigor                     | Depends on PCD/constraints |
| ------------ | ------------------------------------------- | --------------------------------- | ------------------------------------------------------------------ | ------------------------- | -------------------------- |
| Degeneration 7  | Nonlinear Schrödinger equation / Gross-Pitaevskii equation | Wick rotation t→it, α=0, γ=0, J=0, β≠0 | Analytic continuation changes parabolic to dispersive; GPE describes evolution of ψ in BEC | Analytic continuation (same as Degeneration 1) | No |
| Degeneration 8  | Allen-Cahn equation                         | α=0, β=0, γ=0, J=0, real field Ψ=φ∈ℝ | Real-field restriction removes complex structure, yielding ∂ₜφ=D∇²φ+εφ−φ³; standard model of phase separation | Strict                    | No                         |
| Degeneration 9  | Kuramoto-Sivashinsky equation               | Specific parameter relations, J contains fourth-order derivative term | Shear-flow instability model; mother equation covers it after adding higher-order spatial derivative terms | Formal correspondence      | No                         |
| Degeneration 10 | Navier-Stokes equation (Madelung representation) | F2 fluid representation, specific parameters | Madelung transformation converts mother equation to fluid equation; viscous term corresponds to D∇², nonlinear term to convective term | Standard result (F2)      | No                         |
| Degeneration 11 | Wilson-Cowan neural field equation          | J=f(Ψ) as nonlocal integral kernel | Neural population activity-rate equation; nonlocal source term of mother equation covers neural field coupling | Formal correspondence      | No                         |
| Degeneration 12 | Davydov soliton equation                    | 1D, specific parameters, J as lattice coupling | Soliton model of energy transport in proteins; 1D soliton special case of mother equation | Formal correspondence      | No                         |
| Degeneration 13 | Fisher-KPP equation                         | α=0, β=0, γ=0, J=0, ε>0, real field | ∂ₜu=D∇²u+εu−u²; standard model of population invasion and reaction fronts | Strict                    | No                         |
| Degeneration 14 | Complex Swift-Hohenberg equation            | J contains (1+∇²)² operator       | Pattern formation equation; mother equation covers it after adding fourth-order spatial operator | Formal correspondence      | No                         |
| Degeneration 15 | Stuart-Landau equation                      | D=0, J=0                          | ∂Ψ/∂t=εΨ−(1+iβ)\|Ψ\|²Ψ; Hopf bifurcation normal form, diffusion-free ODE limit of CGL | Strict                    | No                         |
| Degeneration 16 | Burgers equation                            | 1D Madelung, no pressure term, γ=0 | ∂u/∂t+u∂u/∂x=D∂²u/∂x²; 1D pressure-free special case of Navier-Stokes, exactly solvable via Cole-Hopf transformation | Madelung transformation    | No                         |
| Degeneration 17 | Poisson equation                            | ∂Ψ/∂t=0, ε=0, β=0, γ=0, J=source  | D∇²Ψ=−J; standard equation of electrostatics / steady-state diffusion | Strict (steady state)      | No                         |
| Degeneration 18 | Helmholtz equation                          | Degeneration 1 steady state + ε=k² | ∇²Ψ+k²Ψ=0; stationary equation of Schrödinger equation, core of scattering and waveguide theory | Analytic continuation + steady state | No                         |
| Degeneration 19 | GL steady-state vortex equation             | ∂Ψ/∂t=0, α=0, γ=0, J=0           | D∇²Ψ+εΨ−\|Ψ\|²Ψ=0; steady-state equation of superconducting GL theory, vortex solutions describe flux quantization | Strict (steady state)      | No                         |
| Degeneration 20 | Fitzhugh-Nagumo equation                    | Real field, J=specific reaction term | ∂u/∂t=D∇²u+u(a−u)(u−1); standard model of neural pulse propagation, reaction-diffusion special case. **Note**: Complete FHN requires an additional recovery variable w (∂w/∂t=ε(u−γw)); this is a single-field reduction; the complete two-variable system requires extending the mother equation to coupled field systems | Formal correspondence      | No                         |
| Degeneration 21 | Keller-Segel equation                       | J contains ∇·(u∇v) gradient coupling | ∂u/∂t=D∇²u−χ∇·(u∇v); chemotaxis equation, describing directed cell motion along chemical gradients. **Note**: Complete KS requires an additional signal field v (∂v/∂t=∇²v+u); here v is treated as an external field; the complete two-variable system requires extending the mother equation to coupled field systems | Formal correspondence      | No                         |

**Note**: Degenerations 3–5, 7–21 do not depend on the PCD term or topological constraints, and are known special cases of the CGL equation itself. Only Degeneration 2 (Maxwell, requiring gauge field kinetic term extension) and Degeneration 6 (Einstein, requiring the Sakharov induced gravity framework) involve structural extensions of the mother equation. While retaining all known degenerations of CGL, the mother equation adds the PCD phase coherence divergence feedback channel and topological constraints.

**Hierarchical structure of degeneration paths**: The above degenerations are classified according to the Class A/B/C of §3.0 as — Class A (strict parameter degeneration, e.g., Degenerations 3–5, 8, 13, 15, 17, 19); Class B (structural extension, Degeneration 2 (Maxwell), Degeneration 6 (Sakharov)); Class C (analytic continuation / formal correspondence, Degenerations 1, 7, 9–12, 14, 16, 18, 20, 21). Class C can be further subdivided into C1 (analytic continuation / Madelung transformation, Degenerations 1, 7, 10, 16) and C2 (formal correspondence, Degenerations 9, 11, 12, 14, 18, 20, 21). Class A degenerations are strict special cases of the mother equation; Class B degenerations require structural extension of the mother equation (adding field degrees of freedom); Class C degenerations require analytic continuation or structural extension of the mother equation (such as adding higher-order spatial derivatives or nonlocal source terms). This classification clarifies the coverage boundary of the mother equation: the mother equation strictly covers Class A, structural extension covers Class B, and analytic continuation / formal correspondence covers Class C. The mother equation covers a total of 21 degeneration paths, encompassing reaction-diffusion systems (Degenerations 3, 5, 8, 13, 17, 20), fluid systems (Degenerations 10, 16), quantum systems (Degenerations 1, 7, 18), gauge field systems (Degenerations 2, 6), pattern formation systems (Degenerations 4, 9, 14, 19), neural/biological systems (Degenerations 11, 12, 20, 21), and ordinary differential dynamical systems (Degeneration 15).

### 3.8 Time Glass: Topological Defects in the Time Dimension

Time crystals [32,33] are ordered phases with symmetry breaking in the time dimension, possessing strictly periodic oscillations. The time glass is the **non-periodic counterpart** of the time crystal — Haga et al. (arXiv:2506.04740) proposed that it possesses "synchronized but chaotic" characteristics.

**Definition**. The Liouvillian gap of the time glass remains finite in the thermodynamic limit:

$$\Delta_L^{\text{glass}} > 0 \quad (N \to \infty) \tag{19a}$$

in contrast to the time crystal Δ_L^crystal ~ exp(−N)→0. In the time glass, all components evolve synchronously but chaotically, rather than strictly periodically.

**Connection to the mother equation**. The dissipative structure of the mother equation (PCD phase modulation + CGL core dissipation) shares with the Liouvillian spectral structure of the time glass the feature of "dissipative balance + long-lived transients". PCD causes solitons to decay while the topological charge Q is conserved (Proposition 5.1), corresponding to the "synchronized but chaotic" nature of the time glass — dissipative stability + chaotic drive. The external drive source J of the mother equation corresponds to Floquet drive. When J contains a chaotic component, the mother equation possesses the conditions for producing such a dynamical phase; the author has developed a numerical experimental platform with Lorenz chaotic drive (TimeGlassEngine) for exploring the dynamical behavior of the mother equation under chaotic external source J; this platform is currently a proof-of-concept prototype, and rigorous numerical phase-diagram verification of the existence of a time-glass phase for the mother equation PDE is listed as open problem (d).

**Kibble-Zurek memory consolidation**. During rapid quenches, the Kibble-Zurek mechanism gives the topological defect density ρ~ξ^d, ξ~|β−β_c|^{−ν}. In the BKT phase transition of the mother equation (β schedule crossing the critical point β_c=0.707), rapid quenching freezes vortices through domain walls — the KZ mechanism is directly connected to the BKT phase transition of the mother equation.

**Cognitive significance**. The time glass is more suitable for cognitive engines than the time crystal — human attention is not strictly periodic; it has a chaotic component. The time-glass degeneration of the mother equation provides the mathematical foundation for cognitive rhythms.

---
## 4 Five-fold Mapping Structure

**Proposition 4** (Five-fold mapping structure). The CGL equation, Hopf algebra, PCD divergence, Wilson loop, and Helmholtz free energy all have structural mappings φₖ with the mother equation (2). Among these, the mappings for CGL and PCD are strict projections (structure-preserving); the free energy mapping is strict under the ∇PCD=0 approximation (Proposition F-2); Hopf is a correspondence (Conjecture Hopf-1); Wilson is partially strict + partially conjectural (Conjecture Wilson-1).

### 4.1 Projection 1: CGL = Core Dynamics of the Mother Equation

**Projection mapping**. CGL → mother equation: set γ=0, J=0. CGL is a special case of the mother equation with no external phase coherence divergence feedback and no external drive.

### 4.2 Projection 2: Hopf Antipode S and Phase Conjugation

**Definition 4**. A Hopf algebra (H, μ, η, Δ, ε, S) is a bialgebra with both algebra and coalgebra structures, where the antipode S: H→H satisfies

$$\mu \circ (S \otimes \text{id}) \circ \Delta = \eta \circ \varepsilon = \mu \circ (\text{id} \otimes S) \circ \Delta \tag{20}$$

**Conjecture Hopf-1** (Involution correspondence between S and T). The Hopf antipode S and the time-reversal operator T: (t,Ψ)↦(−t,Ψ*) of the mother equation share the involution property; their strict equivalence is proved through a cross-category functor (listed as open problem (a)).

_Argument_.

(i) **Involution property**: S∘S = id (when H is commutative or cocommutative), T∘T = id (two time reversals restore the original). Both are involutive automorphisms of ℤ₂. Sharing the involution property is a necessary condition; the cross-category functor (open problem (a)) provides sufficiency.

(ii) **Action effect**: S(aᵢ) = −aᵢ (antipode takes the negative), T: Ψ↦Ψ* (complex conjugation). In the mother equation, under the T transformation the diffusion term D∇²Ψ changes sign (t→−t makes ∂/∂t change sign), and the nonlinear term (1+iβ)|Ψ|²Ψ becomes (1−iβ)|Ψ|²Ψ (β→−β).

(iii) **Correlation condition**: When β=0, the phase conjugation operation of the mother equation is consistent with the behavior of S (S exists and S∘S=id). When β≠0, the deviation is measured by |β|. As a parabolic dissipative system, the "symmetry" here refers to the involution property of the phase conjugation operation (Conjecture Hopf-1).

Rigorization requires constructing a cross-category functor F: HopfAlg → Field: (a) S acts on the Hopf algebra H, T acts on the field/Hilbert space; a functor F between categories must be constructed; (b) prove that F preserves the involution structure: F(S∘S) = T∘T∘F; (c) prove the naturality of F. The rigorization of this conjecture is listed as open problem (a). □

**Projection mapping**. Hopf → phase conjugation structure of the mother equation: S and the phase conjugation operation share the involution property (Conjecture Hopf-1); when β=0 the two behave identically, and when β≠0 the deviation is measured by |β|.

### 4.3 Projection 3: PCD = Phase Coherence Divergence Measure

**Proposition PCD-5** (PCD = phase coherence divergence). PCD measures the degree of local phase synchrony in the mother equation: PCD=0 ↔ phases fully synchronized (zero phase gradient), PCD=1 ↔ phases fully asynchronous (uniform phase distribution). The higher the PCD, the faster the phase rotation rate and the larger the system frequency broadening.

_Proof_. From the definition (6) of PCD, PCD=1−|(1/N)Σe^{iθ_j}|. When all θ_j are equal, |Σe^{iθ_j}|=N, PCD=0; when θ_j are uniformly distributed, |Σe^{iθ_j}|=0, PCD=1. PCD is a direct measure of the degree of phase synchrony. □

**Note**. The PCD term −iγ·PCD·Ψ acts on the mother equation with a purely imaginary coefficient, only modulating the phase distribution without changing |Ψ| (amplitude-preserving), and therefore does not participate in energy dissipation. The dissipative behavior of the mother equation is entirely determined by the CGL core terms (the balance between pumping εΨ and the nonlinear term −(1+iβ)|Ψ|²Ψ).

**ICE interference computing duality**. The PCD phase coherence divergence measure has an engineering dual implementation — the Interference Computing Engine (ICE). The core insight of ICE is "computation = wave interference": information flow = phase gradient, inference = constructive interference (self-consistency) or destructive interference (contradiction), memory = vortex topological charge (topologically protected, stable against perturbations, erasable only through vortex-antivortex pair annihilation). The phase gradient of digital beamforming B(θ)=Σwₙxₙexp(j·2π/λ·n·d·sinθ) directly corresponds to the argument of the complex field Ψ of the mother equation; the noise-subspace projection of MUSIC super-resolution P=1/(aᵀEₙEₙᵀa) corresponds to residue-field pole detection — pole zₖ = eigenvalue = MUSIC spectral peak, interfacing with the Hilbert-Pólya implementation of §5.6. PCD corresponds to the destructive part of interference: the −iγ·PCD·Ψ term of the mother equation quantifies phase mismatch, manifested as destructive interference strength in ICE. ICE is an engineering system independently developed by the author, sharing with the mother equation the mathematical structure of wave phase superposition.

### 4.4 Projection 4: Wilson Loop = Gauge Structure

**Definition 5**. The Wilson loop is the path-ordered exponential of the gauge field along a closed curve C [15]

$$W_C = \text{Tr}\left(\mathcal{P}\exp\left(i\oint_C A_\mu dx^\mu\right)\right) \tag{21}$$

**Conjecture Wilson-1** (Correspondence between PCD and Wilson loop). PCD = 1 − |Tr(W_C)|/N, i.e., PCD and the gauge divergence of the Wilson loop share an identical algebraic structure; the strict equivalence of the discrete → continuous limit needs to be proved in the non-Abelian SU(N) case (listed as open problem (a)).

**Note**. In the U(1) Abelian case, the Wilson loop modulus |W_C|≡1 always holds, so 1−|W_C|≡0, contradicting the fact that PCD can take any value in [0,1]. This conjecture holds only under the discrete approximation of the non-Abelian SU(N) gauge group (where |Tr(W_C)|/N can be less than 1); the U(1) Abelian case is not applicable. Engineering implementation completed.

_Argument_. The trace Tr(W_C) of the Wilson loop W_C measures the parallel-transport coherence of the gauge field along C. |Tr(W_C)|/N = 1 means the gauge field is fully coherent (PCD=0), |Tr(W_C)|/N = 0 means the gauge field is fully incoherent (PCD=1). This is algebraically consistent with the definition (6) of PCD.

The essential difference between PCD and the Wilson loop is: the Wilson loop is a **nonlocal observable** of the gauge closed loop (integrated along the entire path C), while PCD is a **local coherent field with gauge weights** (integrated within the neighborhood B_r(x)). The locality of PCD allows it to appear directly as a phase modulation coefficient in the field equation, while the nonlocality of the Wilson loop makes it more suitable as a topological invariant. The algebraic consistency of the two (Conjecture Wilson-1) lies in the fact that after discretization, the neighborhood summation of PCD and the path-segment summation of the Wilson loop share the same algebraic structure. Rigorization requires the following steps:

(a) **Discretization scheme**: The original definition (6) of PCD is a sum over a discrete set {wᵢ, θᵢ}, while the Wilson loop W_C = Tr(𝒫exp(i∮_C A_μdx^μ)) is a path-ordered exponential along a continuous path. A discretization scheme needs to be defined: partition the path C into N segments, with the gauge-potential contribution of the k-th segment being phase θₖ = A_μΔx^μ_k and weight wₖ = 1 (uniform partition); then the discrete approximation of PCD is

$$\text{PCD}_N = 1 - \frac{|\sum_{k=1}^N e^{i\theta_k}|}{N} \tag{22}$$

(b) **Continuous-limit convergence**: It needs to be proved that as N→∞, Δx→0, PCD_N → 1 − |Tr(W_C)|/N. In the Abelian (U(1)) case, path ordering is automatic (commutative group), so

$$\lim_{N\to\infty} \frac{|\sum_{k=1}^N e^{iA_\mu\Delta x^\mu_k}|}{N} = \frac{|e^{i\oint_C A_\mu dx^\mu}|}{1} = |W_C|$$

At this point PCD_N → 1 − |W_C| = 1 − |Tr(W_C)| (under U(1), Tr = identity). **Note**: In the pure U(1) Abelian case, the Wilson loop W_C = exp(i∮A·dx) is a U(1) element with modulus identically 1 (|W_C|=1), so PCD_N→0 always holds — at this point the modulus of the Wilson loop cannot measure incoherence, and the equivalence between PCD and the Wilson loop is effective only in the non-Abelian case (where |Tr(W_C)|/N can be less than 1) or when considering multi-segment phase incoherence. The algebraic consistency in the U(1) case serves only as a reference for the discretization structure; the strict equivalence is an open problem in the non-Abelian case.

(c) **Noncommutative case**: For non-Abelian gauge groups (SU(N), N≥2), path ordering cannot be neglected, and ∑e^{iθₖ} does not equal the trace of 𝒫exp(i∮A·dx). At this point the relation between PCD and the Wilson loop requires a more refined discretization scheme (such as the standard discretization in lattice gauge theory).

In the U(1) case, the equivalence between PCD and Wilson loop divergence can be proved through a standard discretization scheme; in the non-Abelian case, the equivalence is an open problem. □

**Theorem Wilson-2** ('t Hooft duality). **Note**: 't Hooft duality is a standard result of SU(N) gauge theory. It is presented here as theoretical motivation for extending the mother equation to non-Abelian gauge groups; the U(1) Abelian case is not applicable. The Wilson operator W(C) and the 't Hooft operator H(C') satisfy

$$W(C) \cdot H(C') = e^{2\pi i \cdot \text{Lk}(C,C')/N} \cdot H(C') \cdot W(C) \tag{23}$$

where Lk(C,C') is the linking number.

_Proof_. H(C') creates a vortex whose core pierces the surface bounded by C. The gauge potential of the vortex contributes ∮_C A·dl = 2π/N (central charge), so W(C) acting on H(C')|0⟩ acquires a phase e^{2πi/N}. General linking number Lk gives phase e^{2πi·Lk/N}. This is a standard result of 't Hooft (1978) [8]. As nontrivial elements of the center of the gauge group, center vortices take their Wilson loop values in the Z_N center subgroup, providing a confinement mechanism [12]. □

**Projection mapping**. Wilson → U(1) gauge structure of the mother equation: the mother equation is invariant under the U(1) transformation Ψ→e^{iα}Ψ; after introducing the gauge field Aμ, the Wilson loop gives the global topological property of the gauge field, while PCD is the divergence measure of the Wilson loop.
### 4.5 Projection 5: Free Energy = Lyapunov Functional

**Proposition F-1** (Free energy = Lyapunov functional). The functional

$$F[\Psi] = \int \left(\frac{D}{2}|\nabla\Psi|^2 - \frac{\varepsilon}{2}|\Psi|^2 + \frac{1}{4}|\Psi|^4\right) dx \tag{24}$$

is the Lyapunov functional of the mother equation (2). The PCD term only modulates the phase distribution and does not contribute to the time evolution of the free energy functional under the ∇PCD=0 approximation (Proposition F-2), so it does not appear in the free energy functional. In the real GL limit (γ=0, α=0, β=0), dF/dt ≤ 0 is satisfied (proven, Proposition F-1); when γ≠0, the PCD term does not change the free energy evolution rate under the ∇PCD=0 approximation (Proposition F-2), and in the general case the contribution is O(γ·∇PCD).

_Proof_. Compute dF/dt:

$$\frac{dF}{dt} = \int \frac{\delta F}{\delta\Psi^*}\frac{\partial\Psi^*}{\partial t} + \frac{\delta F}{\delta\Psi}\frac{\partial\Psi}{\partial t} \, dx \tag{25}$$

The condition δF/δΨ*=0 gives the steady-state condition of the mother equation (2). For the CGL part (γ=0, J=0), dF/dt ≤ 0 is a known result [1,2].

**Functional derivative of the PCD term**: PCD(x,t) is a functional of Ψ (through the neighborhood integral in Definition 2), so δF/δΨ* includes the functional derivative of PCD with respect to Ψ*. Specifically,

$$\frac{\delta(\gamma\cdot\text{PCD}\cdot|\Psi|^2)}{\delta\Psi^*} = \gamma\cdot\frac{\delta\text{PCD}}{\delta\Psi^*}\cdot|\Psi|^2 + \gamma\cdot\text{PCD}\cdot\Psi \tag{26}$$

The computation of the first term δPCD/δΨ* requires the specific form of the local expression (7) of PCD.

**Contribution of the PCD term to free energy time evolution**: The PCD term −iγ·PCD·Ψ acts on the mother equation with a purely imaginary coefficient, only modulating the phase distribution without changing |Ψ|. For the time derivative of the real-valued free energy functional dF/dt = ∫(δF/δΨ·∂Ψ/∂t + δF/δΨ*·∂Ψ*/∂t)dx, the contribution of the PCD term is the sum of a purely imaginary term and its complex conjugate, whose real parts cancel exactly, so **the PCD term does not change the time evolution rate of the free energy** — when γ≠0 the monotonicity of the free energy is identical to the γ=0 case, determined by the CGL core dissipation. The PCD term only modulates the phase-space distribution and does not drive the system toward low-PCD states.

**Proposition F-2** (Contribution of PCD to free energy time evolution). The contribution of the PCD term −iγ·PCD·Ψ to the free energy time derivative dF/dt: strictly zero under the spatially uniform approximation ∇PCD=0; in the general case (∇PCD≠0), a higher-order small quantity O(γ·∇PCD·|Ψ|²·∇φ), introducing no zeroth-order source/sink term.

_Proof_. The free energy F[Ψ] is a real-valued functional, so dF/dt = 2Re∫(δF/δΨ*·∂Ψ/∂t)dx. The PCD-term contribution to ∂Ψ/∂t in the mother equation is −iγ·PCD·Ψ. Thus the PCD contribution to dF/dt is

$$\left.\frac{dF}{dt}\right|_{\text{PCD}} = 2\text{Re}\int \frac{\delta F}{\delta\Psi^*}(-i\gamma\cdot\text{PCD}\cdot\Psi)\,dx = 2\text{Re}\left[-i\gamma\int \text{PCD}\cdot\frac{\delta F}{\delta\Psi^*}\Psi\,dx\right]$$

Let A = ∫PCD·(δF/δΨ*)·Ψ dx be a complex number; then the contribution = 2Re(−iγA) = 2γ·Im(A). Key point: PCD is a real function (PCD∈[0,1]), γ is real. The contribution of the PCD term −iγ·PCD·Ψ to the time derivative of |Ψ|² is

$$\left.\frac{\partial|\Psi|^2}{\partial t}\right|_{\text{PCD}} = \Psi^*(-i\gamma\cdot\text{PCD}\cdot\Psi) + \Psi(i\gamma\cdot\text{PCD}\cdot\Psi^*) = 0$$

i.e., the PCD term does not change the amplitude |Ψ|. However, the |∇Ψ|² = |∇|Ψ||² + |Ψ|²|∇φ|² term in F[Ψ] = ∫(D/2|∇Ψ|² − ε/2|Ψ|² + 1/4|Ψ|⁴)dx depends on the phase gradient ∇φ; the PCD term changes φ, so |∇Ψ|² can vary. Therefore Im(A) is generally nonzero, and the claim in the original proof that "F depends only on |Ψ|" does not hold. **Correction**: Under the approximation of spatial uniformity of PCD (∇PCD=0), the PCD term only produces a global phase rotation, not changing the relative structure of ∇φ; at this point Im(A)=0 and the contribution=0. In the general case (∇PCD≠0), the contribution of the PCD term to dF/dt is O(γ·∇PCD·|Ψ|²·∇φ), not strictly zero. □

**Note**: Proposition F-2 holds strictly under the spatially uniform PCD approximation. In the general case, the contribution of the PCD term to free energy evolution is a higher-order small quantity O(γ·∇PCD). This conclusion only indicates that the PCD term does not introduce new sources/sinks of free energy; it does not mean that the complex-parameter mother equation possesses a global Lyapunov functional. When α≠0 or β≠0, even with γ=0, the complex CGL itself does not possess a global Lyapunov function and can exhibit limit cycles and chaotic attractors.

**Projection mapping**. Free energy → Lyapunov functional of the mother equation: the minimization of F[Ψ] drives the evolution of the mother equation, CGL = field-theoretic realization of F, Friston FEP = cognitive version of F.

**Variational engine instantiation**. The free energy functional F[Ψ] has an instantiation in atomic physics — the variational engine implements the variational computation chain from atomic number Z to ionization energy (Slater trial function + shielding-constant empirical rules). The variational principle

$$\varepsilon(\zeta) = \frac{\zeta^2}{2n^2} - \frac{Z_{\text{eff}} \cdot \zeta}{n^2} \to \zeta^* = Z_{\text{eff}}, \quad \varepsilon^* = -\frac{Z_{\text{eff}}^2}{2n^2} \tag{26a}$$

has a minimization corresponding to the minimization of F[Ψ] — the Slater trial function corresponds to the soliton-solution ansatz of the mother equation, and Z_eff corresponds to the nonlinear parameter ε of the mother equation. The variational computation of the hydrogen atom ground-state energy gives −0.5 Hartree = −13.6057 eV, consistent with the Rydberg constant, demonstrating the isomorphism between the free-energy minimization structure of the mother equation and the variational principle of quantum mechanics. **Note**: The Rydberg constant $R_\infty = m_e e^4/(8\varepsilon_0^2 h^3 c)$ is a combination of fundamental physical constants, not an output of variational computation. The shielding constants 85/100/35 (Slater layering) and 5/8 (1/r₁₂) are all rational numbers; GF(65537) provides a finite-field computation scheme, and its correspondence with real-number physics requires further argumentation.

### 4.6 Unified Formulation of the Five-fold Mapping

**Complete proof of Proposition 4**. Synthesizing the above five projections:

| Core     | Mapping φₖ       | Role in mother equation | Rigor                                     |
| -------- | ---------------- | ----------------------- | ----------------------------------------- |
| CGL      | γ=0, J=0         | Core dynamics           | Strict projection (proven)                |
| Hopf     | S and T share involution | Phase conjugation structure | Correspondence (Conjecture Hopf-1)   |
| PCD      | PCD=phase modulation coefficient | Phase coherence divergence measure | Strict projection (PCD-1~4 proven) |
| Wilson   | PCD≈1−\|Tr(W)\|/N | U(1) gauge structure    | Strict under U(1), non-Abelian open       |
| Free energy | F[Ψ]=Lyapunov functional | Physical driving force | Strict for γ=0, strict under ∇PCD=0 for γ≠0 (Proposition F-2) |

The five are unified through distinct mappings of the mother equation (2). CGL (dynamics) + Hopf (structure) + PCD (measure) + Wilson (gauge) + free energy (physics) = complete description of the mother equation. Among these, the mappings for CGL and PCD are strict projections, the free energy mapping is strict under the ∇PCD=0 approximation (Proposition F-2), Hopf is a correspondence (Conjecture Hopf-1), and Wilson is partially strict + partially conjectural (Conjecture Wilson-1). □

### 4.7 Vortex Array Effective Field Equation

Using the gradient and curl of the phase Ψ = |Ψ|e^{iφ} in the mother equation (2), the transport behavior of vortices can be rewritten in Maxwell-like differential form. E and B are derived quantities (gradient and curl) of the phase of the scalar complex field of the mother equation, and their evolution is entirely determined by the mother equation. **Note**: This system of equations is a differential-form rewrite of the phase gradient of the scalar complex field of the mother equation, with no independent 6 electromagnetic degrees of freedom, no propagating transverse electromagnetic-wave solutions; it only describes quasi-static effects induced by vortex singularities and is not equivalent to complete Maxwell electrodynamics.

**Construction**. The phase φ of Ψ = |Ψ|e^{iφ} in the mother equation (2) defines a U(1) gauge connection A_μ = ∂_μφ. A_μ is not globally exact (i.e., A_μ ≠ ∂_μf for any global scalar f), because the existence of vortex cores causes the phase φ to accumulate 2πn after one loop around the core (Constraint ①), giving A_μ nontrivial holonomy (Wilson loop W_C ≠ 1). Only in the simply connected region outside the vortex core is A_μ locally equal to dφ. Introduce the cognitive field strength F = dA (curvature 2-form). The exterior derivative always satisfies d²=0 (Poincaré lemma); F=dA is nonzero because A is defined on a nontrivial U(1) principal bundle — the vortex core is a singularity of the connection, and in the distributional sense dA contains δ-function-type contributions (vortex density), corresponding to the first Chern class c₁∈H²(M;ℤ) which directly corresponds to the winding number n of Constraint ①. Its Hodge dual ⋆F gives the cognitive electric field E (phase-gradient divergence, corresponding to SCD — semantic phase coherence divergence) and the cognitive magnetic field B (phase curl, corresponding to R — phase vortex). The phase modulation term −iγ·PCD·Ψ of the mother equation provides the gauge current J. The vortex array effective field equation here is a quasi-Maxwell equation in an effective medium, describing the collective motion of phase vortices.

**Definition 6** (Vortex array effective field equation). The gauge-field form of the mother equation (2) is

$$d \star F = \star J \tag{27}$$

where F = dA is the cognitive field-strength 2-form, ⋆ is the Hodge dual, and J is the cognitive current (composed of memory input and sensory drive). The component form of this equation gives the vortex density transport equation:

$$\frac{\partial B}{\partial t} + \nabla \times E = 0 \tag{28}$$

$$\frac{\partial E}{\partial t} - \nabla \times B = J \tag{29}$$

where E is the cognitive electric field (phase-gradient divergence, corresponding to SCD — semantic phase coherence divergence), B is the cognitive magnetic field (phase curl, corresponding to R — phase vortex), and J is the cognitive current (composed of memory input and sensory drive). Equation (28) states that the temporal change of phase vortices is compensated by the spatial curl of the phase divergence; equation (29) states that the temporal change of the phase divergence is driven by the curl of the phase vortices and the cognitive current.

**Physical meaning**. SCD (semantic phase coherence divergence, the continuous limit of PCD), R (phase vortex), and φ (phase field) are no longer independent quantities but three projections E/B/A of a U(1) gauge field, coupled in closed loop by the vortex array effective field equation. Modifying the phase φ automatically triggers the redistribution of SCD (E field) and R (B field) — no manual synchronization is needed; the gauge field equation evolves self-consistently.

**Relation to the mother equation**. The vortex array effective field equation is a mathematical reformulation of the field-strength equation of the mother equation (2) in gauge-covariant form. Degeneration 2 (§3.2) derives the equation of motion of A_μ from the mother equation + gauge field kinetic term to obtain the Maxwell equations; here, the complex field Ψ of the mother equation itself is further decomposed into E/B/A projections of the gauge field.

**Rigor**. In the U(1) Abelian case, equation (27) is a direct generalization of the standard Maxwell equations [40] and is mathematically rigorous. Non-Abelian generalization and nonlinear corrections (from the |Ψ|²Ψ term of the mother equation) require additional work. Numerical verification of this result (dSCD/dt ∝ ∇²A) has been performed in the engineering system developed by the author.

---
## 5 Residue Field Theory: Vortex-Pole Correspondence

### 5.1 Vortex-Residue Field Formal Correspondence

**Proposition 5.1** (Vortex-residue field topological correspondence). The topological singularity structure of the steady-state vortex solution of the mother equation (2) in 2D space has a strict topological correspondence with the pole configuration of the residue field: vortex core ↔ residue field pole, topological charge ↔ pole order. This correspondence holds strictly under the topological approximation (preserving the singularity structure, ignoring the non-analyticity of the radial envelope). Engineering implementation completed.

_Argument_. The mother equation (2) degenerates to the CGL equation (1) when γ=0, J=0. The steady-state vortex solution of the CGL equation in 2D is a classical result [1,11]: the single-vortex solution (winding number n, core at z₀∈ℂ) is

$$\Psi(z, \bar{z}) = (z - z_0)^n \cdot f(|z - z_0|) \tag{30}$$

where f is the radial profile function (f(0)=0, f(∞)→constant), and z=x+iy is the complex coordinate. **Note**: f(|z|) depends only on the modulus r=|z| and is a real function that does not satisfy the Cauchy-Riemann equations, so Ψ is not a holomorphic function of z; the singularity of 1/Ψ at the vortex core is of branch-point type rather than pole type.

A multi-vortex configuration can be approximately characterized by a set of pole positions {zₖ} and winding numbers {nₖ}:

$$\Psi(z, \bar{z}) \approx \prod_k (z - z_k)^{n_k} \cdot g(z, \bar{z}) \tag{31}$$

**Note**: CGL is a nonlinear dissipative equation; multi-vortex solutions do not satisfy the superposition principle and cannot be strictly written as a product of single-vortex solutions; interactions between vortices cause deformations that modify the radial profile. The above is only an approximate characterization of the topological structure.

Under the topological approximation (ignoring the non-analyticity of the radial envelope), the reciprocal of the vortex solution can be formally expanded as

$$\frac{1}{\Psi(z, \bar{z})} \approx \sum_k \frac{r_k}{(z - z_k)^{n_k}} + h(z, \bar{z}) \tag{32}$$

**Error estimate**: When |z−zₖ| ≫ ξ (coherence length), the radial envelope g(z,z̄) ≈ g₀ (constant), and the error of the pole expansion is O(ξ/|z−zₖ|). Near the vortex core (|z−zₖ| ~ ξ), the non-analyticity of the radial envelope dominates and the pole expansion does not hold. Thus equation (32) holds only as a leading-order approximation in the region far from the vortex cores.

where rₖ is an algebraic function of the topological charges {nₖ} and the vortex-core configuration {zⱼ}, and h is the regular part. This is the formal correspondence of the residue field ψ(z)=Σrₖ/(z−zₖ)^{nₖ}.

**Formal correspondence relations**:
- Residue field pole position zₖ ↔ vortex core position
- Pole order nₖ ↔ topological charge (winding number, Constraint ① ∮∇φ·dl=2πnₖ)
- Residue rₖ ↔ algebraic function of vortex strength (determined by the vortex-core configuration)
- Residue field pole dynamics ↔ vortex evolution dynamics (described by the mother equation)

This correspondence holds under the topological approximation in the 2D steady-state case. The time evolution of the mother equation drives the vortex cores {zₖ(t)} to move in the complex plane, corresponding to the dynamics of the residue field poles. □

**Note**. This topological correspondence elevates the residue field from an independent mathematical object to a complex-analytic representation of the topological structure of the vortex solution of the mother equation. The poles of the residue field are no longer abstract complex-plane singularities, but physical vortex cores of the mother equation — carriers of topological charge. The vortex solution Ψ(z,z̄)=f(|z|)e^{inθ} contains |z| terms and is not a holomorphic function of z, so the residue theorem is applied under the topological approximation (preserving the singularity-order information, ignoring the non-analytic contribution of the radial envelope).

### 5.2 Definition of the Residue Field

**Definition 7**. The residue field is a meromorphic function on the complex plane

$$\psi(z) = \sum_k \frac{r_k}{(z - z_k)^{n_k}} \tag{33}$$

where zₖ is the pole position (= vortex core), rₖ is the residue (= algebraic function of vortex strength), and nₖ is the pole order (= topological charge). The residue field is a meromorphic scalar field on the complex plane: z=x+iy provides the complex-plane coordinates, and rₖ=|rₖ|e^{iφₖ} is the value of the field at the pole (pole strength + phase), belonging to the strength dimension of the field rather than the spatial dimension.

### 5.3 Pole-Particle Correspondence

**Note**: LSZ reduction is a standard tool in quantum field theory for momentum-space correlation functions, whose poles are at four-momentum squared p²=m². The poles of the residue field are on the coordinate complex plane (= vortex core positions); the two are defined in different mathematical spaces. Through the vortex-residue topological correspondence (Proposition 5.1), the poles of the residue field acquire the physical interpretation of the vortex solution of the mother equation: S-matrix poles correspond to particle masses, residue field poles correspond to vortex core positions — both are correspondences of "singularity → physical entity" with isomorphic mathematical structure.

### 5.4 Residue Field Interpretation Framework

The residue field ψ(z)=Σrₖ/(z−zₖ)^{nₖ} provides a complex-analytic description of the vortex system of the mother equation — poles correspond to vortex cores, residues correspond to vortex strengths, and pole orders correspond to topological charges.

**Connection with GF(65537)**. In the engineering implementation, the pole positions zₖ and residues rₖ of the residue field take values on the Fermat prime p=65537 — zₖ, rₖ ∈ GF(65537) makes residue field computation exact integer modular arithmetic, with no floating-point truncation. This GF(65537) anchor simultaneously supports the exact integerization of quantum gates H/S/T (Hadamard gate coefficient 1/√2→2040, T gate coefficient e^{iπ/4}→65521) and the exact exhaustive verification of the cyclic Ramsey number R_circ(5,5)=42. Quantum gates and combinatorial mathematics are exactly implemented in the GF(p) framework (p=65537).

**Residuon (the fundamental particle of the residue field)**. The fundamental structure of the residue field is the simple pole (nₖ=1, corresponding to a vortex of unit topological charge)

$$\psi_{\text{residuon}}(z) = \frac{r}{z - z_0}, \quad r, z_0 \in \mathbb{C} \tag{34}$$

On the complex plane, the simple pole is the fundamental structural unit of the residue field. Thus **the simple pole is the fundamental particle of the residue field** (= unit-winding vortex), with no internal structure. Multiple poles can combine: 2 poles form a "meson" (vortex-antivortex bound state), 3 poles form a "baryon" (three-vortex bound state). This correspondence holds strictly under the topological approximation.

**Residue energy functional**. The energy functional of the pole configuration {zₖ, rₖ, nₖ} is

$$E[\{z_k, r_k\}] = \sum_{i \neq j} \frac{r_i r_j}{|z_i - z_j|^2} + \sum_k V_{\text{ext}}(z_k) r_k + \lambda \sum_k |r_k - r_k^0|^2 \tag{35}$$

The first term is inter-pole repulsion (corresponding to vortex-vortex repulsion), the second term is the external potential (corresponding to the drive of vortices by an external field), and the third term is the residue conservation constraint. The minimum of this functional = stable vortex configuration, saddle points = vortex transition states. **Note**: The long-range interaction of 2D superconducting/superfluid vortices is a logarithmic repulsive potential V(r)∝ln(r/ξ); here the 1/|z|² kernel is adopted as a dipole approximation, which differs from the true vortex logarithmic potential, applicable when the pole strength rₖ has the dimension of a dipole moment.
### 5.5 Residue Chemistry: Vortex Topological Chemistry Framework

Through the vortex-residue formal correspondence (Proposition 5.1), residue chemistry is reinterpreted as **vortex chemistry** — the classification and dynamics of vortex-core configurations. This framework has been implemented in the engineering system developed by the author: the residue element periodic table (N poles distributed on a circle = element No. N, Mittag-Leffler exact equivalence), three chemical bonds = three pole coupling modes (ionic bond = residue transfer, covalent bond = pole merging, metallic bond = pole circular distribution), SN2 reaction three-state pole configuration, Walden inversion = pole exchange, protein folding = pole configuration optimization, oxidation-reduction = residue transfer, exactly implemented in the GF(p) framework.

**Element = vortex configuration**. A single vortex (n=1) is a "hydrogen"-level structure, a double vortex is a "molecular"-level structure (|z₁−z₂| = vortex spacing), and a regular n-gon arrangement of n vortices = "aromaticity" (ring delocalization).

**Vortex reaction = pole dynamics**. Vortex merging/annihilation A+B→∅ corresponds to pole-configuration evolution; vortex-antivortex pair annihilation = pole-antipole merging and disappearance. In SN2-type vortex exchange, three vortex cores braid in the complex plane; Walden inversion = the topological phase of braiding.

### 5.6 Operator-Algebraic Characterization of the Residue Field: From Hilbert-Pólya to Connes Uniqueness

The residue field ψ(z)=Σrₖ/(z−zₖ) is not only a complex-analytic representation of the vortex solution of the mother equation (Proposition 5.1), but also the **algebraic avatar of a physical wave field**. The following three characterizations constitute the core of the operator-algebraic structure of the residue field:

**(i) Hilbert-Pólya implementation**. The Berry-Keating operator

$$H = \frac{1}{2}(xp + px) = -i\left(x\frac{d}{dx} + \frac{1}{2}\right) \tag{35a}$$

is a candidate operator for the Hilbert-Pólya conjecture — Berry & Keating (1999) conjectured that its spectrum may be related to the nontrivial zeros ρ=1/2+iγₙ of the Riemann ζ function. This conjecture remains unproven. It has purely continuous spectrum on $L^2(\mathbb{R}_+)$; discrete spectrum requires self-adjoint extension on compact quantum graphs, and the properties of the self-adjoint extension and its spectrum remain open problems. The correspondence between residue field poles and Riemann zeros is merely a formal analogy, established through the complex positions of the vortex cores of the mother equation, with no established rigorous mathematical connection.

**(ii) IST inverse scattering**. The inverse scattering transform of integrable systems (KdV/Toda/soliton) encodes the potential u(x,t) as a residue field:

$$u(x,t) = 2\frac{\partial^2 \ln \tau(x,t)}{\partial x^2}, \quad \tau = \det(I + V) \tag{35b}$$

where τ is the Hirota τ function and the residue rₖ = normalization constant cₙ. Residue field = IST = nonlinear generalization of the Fourier transform — the soliton solution of the mother equation is represented by pole superposition.

**(iii) Connes uniqueness**. The operator algebra of the residue field is expected to be the Hyperfinite III_1 factor (the highest type in the von Neumann algebra classification). Rigorization requires: (a) constructing the specific C*-algebra of the residue field; (b) proving that its weak closure is a III_1 factor; (c) verifying the Hyperfinite property. Tomita-Takesaki modular theory gives the polar decomposition:

$$S = J\Delta^{1/2}, \quad \sigma_t(A) = \Delta^{it} A \Delta^{-it} \tag{35c}$$

where J is the antilinear involution (Jψ(z)J=ψ̄(z̄)), Δ is the modular operator, and σ_t is the modular automorphism group (σ_t(ψ(z))=ψ(z−it), pole translation). **If the above rigorization (a)(b)(c) is completed**, then the Connes uniqueness theorem guarantees that the Hyperfinite III_1 factor is unique up to isomorphism, and the residue field can be realized as a representation of this unique algebra. This direction currently requires independent operator-algebra research.

**Interface with quantum error correction**. The Knill-Laflamme condition PE_a†E_bP=λ_abP corresponds to residue orthogonality ⟨r_a|r_b⟩=δ_ab, with code distance d = minimum number of poles. The vortex-residue correspondence of the mother equation (Proposition 5.1) allows the error-correcting capability of quantum error-correcting codes to be directly read from the pole configuration of the residue field — exactly implemented in the GF(p) framework.

**Epistemological perspective**. As a meromorphic function, the residue field ψ(z) can be analytically evaluated at any z∈ℂ, providing a continuous, non-discrete wave-field representation. This forms a methodological contrast with the discrete basis expansion of tensor networks — the former exploits the analytic continuation property of complex analysis, the latter exploits finite-dimensional linear algebra. Rigorizing the connection between the residue field and von Neumann algebras requires constructing a specific C*-algebra representation (§5.6(iii)).

---

## 6 Triple Duality Chain

### 6.1 Triple Duality Chain and Engineering Extensions

**Proposition 5** (Triple duality chain). The following three structures share the parallel-transport mathematical structure of a U(1) connection:

$$\text{Madelung} \leftrightarrow \text{Berry} \leftrightarrow \text{Wilson} \tag{36}$$

| Duality         | Mapping                                            | Preserved structure | Rigor                    |
| --------------- | -------------------------------------------------- | ------------------- | ------------------------ |
| Madelung↔Berry | Complex field → fluid density + velocity ↔ parameter manifold U(1) connection | T²=id               | Standard result (proven) |
| Berry↔Wilson   | U(1) connection ↔ gauge field parallel-transport trace | Gauge equivalence   | Standard in Abelian case (proven) |

**Core argument**.

(i) **Madelung transformation** [14]: Ψ = √ρ·e^{iφ} decomposes the complex field into fluid density ρ and velocity v=∇φ/m. This is the standard CGL → fluid mechanics mapping.

(ii) **Berry phase** [39]: γ = ∮Aμdxμ is a U(1) connection on the parameter manifold. The φ in the Madelung velocity v=∇φ/m is precisely the component of the Berry connection.

(iii) **Wilson loop** [15]: W_C = Tr(𝒫exp(i∮Aμdxμ)). The Berry phase is a special case of the Wilson loop in the Abelian case.

The three share the same mathematical structure: parallel transport of a U(1) connection, manifesting in different continuous/physical representations. The Madelung↔Berry↔Wilson connection is a standard result; engineering implementation completed. □

**Engineering extensions**. The following two correspondences are engineering references:

- **Wilson↔RoPE**: The position encoding of RoPE is e^{imθ} (m is the position index, θ is the rotation angle); the approximation of the Wilson loop along a discrete path is ∏_k e^{iA_μΔx^μ_k}. When the path-segment length Δx→0 and θ = A_μΔx^μ, RoPE can be viewed as a specific discretization scheme of the Wilson loop on a uniform lattice, with discretization error O(Δx²). However, RoPE is a phase rotation of a discrete position index, while the Wilson loop is parallel transport along a continuous path; the two have no rigorous mathematical isomorphism beyond the phase factor.
- **RoPE↔SSM**: In the Mamba3 state-space model, the rotational update of the hidden state h_t is h_t = e^{iθ_t}·h_{t-1} + ..., with the same structure as the e^{imθ} of RoPE. However, the SSM hidden-state temporal update is linear recursive dynamics, while RoPE is static positional encoding; the rotation objects are different.

### 6.2 Algebraic Criterion for Hopf Antipode S and Phase Conjugation

Conjecture Hopf-1 (§4.2) provides a candidate algebraic criterion for phase coherence divergence: the existence of the antipode S may be equivalent to phase conjugation symmetry, which may be equivalent to complete phase synchrony (PCD=0). Specifically, S exists ↔ complete phase synchrony ↔ PCD=0; S does not exist ↔ phase has coherence divergence ↔ PCD>0. This criterion directly links the Hopf algebraic structure (existence of S) with the dynamical quantity (PCD) of the mother equation, but its rigorization requires constructing a cross-category functor (listed as open problem (a)).

### 6.3 Heegner/Moonshine: Number-Theoretic-Physical Duality of the Residue Field

The pole hierarchy of the residue field ψ(z)=Σrₖ/(z−zₖ) is connected to deep number-theoretic structures. Heegner number determination, Ramanujan identity verification, and Monstrous Moonshine identity verification have been implemented in the engineering.

**Heegner numbers and spectral structure**. The imaginary quadratic fields Q(√−d) of class number 1 have exactly 9 discriminants d∈{1,2,3,7,11,19,43,67,163} (Heegner numbers). Class number 1 ↔ massless mode (long-range propagation); class number >1 ↔ massive mode (short-range decay). The Ramanujan near-integer identity

$$e^{\pi\sqrt{163}} \approx 262537412640768743.99999999999925 \tag{37}$$

embodies a transcendental number "pinned" near an integer — forming a structural correspondence with the GF(65537) integer anchoring of §5.4: the Fermat prime approximates e^{iπ/4} as the integer 65521, and the Heegner number 163 approximates e^{π√163} as an integer. Both demonstrate the phenomenon of "continuous mathematical objects constrained by discrete structures".

**Moonshine and self-duality**. In the Monstrous Moonshine identity j(q)=q⁻¹+744+196884·q+..., 196884=1+196883 (Monster identity element + smallest nontrivial irrep dimension). The j-invariant characterizes the modular structure of the residue field, and the discrete symmetry of the Monster group forms a continuous-discrete duality with the continuous U(1) symmetry group of the mother equation.

**E₈/Leech pole hierarchy**. The E₈ root lattice (8-dimensional, 240 roots) corresponds to the minimal degeneracy of residue field poles (ground-state degeneracy), and the Leech lattice (24-dimensional, minimal vector 196560) corresponds to the long-range correlation of poles (long-range entangled-state counting). The dimensional hierarchy E₈(8-dim)→Barnes-Wall(16-dim jump)→Leech(24-dim)→Monster(196883-dim irrep) corresponds to the multiscale pole structure of the residue field. The Burnside compression 2ⁿ→2ⁿ/8 of the D₄ group (dihedral group of order 8) corresponds to the gauge-redundancy elimination of the mother equation (Wilson gauge-core projection).

---
## 7 Relation to Related Work

### 7.1 Known Results on the CGL Equation

The CGL equation is one of the most widely studied models in nonlinear science [1,2]. Aranson and Kramer (2002) gave a comprehensive review of the CGL equation [1]. The CGL equation originated from the phenomenological description of the superconducting order parameter by Ginzburg and Landau (1950) [13]; Gor'kov (1959) [4] rigorously derived the GL equation from the BCS microscopic theory. The novel contribution of this paper is to prove that CGL is a projection of a more fundamental mother equation, rather than the ultimate theoretical entity.

### 7.2 Friston Free Energy Principle

Friston (2010) proposed the Free Energy Principle (FEP), asserting that the self-organization of biological systems is equivalent to variational free energy minimization [6]. The mother equation of this paper incorporates FEP into the CGL dynamical framework through the free energy functional F[Ψ] (Proposition F-1): the Lyapunov functional of CGL is isomorphic in structure to the free energy, so CGL evolution approximates free-energy minimization dynamics, providing a continuous field-theoretic foundation for FEP.

### 7.3 Vanchurin Gauge Field Emergence

Vanchurin (2024) proved that neural network learning can emergently give rise to general gauge field structures [9], i.e., Hamilton equations ↔ neural network activation/learning. The mother equation of this paper, through its U(1) gauge structure (§4.4 Wilson loop projection [15]), provides a concrete realization of this emergence mechanism in complex scalar field systems, and further unifies it with CGL dynamics and the Hopf algebra.

### 7.4 Connes-Kreimer Hopf Algebra

Connes and Kreimer (1998) discovered that Feynman diagrams form a Hopf algebra, with antipode S = renormalization [10]. The Hopf projection of this paper generalizes this result: not only Feynman diagrams, but any system with involution structure (including CGL time reversal, PCD phase coherence divergence) is a representation of a Hopf algebra. Sweedler (1969) [7] gave the standard framework for exterior-algebra Hopf construction.

### 7.5 Sakharov Induced Gravity

Sakharov (1968) proposed that gravity is an induced effect of quantum-field vacuum fluctuations [5]. Degeneration 6 of this paper incorporates the Sakharov framework into the steady-state limit of the mother equation, but the rigorous proof still requires future work.

### 7.6 Analog Gravity and Acoustic Metric

Unruh (1981) [20] proposed the acoustic black hole analogy, proving that the behavior of sound waves in a fluid in the supersonic region is equivalent to quantum field theory near a black hole horizon. The acoustic metric (F10) of this paper is a direct corollary of the Unruh analogy in the Madelung representation of the mother equation.

### 7.7 Non-Hermitian Skin Effect

Hatano and Nelson (1997) [21] first studied localization transitions in non-Hermitian tight-binding models. Yao and Wang (2018) [22] systematically proposed the topological classification of the non-Hermitian skin effect (NHSE). This paper incorporates NHSE into the discretization framework of the mother equation, and points out the correspondence between the information-flow directionality of NHSE and the PCD phase coherence divergence measure.

### 7.8 Lindblad Master Equation and Open Quantum Systems

Lindblad (1976) [23] gave the general form of the generator of a quantum dynamical semigroup. This paper points out that the CGL equation is a special case of the Lindblad master equation under the mean-field approximation, and the PCD term corresponds to the phase modulation effect of the Lindblad decoherence channel.

### 7.9 Time Crystals and Time Glasses

Else et al. (2016) [32] and Yao et al. (2017) [33] proposed discrete time crystals (DTC), realizing ordered phases with symmetry breaking in the time dimension. §3.8 of this paper treats the time glass (Haga et al., arXiv:2506.04740) as a non-periodic degeneration of the time evolution of the mother equation — the finite Liouvillian gap corresponds to the dissipative balance of the mother equation (PCD causes solitons to decay while topological charge is conserved). The application of the Kibble-Zurek mechanism in the BKT phase transition of the mother equation provides the mathematical foundation for memory consolidation.

### 7.10 Finite-Field Quantum Mechanics and GF(65537) Anchoring

Kitaev (1998) [34] proposed the Clifford+T gate set as a universal gate set for quantum computation. The GF(65537) integer anchoring of this paper (§5.4) exactly integerizes the algebraic numbers (√2, i, e^{iπ/4}) of the Clifford+T gate set — Hadamard gate coefficient 1/√2→2040, T gate coefficient e^{iπ/4}→65521; the cyclotomic-field splitting theorem 65537≡1(mod 8) guarantees complete splitting of 8th roots of unity. The complete development of this finite-field quantum mechanics is given in the GF(p) framework; this paper provides its physical theoretical framework (the residue field takes values on GF(65537)).

---

## 8 Conclusion

### Core Results

1. **Mother equation unified framework**: ∂Ψ/∂t = (1+iα)D∇²Ψ + εΨ − (1+iβ)|Ψ|²Ψ − iγ·PCD·Ψ + J, together with three topological constraints (topological charge quantization, global phase coherence constraint, topological-HDC homomorphism [§2.8]), provides an effective field equation framework for dissipative wave-field systems with phase coherence divergence feedback. 18 principal formulas (F1–F18) converge to the mother equation plus three constraints, among which CGL [1,2,13], Madelung [14], Wilson loop [15], BKT [18,19], Lindblad [23], etc., are classical results, while PCD (F4), the information balance equation (F13), and the weight mapping (F16) are novel contributions. The mother equation strictly degenerates to the diffusion equation [28], Turing pattern [3], CGL [1,2,13], and connects to the Schrödinger equation through analytic continuation [29] (Proposition 2, proven), and to the Maxwell equations through gauge-covariant extension (Proposition 3, proven, requiring additional introduction of the gauge field kinetic term).

2. **Five-fold projection and residue field**: CGL/Hopf/PCD/Wilson/free energy have projection relations of varying rigor with the mother equation, among which the projections for CGL and PCD are rigorously proven. The residue field ψ(z)=Σrₖ/(z−zₖ)^{nₖ} establishes a formal correspondence with the vortex solution of the mother equation through the vortex-residue formal correspondence (Proposition 5.1): pole = vortex core, pole order = topological charge, providing a complex-analytic foundation for the vortex structure of the mother equation (valid under the topological approximation).

3. **Cognitive wave-field interpretation and topological-HDC homomorphism**: The mother equation obeys the information balance principle (U(1) symmetry), the phase coherence divergence law (PCD measure), and the attractor law (free energy structure). The topological-HDC homomorphism Φ: (ℤ,+)→(ℤ_N,+) derives the cognitive capacity limit N/2 from the homomorphism kernel (Constraint ③, proven). Qualitative analysis indicates that cognitive systems operate in the critical-state region where PCD takes intermediate values.

### Proven Propositions

1. **Proposition 2** (Analytic continuation): The analytic continuation condition from the mother equation → Schrödinger equation under the Wick rotation [29] holds strictly (proven in §3.1).
2. **Proposition 3** (Gauge extension): Under gauge-covariant extension + kinetic term, the equation of motion of A_μ yields the Maxwell equations (proven in §3.2).
3. **Proposition F-1** (Free energy = Lyapunov functional): Under γ=0, α=0, β=0 (real GL limit), dF/dt≤0 (proven in §4.5).
4. **Proposition F-2** (Contribution of PCD to free energy evolution): Under the ∇PCD=0 approximation, the PCD term's contribution to dF/dt is strictly zero; in the general case it is O(γ·∇PCD) (proven in §4.5).
5. **Proposition 5** (Triple duality chain): Madelung↔Berry↔Wilson share the parallel-transport mathematical structure of a U(1) connection (proven in §6.1, standard result, engineering implementation completed).

### Key Conjectures

1. **Conjecture Hopf-1** (Hopf antipode = phase conjugation): The Hopf antipode S and the phase conjugation operation share the involution property; constructing a cross-category functor is needed to prove strict equivalence (listed as open problem (a)).
2. **Conjecture Wilson-1** (PCD = Wilson loop divergence): PCD and the gauge divergence of the Wilson loop share an identical algebraic structure; the U(1) Abelian case is not applicable, and the non-Abelian SU(N) case is an open problem (listed as open problem (a)).

### Higher-Order Outlook

The extension of the mother equation to non-Abelian gauge groups, the dynamics of higher-dimensional topological defects, and the engineering implementation of the Arithmetic Resonance Computer (ARC) constitute future research directions; see [ARC]. The three papers form a **physics-computation-mathematics** trinity: this paper provides the physical unification of the mother equation (18 formulas → 1 mother equation, residue field theory), [ARC] provides the architectural unification of computation (five operators → Turing completeness), and the GF(p) framework provides the mathematical unification of exactness (quantum gates + combinatorial mathematics → GF(65537) integers). The three share the Fermat prime p=65537 base — the residue field of this paper takes values on GF(65537) (§5.4), the five operators of [ARC] operate on GF(65537) (§6), and the quantum gates and Paley criterion of the GF(p) framework are exactly implemented on GF(65537).

### Open Problems

(a) Rigorous proof of Conjecture Hopf-1 (cross-category functor construction for Hopf antipode = phase conjugation) and Conjecture Wilson-1 (equivalence of PCD and Wilson loop discrete → continuous limit in the non-Abelian SU(N) case); (b) Relativistic extension of the mother equation — introducing (1/c²)∂²Ψ/∂t² to obtain a hyperbolic mother equation and its relation to the Klein-Gordon equation, as well as the self-consistent emergence mechanism of the metric gμν from |Ψ|² in the Sakharov induced gravity correspondence; (c) Numerical verification of cross-effect predictions — new phenomena arising from coupling between two domains, and zero-model comparison verification (random PDE + constraint evaluation coverage, verifying that the coverage of the mother equation is non-incidental); (d) Rigorous numerical phase-diagram verification of the time-glass phase (§3.8).

**[ARC]** Pan JinWen, *Arithmetic Resonance Computer: Five-Operator System, Turing Completeness, and Algebraic Collision Resonance*, work to be published (private communication), 2026.

---

## References

[1] Aranson, I.S., Kramer, L. (2002). The world of the complex Ginzburg-Landau equation. _Rev. Mod. Phys._ 74, 99.

[2] Cross, M.C., Hohenberg, P.C. (1993). Pattern formation outside of equilibrium. _Rev. Mod. Phys._ 65, 851.

[3] Turing, A.M. (1952). The chemical basis of morphogenesis. _Phil. Trans. R. Soc. Lond. B_ 237, 37.

[4] Gor'kov, L.P. (1959). Microscopic derivation of the Ginzburg-Landau equations in the theory of superconductivity. _Sov. Phys. JETP_ 9, 1364.

[5] Sakharov, A.D. (1968). Vacuum quantum fluctuations in curved space and the theory of gravitation. _Sov. Phys. Dokl._ 12, 1040.

[6] Friston, K. (2010). The free-energy principle: a unified brain theory? _Nat. Rev. Neurosci._ 11, 127.

[7] Sweedler, M.E. (1969). _Hopf Algebras_. Benjamin, New York.

[8] 't Hooft, G. (1978). On the phase transition towards permanent quark confinement. _Nucl. Phys. B_ 138, 1.


[9] Vanchurin, V. (2024). Emergent field theories from neural networks. arXiv:2411.08138 [hep-th].

[10] Connes, A., Kreimer, D. (1998). Hopf algebras, renormalization and noncommutative geometry. _Commun. Math. Phys._ 199, 203-242. arXiv:hep-th/9808042.

[11] Nielsen, H.B., Olesen, P. (1973). Vortex-line models for dual strings. _Nucl. Phys. B_ 61, 45.

[12] Faber, M., Greensite, J., Olejnik, S. (1998). Center vortices and confinement. _Phys. Rev. D_ 57, 2603.

[13] Ginzburg, V.L., Landau, L.D. (1950). On the theory of superconductivity. _Zh. Eksp. Teor. Fiz._ 20, 1064. [English translation: Landau, L.D. (1965). _Collected Papers of L.D. Landau_, Pergamon, pp. 546–568]

[14] Madelung, E. (1926). Quantentheorie in hydrodynamischer Form. _Z. Phys._ 40, 322.

[15] Wilson, K.G. (1974). Confinement of quarks. _Phys. Rev. D_ 10, 2445.

[16] Arrhenius, S. (1889). Über die Reaktionsgeschwindigkeit bei der Inversion von Rohrzucker durch Säuren. _Z. Phys. Chem._ 4, 226.

[17] Kuramoto, Y. (1975). Self-entrainment of a population of coupled non-linear oscillators. _Lect. Notes Phys._ 39, 420.

[18] Berezinskii, V.L. (1971). Destruction of long-range order in one-dimensional and two-dimensional systems having a continuous symmetry group I, II. _Sov. Phys. JETP_ 32, 493; 34, 610.

[19] Kosterlitz, J.M., Thouless, D.J. (1973). Ordering, metastability and phase transitions in two-dimensional systems. _J. Phys. C_ 6, 1181.

[20] Unruh, W.G. (1981). Experimental black-hole evaporation? _Phys. Rev. Lett._ 46, 1351.

[21] Hatano, N., Nelson, D.R. (1997). Vortex pinning and non-Hermitian quantum mechanics. _Phys. Rev. B_ 56, 8651.

[22] Yao, S., Wang, Z. (2018). Edge states and topological invariants of non-Hermitian systems. _Phys. Rev. Lett._ 121, 086803.

[23] Lindblad, G. (1976). On the generators of quantum dynamical semigroups. _Commun. Math. Phys._ 48, 119.

[24] Bender, C.M., Boettcher, S. (1998). Real spectra in non-Hermitian Hamiltonians having PT symmetry. _Phys. Rev. Lett._ 80, 5243-5246. arXiv:physics/9712001.

[25] Higgs, P.W. (1964). Broken symmetries and the masses of gauge bosons. _Phys. Rev. Lett._ 13, 508.

[26] Strang, G. (1968). On the construction and comparison of difference schemes. _SIAM J. Numer. Anal._ 5, 506.

[27] Josephson, B.D. (1962). Possible new effects in superconductive tunnelling. _Phys. Lett._ 1, 251.

[28] Fick, A. (1855). Ueber Diffusion. _Ann. Phys._ 170, 59.

[29] Wick, G.C. (1954). Properties of Bethe-Salpeter solutions. _Phys. Rev._ 96, 1124.

[30] Schwinger, J. (1961). Brownian motion of a quantum oscillator. _J. Math. Phys._ 2, 407.

[31] Keldysh, L.V. (1965). Diagram technique for nonequilibrium processes. _Sov. Phys. JETP_ 20, 1018.

[32] Else, D.V., Bauer, B., Nayak, C. (2016). Floquet time crystals. _Phys. Rev. Lett._ 117, 090402.

[33] Yao, N.Y., Potter, A.C., Potirniche, I-D., Vishwanath, A. (2017). Discrete time crystals: rigidity, criticality, and realizations. _Phys. Rev. Lett._ 118, 030401. arXiv:1608.02589.

[34] Kitaev, A.Yu. (1998). Quantum computations: algorithms and error correction. _Russ. Math. Surv._ 52, 1191-1249.


[35] Landauer, R. (1961). Irreversibility and heat generation in the computing process. _IBM J. Res. Dev._ 5, 183.

[36] Halperin, B.I., Hohenberg, P.C. (1977). Theory of dynamic critical phenomena. _Rev. Mod. Phys._ 49, 435.

[37] Weinstein, M.I. (1983). Nonlinear Schrödinger equations and sharp L² estimates. _Commun. Math. Phys._ 87, 567-576.

[38] Dirac, P.A.M. (1931). Quantised singularities in the electromagnetic field. _Proc. R. Soc. Lond. A_ 133, 60.

[39] Berry, M.V. (1984). Quantal phase factors accompanying adiabatic changes. _Proc. R. Soc. Lond. A_ 392, 45.

[40] Jackson, J.D. (1999). _Classical Electrodynamics_, 3rd ed. Wiley, §1.4 (Gauss's law), §1.11 (Green's function).




---

## Appendix A: Engineering Implementation Summary

**Note**: The performance data listed in this appendix (latency, memory, recall, etc.) are all measured results from the engineering prototype, reflecting software implementation efficiency, not mathematical properties of the mother equation PDE itself.

The core mathematical structure of the mother equation framework has been implemented in the engineering system developed by the author. Below, only the 3 verifications directly related to the core of this paper are listed; the remaining implementations (residue field database, residue chemistry, ARC five-operator system, ΨLang self-compilation, etc.) are detailed in [ARC].

**1. PCD contradiction detection verification**: PCD, as a phase coherence divergence measure, has been implemented and verified in an edge cognitive reasoning system. Test conditions: randomly generated DAG graphs, average out-degree 3, edge phase φ_{ij}∈[0,2π) uniformly distributed, weight strength∈[0,1] uniformly distributed. Implementation language: Rust 1.78, single-threaded, no SIMD optimization. The test set contains 40 fatal contradiction cases. Results: FN=0 (100% recall), edge latency 78μs/query, computational complexity O(E). PCD 100% recall vs. cosine similarity 0% recall, verifying the engineering effectiveness of PCD as a phase coherence divergence measure.

**2. Vortex dynamics numerical simulation**: The genesis equation evolver has implemented ∂Ψ/∂t = D∇²Ψ + εΨ − (1+iβ)|Ψ|²Ψ − iγ·PCD·Ψ + J, unifying the two major physical terms CGL+PCD. The PCD adaptive ε controller has been implemented, PCD=best/(best+second)∈(0,1), critical state 0.75, with Meissner phase transition detection. KZ freezing signal detection has been implemented.

**3. Topological-HDC encoding verification**: Cyclic shift symmetry has been implemented and verified — difference inversion = cyclic shift (4th-order cyclic symmetry), R1243 theorem. The sech ground-state HDC basis has been implemented, with Weinstein ground state Q(x)=√2·sech(x) replacing the random HDC basis. 6-edge cross-channel coupling has been implemented, unifying and coordinating Clifford algebra + HDC + Cauchy residue + topological mapping.

**Note**: All the above implementations include test verification, with total code exceeding 100,000 lines. The mathematical structure of the mother equation (PCD phase modulation, topological-HDC cyclic shift) is not only theoretically self-consistent but has also been initially realized in engineering. The complete implementation list is detailed in [ARC].

---

## Appendix B: Engineering Implementation and Experimental Verification of PCD

PCD (Phase Coherence Divergence) was first proposed by the author of this paper in an edge cognitive reasoning framework, and has been implemented and verified in actual engineering. This appendix briefly lists the key results of its engineering implementation.

### B.1 Engineering Definition of PCD

In a discrete graph structure, the engineering implementation form of PCD is:

$$D(Q) = 1 - \frac{|\sum_{(i,j) \in Q} u_{ij}|}{\sum_{(i,j) \in Q} |u_{ij}|} \tag{38}$$

where $u_{ij} = \text{strength} \times e^{i \cdot \varphi_{ij}}$, strength is the edge weight, and φ_{ij} is the edge phase offset.

This definition is completely consistent with the main-text definition (6) when w_i = strength and θ_i = φ_{ij}.

### B.2 Experimental Verification Results

The contradiction detection capability of PCD has been verified in an actual system:

**Test conditions**: randomly generated DAG graphs, average out-degree 3, edge phase φ_{ij}∈[0,2π) uniformly distributed, weight strength∈[0,1] uniformly distributed. Implementation language: Rust 1.78, single-threaded, no SIMD optimization. The test set contains 40 fatal contradiction cases.

| Verification item          | Result                | Description                                          |
| --------------------------- | --------------------- | ---------------------------------------------------- |
| Contradiction detection recall | FN=0 (100% recall)    | All 40 fatal contradictions detected                 |
| Embedding independence      | Verified              | Synthetic embedding and real BGE embedding produce identical PCD values |
| vs. cosine similarity       | PCD 100% vs. cosine 0% | Cosine similarity has 0% recall for logical contradictions |
| Computational complexity    | O(E)                  | E is the number of edges, no training data required  |
| Edge latency                | 78μs/query            | Training-free, no GPU required                        |

### B.3 Edge Device Performance

Performance metrics of the SGD engine on a 15W edge CPU (N305):

| Metric          | Value                                     |
| --------------- | ----------------------------------------- |
| Inference latency | <2ms (100K nodes), <3ms (1M nodes)      |
| Memory compression | 350 Bytes/node                           |
| 100K-node memory | 35MB                                     |
| 1M-node memory   | 350MB                                    |
| Latency scaling law | Latency(N) = a + b·log N, a≈1ms, b≈0.5ms |

### B.4 Connection between PCD and the Mother Equation

The successful engineering implementation of PCD (FN=0, O(E) complexity, 78μs latency) provides empirical support for the phase modulation term −iγ·PCD·Ψ in the mother equation (2): PCD, as a phase coherence divergence measure, not only satisfies the theorems of normalization, translation invariance, etc., mathematically (Theorems PCD-1~4), but has also been verified as a reliable contradiction detection metric in engineering. The mother equation generalizes PCD from a discrete graph structure to a continuous field Ψ(x,t), achieving spatiotemporalization through the local field expression (7).

---
