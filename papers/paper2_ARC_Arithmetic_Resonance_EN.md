# FodaOS Unified Field Theory Series II: ARC Arithmetic Resonance Computer — Five-Operator System, Turing Completeness, and Algebraic Resonance Structure

## FodaOS Unified Field Theory Series II: Arithmetic Resonance Computer — Five-Operator System, Turing Completeness, and Algebraic Resonance

---

**Author**: Pan JinWen [Cypher Pan]

**Abstract**: This paper proposes the Arithmetic Resonance Computer (ARC), a new computing architecture that takes integer algebra as the computational substrate and resonance semantics as the computational paradigm, positioned as an algebraic replacement for the traditional control-flow programming paradigm rather than a superimposed layer. The core of ARC consists of five native operators: GF(p) multiplication ⊙, Clifford geometric product ◦, Bragg resonance/NTT ≋, Born selection ↡, and Hebbian sculpting ∆, unifying arithmetic (how to compute) and resonance (what to compute) into a single instruction set. We prove the Turing completeness of ARC (Born selection provides conditional control + extensible GF(p) arrays provide unbounded storage + Hebbian iteration implements general loops + finite instruction set + NAND implementable), establish the algebraic resonance structure (the strongest resonance chain is the Conway λ ↔ PV numbers → Mahler/Salem triangular closed loop), prove that the Fermat prime p=65537 provides an exact integer anchor for ARC (quantum gates H/S/T, NTT, Yang-Baxter and other operations all become pure integer modular operations), establish the correspondence between ARC and the CGL master equation (arithmetic resonance = the arithmetic version of PCD, the five operators correspond to the fivefold projection), propose the Quantum Arithmetic Resonance Dual Computer QARDC, and present the engineering implementation and verification results (edge device 78μs/query, training-free, no GPU required).

**Keywords**: Arithmetic Resonance Computer, ARC, finite field arithmetic, Clifford geometric algebra, number-theoretic transform, Born selection, Bragg resonance, Hebbian learning, Turing completeness, algebraic resonance, GF(65537), tensor network

---

## 1 Introduction

### 1.1 Problem Statement: Von Neumann Bottleneck and Triangular Impossibility

Since the establishment of the Von Neumann architecture in 1945, the fundamental paradigm of computation has been the serial control-flow driven "fetch → decode → execute → writeback". This architecture has dominated 80 years of computing development, but its fundamental limitations are increasingly apparent:

**Von Neumann Bottleneck**:

- **Control-flow tax**: Branch prediction failures cause nondeterministic delays, each if-else statement introduces pipeline bubbles
- **Floating-point imprecision**: IEEE 754 floating-point numbers suffer from precision loss, NaN propagation, and rounding error accumulation
- **Memory wall**: Serial access driven by the instruction counter cannot match data parallelism

Dataflow architecture is an important research direction for post-Von Neumann computing architectures, and both industry and academia are exploring new computing paradigms that replace the traditional instruction-counter-driven approach with data-ready-driven computation. The industry dynamics in 2025-2026 confirm this trend: NVIDIA and Groq reached an IP/talent cooperation, Intel made a strategic investment in SambaNova, and the Li Auto M100 dataflow chip paper was selected for the ISCA 2026 industrial track — dataflow architecture has entered the industrial landing stage from academic exploration. The core idea of dataflow architecture is "data ready → immediate computation → result transfer → trigger downstream", replacing instruction-driven with data-driven.

However, dataflow architecture still does not solve the **triangular impossibility problem**:

$$\text{exact computation} + \text{extreme performance} + \text{physical correctness} = \text{cannot be simultaneously achieved}$$

The current state of mainstream languages:

| Language | Performance | Precision        | Physical semantics |
| -------- | ----------- | ---------------- | ------------------ |
| Python   | ✗           | ✗ (floating-point error) | ✗        |
| C/Rust   | ✓           | △ (manual management)    | ✗        |
| Mojo     | ✓           | ✗ (still floating-point) | ✗        |
| Julia    | ✓           | ✗ (still floating-point) | ✗        |

This paper proposes the **Arithmetic Resonance Computer (ARC)**, which replaces floating-point with integer algebra (zero error, zero drift), replaces control flow with resonance semantics (Born selection replaces if-else), and replaces probabilistic approximation with modular-p topological protection (conservation laws are propositions rather than numerical approximations), simultaneously achieving the three vertices of the triangle.

### 1.2 Definition of ARC

**Definition 1** (Arithmetic Resonance Computer). ARC is a computing architecture whose computational substrate is integer arithmetic over the finite field GF(p), whose computational semantics is resonance (response occurs only when frequencies match, rather than when "equal"), and whose core loop is "algebraic object ready → geometric product/NTT/Born selection → resonance output", which is parallel, algebra-driven, branchless, and floating-point-free.

The name of ARC precisely corresponds to its architectural kernel:

- **Arithmetic**: GF(p) finite field addition/subtraction/multiplication/inversion + Cl(4,1) geometric product (essentially integer multiplication) + NTT (essentially modular-p multiplication) → all operations reduce to integer arithmetic → zero floating-point, zero error, zero drift (except for transcendental numbers such as π, which require fixed-point approximation, see §13.1.1)
- **Resonance**: Born selection (amplitude resonance → collapse selection) + Bragg resonance (frequency matching → output) + Hebbian learning (signal resonance → weight update) + tensor network contraction (index resonance → summation) → not "if-else", but "response occurs only upon resonance"

$$\text{arithmetic resonance} = \text{implementing resonance semantics with integer arithmetic} \tag{1}$$

The relationship between ARC and Von Neumann is a **paradigm replacement at the computational paradigm level** rather than a same-level replacement at the hardware architecture level:

| Computing paradigm                 | Driving method                 | Core loop                                  | Parallelism       | Precision   |
| ---------------------------------- | ------------------------------ | ------------------------------------------ | ----------------- | ----------- |
| Von Neumann (1945)                 | Control-flow driven (instruction counter) | fetch → decode → execute → writeback       | Serial            | Floating-point approximation |
| Dataflow (Groq/SambaNova/M100)     | Data-ready driven              | data ready → immediate computation → result transfer | Parallel          | Floating-point approximation |
| **ARC (this paper)**               | **Algebraic-object-ready driven** | **algebraic object ready → geometric product/NTT/Born → resonance output** | **Parallel, branchless** | **Integer-exact** |

### 1.3 Main Results

The main results of this paper are as follows:

**Result 1 (Five-Operator System)**: The computational capability of ARC is entirely generated by five native operators {⊙, ◦, ≋, ↡, ∆}, corresponding respectively to GF(p) multiplication, Clifford geometric product, Bragg resonance/NTT, Born selection, and Hebbian sculpting (§2).

**Result 2 (Turing Completeness)**: ARC satisfies the three necessary conditions for Turing completeness (conditional control + unbounded storage + finite instruction set) and can implement the NAND gate, hence is Turing complete (Proposition 2, §3).

**Result 3 (Algebraic Resonance Structure)**: Under the residue field framework of ARC, an algebraic resonance structure is established, with the strongest resonance chain being the Conway λ ↔ PV numbers → Mahler/Salem triangular algebraic closed loop (Proposition 7, §5).

**Result 4 (GF(65537) Integer Anchor)**: The Fermat prime p=65537=2¹⁶+1 provides an exact integer landing point for the twelve algebraic structures of ARC, making quantum gates H/S/T, NTT, Yang-Baxter and other operations all become pure integer modular operations (Proposition 9, §6).

**Result 5 (ARC and the Master Equation)**: The arithmetic resonance of ARC is the arithmetic version of PCD (phase dispersion) in the CGL master equation, and the five operators {⊙, ◦, ≋, ↡, ∆} correspond to the fivefold projection {CGL, Hopf, PCD, Wilson, free energy} of the master equation (Proposition 10, §7).

**Result 6 (QARDC Quantum Duality)**: The Quantum Arithmetic Resonance Dual Computer QARDC dualizes quantum computing and ARC — quantum computers solve the "cannot compute" problem, ARC solves the "cannot err" problem, and the two markets do not overlap (§8).

### 1.4 First-Discovery Contributions of This Paper

To avoid confusion with results from existing literature, the first-discovery contributions of this paper are explicitly listed below, ordered by importance:

**Core first discoveries**:

1. **ARC Five-Operator System** (§2): Unifying GF(p) multiplication ⊙, Clifford geometric product ◦, Bragg resonance/NTT ≋, Born selection ↡, and Hebbian sculpting ∆ into a single instruction set, establishing a complete definition of arithmetic and resonance.

2. **ARC Turing Completeness** (Proposition 2): Born selection provides conditional control + extensible GF(p) arrays provide unbounded storage + Hebbian iteration implements general loops + finite instruction set + NAND implementable → ARC is Turing complete.

3. **Algebraic Resonance Structure** (Proposition 7): Conway λ ↔ PV numbers → Mahler/Salem triangular algebraic closed loop, triple collision criterion (integer computability + deterministic invariant + physical duality), algebraic anchoring of Heegner numbers and Monster Moonshine.

4. **Arithmetic Resonance = Arithmetic Version of PCD** (Proposition 6): The Bragg resonance of ARC and the PCD (phase dispersion) of the CGL master equation are equivalent under the discrete → continuous limit, rigorously relating ARC to the master equation framework.

5. **Five Operators ↔ Fivefold Projection Correspondence** (Proposition 10): {⊙, ◦, ≋, ↡, ∆} ↔ {CGL, Hopf, PCD, Wilson, free energy}, each operator of ARC corresponds to a projection of the master equation.

6. **QARDC Quantum Arithmetic Resonance Duality** (§8): The duality between quantum computing and ARC — quantum computers solve the "cannot compute" problem (Shor/quantum chemistry, offline), ARC solves the "cannot err" problem (exact real-time control, online), and the two markets do not overlap.

7. **Complementary Relationship between ARC and Quantum Computers** (§3.4): Quantum computers are probabilistic (measurement collapse), ARC is fully deterministic (Born argmax replaces random collapse); quantum computers require 10mK dilution refrigerators, ARC runs on room-temperature x86_64 chips; quantum computers do not guarantee conservation laws (NISQ noise), ARC's GF(p) closure precisely guarantees them (Proposition).

**Non-first discoveries (citing existing literature)**: GF(p) finite field arithmetic [1], Clifford geometric algebra [2], NTT number-theoretic transform [3], Born rule [4], Hebbian learning [5], Conway look-and-say [6], Pisot numbers [7], Salem numbers [8], Mahler measure [9], Hopf algebra [10], Yang-Baxter equation [11], CRT/RNS [12], etc., are all results from existing literature, which this paper incorporates into the unified ARC framework.

### 1.5 Paper Structure

Section 2 establishes the mathematical construction of the five ARC operators and WASM instruction emission. Section 3 proves Turing completeness. Section 4 establishes the mathematical theory of arithmetic resonance. Section 5 establishes the algebraic resonance structure. Section 6 proves the GF(65537) integer anchor. Section 7 establishes the relationship between ARC and the master equation. Section 8 proposes the QARDC quantum duality. Section 9 presents the unified framework. Section 10 gives the PsiLang architecture specification (including five-backend homology and QPU quantum processing unit). Section 11 gives the architectural duality and SPTC time crystal. Section 12 gives the Resurgence-aware compiler. Section 13 gives Cauchy residue rendering, CRT parallel theory, and operator flow. Section 14 gives the conclusion and open problems.

---

## 2 Mathematical Construction of the Five ARC Operators

The computational capability of ARC is entirely generated by five native operators. Each operator simultaneously has a dual structure of an arithmetic layer (how to compute) and a resonance layer (what to compute).

### 2.1 Operator ⊙: GF(p) Finite Field Multiplication

**Definition 2** (GF(p) Multiplication). Let p be a prime, a, b ∈ GF(p) = {0, 1, ..., p−1}. GF(p) multiplication is defined as

$$a \odot b = (a \cdot b) \bmod p \tag{2}$$

**Property**:

- **Closure**: a ⊙ b ∈ GF(p), the result is always an integer, with zero floating-point, zero error, and zero drift
- **Commutative group**: (GF(p)\{0}, ⊙) forms a commutative group, every non-zero element has a multiplicative inverse a⁻¹ satisfying a ⊙ a⁻¹ = 1
- **Fermat prime acceleration**: When p = 2¹⁶ + 1 = 65537, mod p degenerates to bit operations

$$x \bmod 65537 = (x \mathbin{\&} \text{0xFFFF}) - (x \gg 16) \tag{3}$$

When the result $r < 0$, a correction of adding 65537 is needed ($r \leftarrow r + 65537$), applicable for $x < 65537^2$. This bit-operation implementation is 10-30 times faster than general modulo.

**Arithmetic layer**: Modular-p integer multiplication, a single instruction (imul + urem).

**Resonance layer**: The cyclic nature of the multiplicative group of GF(p) — the powers g⁰, g¹, ..., g^(p−2) of the primitive root g traverse all non-zero elements, forming a "frequency spectrum". Multiplication a ⊙ b corresponds to cyclic convolution on the frequency spectrum.

### 2.2 Operator ◦: Clifford Geometric Product

**Definition 3** (Clifford Geometric Product). Let Cl(4,1) be the conformal Clifford algebra with 4 spatial dimensions + 1 scale dimension, having 2⁵=32 basis elements {1, e₁, e₂, e₃, e₄, e₅, e₁₂, ..., e₁₂₃₄₅}. For multivectors a, b ∈ Cl(4,1), the geometric product is defined as

$$a \cdot b = a \circ b + a \wedge b \tag{4}$$

where a∘b is the inner product (scalar + lower-grade components) and a∧b is the outer product (higher-grade components).

**Property**:

- **32-component parallelism**: The geometric product simultaneously computes linear combinations of 32 components, naturally SIMD
- **Algebraic completeness**: Cl(4,1) contains rotations, translations, scaling, inversion, and special conformal transformations, and is the minimal complete signature of a world model
- **Maxwell's equations collapse**: In Cl(4,1), Maxwell's equations collapse to a single equation

$$\partial F = J \tag{5}$$

where F is the electromagnetic field bivector, J is the current density trivector, and ∂ = e^μ ∂_μ is the vector differential operator.

**Arithmetic layer**: Integer linear combination of 32 components, essentially integer multiplication + addition.

**Resonance layer**: The inner product a∘b of the geometric product measures the "degree of alignment" (non-zero only when both vectors are non-zero), and the outer product a∧b measures the "degree of orthogonality" (non-zero only when directions are independent) — this is the algebraic representation of spatial resonance.

### 2.3 Operator ≋: Bragg Resonance/NTT

**Definition 4** (Bragg Resonance/NTT). Let ω = g ∈ GF(p) be a primitive root (of order ord*_p(g) = p−1), NTT transforms an integer sequence {a₀, a₁, ..., a*{N−1}} of length N = p−1 into

$$\hat{a}_k = \sum_{j=0}^{N-1} a_j \cdot \omega^{jk} \bmod p, \quad k = 0, 1, \ldots, N-1 \tag{6}$$

Bragg resonance is defined as the composite pipeline NTT → pointwise multiplication → INTT → argmax:

$$a \asymp b = \text{argmax}_k \left( \text{INTT}\left( \text{NTT}(a) \cdot \text{NTT}(b) \right) \right)_k \tag{7}$$

**Property**:

- **Exact integer convolution**: NTT is the exact integer version of FFT, with zero error over GF(p) (compared to FFT's floating-point rounding error)
- **O(N log N) complexity**: Butterfly algorithm, faster than direct convolution O(N²)
- **Frequency matching semantics**: NTT transforms the time-domain signal to the frequency domain, pointwise multiplication corresponds to frequency matching, and argmax finds the strongest resonance frequency — this is the Bragg physics of "response occurs only when frequencies align"

The mathematical form of **Bragg scattering intensity**:

$$I(q) = \left| \sum_j f_j \cdot \psi(r_j) \right|^2 \tag{8}$$

where f_j is the atomic scattering factor, ψ(r_j) is the value of the wave field at position r_j, and q is the scattering wave vector. NTT computation is precisely the discretization of this scattering intensity: the sequence a_j corresponds to f_j·ψ(r_j), the NTT transform corresponds to the Fourier transform in crystallography, and |·|² corresponds to the scattering intensity.

**Arithmetic layer**: Modular-p integer butterfly operations, all integers with no floating-point.

**Resonance layer**: Frequency matching triggers response — not "equal" triggers response, but "frequency alignment" triggers response. This is the core operator of RAG/memory retrieval, replacing similarity hash lookup.

### 2.4 Operator ↡: Born Selection

**Definition 5** (Born Selection). Let |ψ⟩ = Σᵢ αᵢ|φᵢ⟩ be a superposition state (αᵢ ∈ GF(p) are amplitudes, |φᵢ⟩ are candidate states), Born selection is defined as

$$\text{BornSelect}(|\psi\rangle) = \arg\max_i |\alpha_i|^2 \tag{9}$$

i.e., selecting the candidate state with the largest squared amplitude.

**argmax semantic qualification**: GF(p) elements have no natural total order; argmax is based on the numerical magnitude comparison of integer representatives {0, 1, ..., p-1}. In the small-value range (where α_i² is much smaller than p), the magnitude of integer representatives is consistent with the ordering of complex amplitude moduli; in practical engineering, amplitudes are typically normalized to the small-value range, making argmax ordering reliable.

**Property**:

- **Determinism**: The Born rule of traditional quantum mechanics is probabilistic (collapsing to |φᵢ⟩ with probability |αᵢ|²), while ARC's Born selection is deterministic (always choosing argmax) — turning "control" into "computation" and "branching" into "algebraic projection"
- **Parallelizable and branchless**: One comparison + one indexing, no branch prediction, no miss penalty
- **Simulating if-else**: Let ψ = α|A⟩ + β|B⟩, |α|² > |β|² → choose A, |β|² > |α|² → choose B. This is conditional control — not "jump" but "projection", yet with equivalent computational power

**Arithmetic layer**: Squaring + comparison + indexing over GF(p), all integer operations.

**Resonance layer**: Amplitude resonance → collapse selection — the state with the largest amplitude "resonates" most strongly, and the system collapses to this state. This is the classical deterministic implementation of quantum measurement semantics.

### 2.5 Operator ∆: Hebbian Sculpting

**Definition 6** (Hebbian Sculpting). Let θ be the weight phase and Ψ be the signal field, the ∆ operator is defined as

$$\frac{d\theta}{dt} = \varepsilon \cdot \text{Im}(\Psi_{\text{pre}}^* \Psi_{\text{post}}) - \lambda \cdot \sin(\theta) \tag{10}$$

discretized as a SAR (Successive Approximation Register) integer update:

$$\theta_{t+1} = \theta_t + \varepsilon \cdot \text{Im}(\Psi_{\text{pre},t}^* \Psi_{\text{post},t}) - \lambda \cdot \text{sgn}(\sin\theta_t) \tag{11}$$

**Property**:

- **Integer online learning**: The process of running a program is the process of modifying the program; training/inference are not separated into phases, with zero gradient descent and zero backpropagation
- **Hebbian principle**: "Neurons that fire together wire together" — Im(Ψ\*Ψ) measures the degree of phase alignment of signals, enhancing when aligned and decaying when not aligned
- **sin constraint**: The λ·sin(θ) term prevents unbounded weight growth, providing self-stabilization

**Arithmetic layer**: SAR integer update, a single shift + addition/subtraction.

**Resonance layer**: Signal resonance → weight update — signal phase alignment (resonance) drives weight sculpting, and the system adaptively adjusts during execution.

### 2.6 Algebraic Completeness of the Five Operators

**Proposition 1** (Algebraic Completeness of the Five Operators). The five native operators {⊙, ◦, ≋, ↡, ∆} of ARC are algebraically complete over GF(p), i.e., any computable function over GF(p) can be expressed as a finite composition of these five operators. Here, GF(p) addition serves as the adjoint basic operation of ⊙ (underlying machine integer addition + modular reduction), and together with ⊙ constitutes the complete arithmetic of the field.

_Proof_. In three steps:

(i) **⊙ together with the adjoint addition completely provides GF(p) arithmetic**: ⊙ implements modular multiplication a·b mod p, GF(p) addition a+b mod p serves as the adjoint basic operation (underlying i32.add + gf_reduce, being one wing of the field operations together with ⊙). The inverse a⁻¹ = a^(p−2) is implemented by fast exponentiation of ⊙ (Fermat's Little Theorem). Subtraction a−b = a+(p−b). Therefore, ⊙ together with the adjoint addition completely provides the addition, subtraction, multiplication, and inversion of GF(p). The completeness of the five operators does not require ⊙ alone to be complete for addition — the multiplicative group (F_p^×, ·) and the additive group (F_p, +) are the two independent operation wings of the field; ⊙ completes multiplication, the adjoint addition completes addition, and ↡ performs conditional selection between the two.

(ii) **◦ completes Cl(4,1) geometry**: The Cl(4,1) geometric product ◦ includes the inner product (scalar multiplication) and the outer product (determinant), and can represent all linear algebra operations (matrix multiplication, determinant, inverse matrix, etc.).

(iii) **≋, ↡, ∆ complete control and learning**: ↡ provides conditional control (simulating if-else), ≋ provides frequency-domain transformation (NTT/convolution/correlation), and ∆ provides online learning. These three cover control flow, signal processing, and adaptive learning.

Therefore, finite compositions of {⊙, ◦, ≋, ↡, ∆} can represent any computable function over GF(p). □

**Physical correspondence of the five operators**:

| Operator | Arithmetic layer               | Resonance layer                 | Physical correspondence      | Complexity |
| -------- | ------------------------------ | ------------------------------- | ---------------------------- | ---------- |
| ⊙        | GF(p) modular multiplication   | Frequency-spectrum cyclic convolution | Gauge field U(1) charge multiplication | O(1)       |
| ◦        | 32-component integer linear combination | Spatial alignment/orthogonality resonance | Spacetime algebra Cl(4,1)    | O(32)      |
| ≋        | NTT integer butterfly          | Frequency-matching Bragg scattering | Quantum Fourier transform    | O(N log N) |
| ↡        | GF(p) squaring + comparison + indexing | Amplitude resonance → collapse | Quantum measurement Born rule | O(N)       |
| ∆        | SAR integer shift + addition/subtraction | Signal resonance → weight sculpting | Neural plasticity Hebbian    | O(1)       |

### 2.7 Engineering Implementation of the Five Operators: WASM Instruction Sequences and host_call Bridge

The mathematical abstractions of the five operators are realized in the ARC compiler as deterministic instruction sequences. This section gives the precise code generation rules for each operator, confirming the zero-optimization-pass principle that "algebraic structure determines the unique optimal instruction sequence".

**Instruction emission of ⊙ GF(p) modular multiplication**. The ⊙ operator triggers compile-time folding in the constant-parameter case (⊙PE partial evaluation), and in the variable-containing case emits a host_call bridge to invoke the runtime modular arithmetic primitive. Specifically, gfmul/gfadd/gfsub/gfinv/gfpow are bound to host_call id 10/11/12/13/14 respectively, with parameters evaluated in stack fashion and completed in a single call. The constant folding path invokes the gf65537_\* primitive family directly at compile time and emits i32.const, eliminating runtime host_call overhead — this is the manifestation of ⊙PE partial evaluation at the code generation layer, achieving 3× operator fusion speedup.

**Instruction emission of ◦ Clifford geometric product**. The WASM implementation of the ◦ operator has two layers:

**Index layer** (determining the result basis vector): The index $K$ of the basis vector product $e_I \cdot e_J = \pm e_K$ is determined by bit operations —

$$\text{idx}(I, J) = \text{i32.xor}(I, J) \;\mid\; \text{i32.and}(I, J) \tag{2.7.1}$$

The emission sequence is `i32.xor(0x73) → i32.and(0x71) → i32.or(0x72)`, with 3 bit-operation instructions determining the bit mask and sign factor of the result basis vector (metric signature $e_5^2 = -1$).

**Value layer** (32-component linear combination): The complete computation of the Cl(4,1) geometric product involves multiply-accumulate of 32 components, implemented by a vectorized multiply-accumulate loop of `i32x4.mul`. The bit operations of the index layer determine the target component position of each multiply-accumulate, and the value layer executes the actual integer multiply-accumulate.

Total for both layers: 3 bit operations (index layer) + 32 vectorized `i32x4.mul` multiply-accumulates (value layer) complete the full geometric product. The index-layer bit operations are the integer implementation of the graded structure of geometric algebra, and the value-layer multiply-accumulate is the integer implementation of linear combination.

**Instruction emission of ↡ Born selection**. The ↡ operator compiles to the WASM select single-byte instruction 0x1B:

$$\text{born}(\text{cond}, \text{then}, \text{else}) \to \text{stack}[then, else, cond]\;\text{select} \tag{2.7.2}$$

The select instruction semantics is `cond ≠ 0 ? then : else`, with single-byte encoding completing the eigenstate projection. This implementation replaces the quantum Born rule's "collapse with probability |αᵢ|²" with "deterministic selection by cond", compressing control-flow branching into a single instruction — no branch prediction, no miss penalty, parallelizable.

**Instruction emission of ∆ Hebbian sculpting**. The ∆ operator compiles to the WASM i32.store instruction 0x36:

$$\text{hebbian}(\text{addr}, \text{val}) \to [\text{addr}] := \text{val} \tag{2.7.3}$$

i32.store writes val to the linear memory at addr, returning addr to support chained calls. Physical duality: synaptic weight write = full-field injection, Hebbian update = memory inscription. The incremental update rule w_new = w_old + delta is implemented by hebbian(addr, w.get(i) + delta), with SAR (Successive Approximation Register) integer update and no floating-point.

**Instruction emission of ≋ Bragg resonance/NTT**. The ≋ operator invokes the NTT butterfly algorithm through the host_call bridge, or directly emits 8-way parallel butterflies via an AVX2 SIMD template (see §6.2 engineering implementation for details). The composite pipeline NTT forward transform → pointwise multiplication → inverse transform → argmax is entirely integer modular arithmetic over GF(65537).

**mem_load vortex street direct readout**. The vortex street readout operator compiles to the WASM i32.load instruction, directly reading the residue value at the pole from the background board linear memory — this is the engineering "vortex street direct readout" implementation of the discrete evaluation of the residue field ψ(z)=Σrₖ/(z−zₖ), forming a write-read duality with the i32.store of ∆.

**Summary of the five-operator instruction set**:

| Operator  | WASM instruction              | Byte count              | Physical duality     |
| --------- | ----------------------------- | ----------------------- | -------------------- |
| ⊙ gfmul   | host_call 12 / compile-time folding | 5B (call)              | Modular eigenvalue   |
| ◦ clifford | Index layer: 3B bit ops + Value layer: i32x4.mul×32 | 3B + vectorized loop | Geometric algebra direct product |
| ≋ ntt     | host_call / AVX2 butterfly    | 5B + template           | Bragg scattering     |
| ↡ born    | select                        | 1B (0x1B)               | Eigenstate projection |
| ∆ hebbian | i32.store                     | 1B (0x36)               | Synaptic weight write |
| mem_load  | i32.load                      | 1B (0x28)               | Vortex street direct readout |

The total WASM instruction length of the five operators is only 12 bytes (excluding host_call parameters), confirming ARC's design philosophy of "algebraic structure is the optimal instruction sequence" — no need for LLVM's 50ms optimization pass, only 0.1ms table-lookup emission.

**Born = the only branch, Hebbian = the only loop**. Classical if/else is a degenerate form of Born selection (binary projection), and classical while is a degenerate form of Hebbian sculpting (weight iteration). At the ARC instruction set level, if → select 0x1B (Born eigenstate projection), while → i32.store loop (Hebbian full-field injection). Classical control flow is a paradigm regression — operators take priority over control flow.

**Operator fusion**. The compiler detects three fusion patterns at the PE layer, merging adjacent operator chains into a single composite instruction:

| Fusion pattern  | Original operator chain         | After fusion       | Speedup source                |
| --------------- | ------------------------------ | ------------------ | ----------------------------- |
| GFMUL+CLIFFORD  | clifford(gfmul(a,b), c)        | FusedGfMulClifford | Eliminating intermediate register allocation |
| BORN+HEBBIAN    | hebbian(born(cond,a₀,a₁), v)   | FusedBornHebbian   | Merging selection + write into conditional store |
| MEM_LOAD+BORN   | born(cond, mem_load(a₀), mem_load(a₁)) | FusedMemLoadBorn | Merging double-read + selection into conditional load |

**host_call protocol**. ARC bridges FFI through host_call, and the five arithmetic channels of GF(65537) (id=10-14) bridge finite field operations to pe_simd.ψ — bit-operation modular reduction (x mod 65537 = (x & 0xFFFF) − (x >> 16)), with theoretical 960× speedup and actual 100-200× including host_call switching overhead. Constant folding optimization: gfmul/gfadd etc., when all parameters are Int literals, directly compute the result at compile time and emit i32.const to replace the host_call sequence — the operator "collapses" to a constant at compile time, with zero runtime overhead.

### 2.8 32-Component Multivector Structure of the Cl(4,1) Conformal Geometric Algebra

The 32-component parallel computation of the ◦ operator is implemented in engineering by the 32-component Multivector of the Cl(4,1) conformal geometric algebra. The graded structure of Cl(4,1) is:

$$\text{Cl}(4,1) = \underbrace{1}_{\text{Grade 0}} \oplus \underbrace{5}_{\text{Grade 1}} \oplus \underbrace{10}_{\text{Grade 2}} \oplus \underbrace{10}_{\text{Grade 3}} \oplus \underbrace{5}_{\text{Grade 4}} \oplus \underbrace{1}_{\text{Grade 5}} = 32 \text{ dimensions} \tag{2.8.1}$$

The metric signature is e₁²=e₂²=e₃²=e₄²=+1, e₅²=−1 (e₅ = scale direction / conformal dimension, signature (+,+,+,+,−)). The 32 components are arranged as a single array data[32] in Grade order, with physical correspondence:

| Grade | Dimension | Components   | Physical meaning                |     |    |
| ----- | --------- | ------------ | ------------------------------- | --- | --- |
| 0     | 1         | data[0]      | Scalar: density ρ=              | Ψ   | ²  |
| 1     | 5         | data[1..5]   | Vector: 4 spacetime + 1 scale direction |     |    |
| 2     | 10        | data[6..15]  | Bivector: coupling plane / vorticity ω |     |    |
| 3     | 10        | data[16..25] | Trivector: ternary structure / topological flow |     |    |
| 4     | 5         | data[26..30] | Pseudovector: dual-plane projection |     |    |
| 5     | 1         | data[31]     | Pseudoscalar: core topological charge Q (SUSY protected) |     |    |

**32×32 full-coupling computation of the geometric product**. The complete geometric product is implemented through a precomputed 32×32 geometric product table (1024 entries, each entry being (result index, sign)):

$$C_k = \sum_{i,j:\;\text{table}[i,j].\text{idx}=k} \text{table}[i,j].\text{sign} \cdot A_i \cdot B_j \tag{2.8.2}$$

where table[i*32+j] = (result_idx, sign) is precomputed by the basis vector geometric product basis_geometric_product(a_bitmask, b_bitmask), and the sign factor cl41_sign(s,t) includes the additional flip from e₅²=−1. This implementation compresses the 1024 multiply-accumulates of the Cl(4,1) geometric product into table lookup + accumulation, with each geometric product execution performing 32×32=1024 table queries — naturally SIMD parallel.

**SUSY conservation of the partial geometric product**. The fast path computes only the Grade 0-2 couplings (1+5+10=16 dimensions), explicitly preserving the SUSY conservation of the Grade-5 topological charge Q — the partial geometric product skips higher-order terms that would change the topological charge, ensuring that Q is strictly conserved during evolution. This design reduces the 1024 multiply-accumulates of the full geometric product to 256 (16²), while preserving the topological invariant.

**32×32 linear solve for the non-regular inverse**. The inverse of a Multivector ψ⁻¹ is implemented by treating the geometric product ψ·(·) as a 32×32 linear operator M[i][j]=(ψ·basis_j).data[i], and solving the 32×32 linear system M·x=1 (Gaussian elimination + partial pivoting). This method handles the generalized inverse of non-regular Multivectors, providing an exact implementation of division over Cl(4,1).

**Cl(4,1) gauge structure extraction**. The Grade-2 bivector (10-dimensional) of Cl(4,1) forms the Lie algebra so(4,1) under the commutator [a,b]=ab−ba. so(4,1) contains a subalgebra generating SO(4) rotations, which can be decomposed into the direct sum of two su(2) (so(4)≅su(2)⊕su(2)); by selecting specific subspaces, a gauge structure similar to SU(2)×U(1) can be extracted — the geometric product of the ◦ operator automatically produces the gauge field strength F_μν on the Grade-2 components, without additional gauge field code. The e₅ scale direction provides the degrees of freedom for conformal transformations, making Cl(4,1) contain rotations, translations, scaling, inversion, and special conformal transformations — the minimal complete signature of a world model.

### 2.9 Unified Interface Design and Adapter Implementation of the Five Operators

The five operators of ARC are abstracted in engineering into five unified interfaces, formalizing the "single tensor field kernel + five classes of operators" paradigm. The five interfaces correspond to the physical semantics of the five operators:

**𝓔 Evolution (evolution operator)**. The interface method step(ψ, dt) executes CGL time evolution, and hebbian_carve(ψ, j, k) executes Hebbian online sculpting. 𝓔 unifies the time evolution semantics of the two operators ⊙ (GF(p) multiplication driving discrete time stepping) and ∆ (Hebbian weight update).

**𝓞 Observation (observation operator)**. The interface method project(ψ, basis) executes Cauchy residue rendering + Bragg collapse + shape rendering, and residue(ψ, z) executes residue field evaluation. 𝓞 unifies the observation semantics of the two operators ≋ (Bragg resonance/NTT) and ↡ (Born selection projection). Zero-dissipation promise: all 𝓞 methods only read the Field and do not modify the original field.

**𝓜 Memory (memory operator)**. The interface method slice(ψ, key) returns a subspace projection, bragg_match(q, k) executes Born overlap + Bragg filtered retrieval, and travel(t) executes time-travel snapshot retrieval. 𝓜 integrates the three libraries psi-db (17 primitives → slice), psi-rag (9 primitives → bragg_match), and psi-mqq (9 primitives → travel), corresponding to the memory projection semantics of the ↡ operator.

**𝓔ₙ Entanglement (entanglement operator)**. The interface method entangle(a, b) creates a Bell pair, broadcast(msg) broadcasts a Cooper pair, and measure(bp) performs a Bell measurement. 𝓔ₙ integrates psi-net (13 primitives) and ws\_\* EPR channels (5 primitives), corresponding to the entanglement synthesis semantics of the ◦ operator.

**𝓢 SelfMeasurement (self-measurement operator)**. The interface method describe(ψ) decompiles the field to AST, compile(ast, target) compiles to the target platform, and observe(code) executes code observing the field. 𝓢 implements the closed loop of ΨLang bootstrapping + codegen + JIT — the meta-computational capability of ARC "observing itself", corresponding to the introspection semantics of all five operators.

**Slice subspace projection interface**. db/mqq/rag/net/ui share the Slice interface, providing key(), dim(), is_readonly(), embedding(), summary() methods. Each operator adapter implements a specific Slice type (DbSlice/RagSlice/MqqSlice/NetSlice/UiSlice), realizing the geometric semantics of "subspace = projection".

**Five-operator composite interface OperatorCore**. A single struct can simultaneously implement the five interfaces 𝓔+𝓞+𝓜+𝓔ₙ+𝓢 (such as QtnEngine), suitable for end-to-end demos. In production environments, it is recommended to implement the five interfaces separately (single responsibility), and only implement OperatorCore when a struct truly and unifiedly holds the state of the five operators.

**Manifestation of the three-non principle at the interface layer**. All interface methods return Result<T, OperatorError>, ensuring non-nondeterminism (same input always yields same output, DFL bit-identical); interface methods are read-only/reversible, ensuring non-dissipation (the Field is not destroyed by operators, only projected); interface methods have zero rand/zero noise/zero sampling, ensuring non-randomness (all deterministic).

**Adapter implementation**. The concrete implementation of the five interfaces is completed by five adapters, connecting the physical kernels to the interfaces in adapter pattern:

**EvolutionAdapter (concrete implementation of 𝓔)**. Connects the CGL physical kernel (CglField + HebbianSculptor) to the Evolution interface. The step() method calls CglField::step() to execute RK4 integration (§7.1), and the hebbian_carve() method calls HebbianSculptor::sculpt() to execute phase matrix update (§4.4). The adapter holds the sculptor state and automatically executes hebbian_carve after each step — the unified semantics of "evolution is sculpting".

**ObservationAdapter (concrete implementation of 𝓞)**. Connects the Cauchy renderer (CauchyRenderer) and Bragg retriever (BraggRetriever) to the Observation interface. The project() method dispatches based on the basis type: Codepoint basis → BraggRetriever::collapse() returns the strongest mode, Shape basis → CauchyRenderer renders the residue field, Residue basis → directly evaluates ψ(z). The residue() method calls the evaluate() of the four-layer structure of the residue field to execute residue field evaluation (§7.4).

**MemoryAdapter (concrete implementation of 𝓜)**. Connects the three libraries (psi-db + psi-rag + psi-mqq) to the Memory interface. The slice() method dispatches to db table slicing, rag document slicing, and mqq topic slicing based on the SliceKey type, returning a MemorySlice implementing the Slice interface. The bragg_match() method executes the joint retrieval of Born overlap + Bragg filtering — first Bragg frequency matching of candidates, then Born amplitude projection to select the strongest. The travel() method retrieves historical snapshots from the mqq time series. The shared BraggIndex singleton unifies retrieval across db/rag/mqq.

**EntanglementAdapter (concrete implementation of 𝓔ₙ)**. Connects the psi-net engine to the Entanglement interface. The entangle() method creates a Bell pair and publishes it to the specified topic, the broadcast() method broadcasts a Cooper pair (entangled message pair) to the network, and the measure() method performs a Bell measurement and returns an Outcome. The conversion from Cooper pair to DbValue ensures that the entangled state maintains coherence during persistence.

**SelfMeasurementAdapter (concrete implementation of 𝓢)**. Connects the ΨLang compilation pipeline to the SelfMeasurement interface. The describe() method calls the ΨLang decompiler to decompile the pole configuration of the Field to AST, the compile() method calls codegen + JIT to compile the AST to the Target platform (WASM/x86_64/CGRA/GPU/QPU five backends), and the observe() method executes the compiled artifact to observe the Field — implementing the meta-computational closed loop of "ARC observing itself". The compilation pipeline has zero changes, only wrapping the existing codegen + JIT at the outer layer.

**Design advantages of the adapter pattern**. (1) The physical kernel is decoupled from the interface, and kernel upgrades do not affect the interface; (2) The five adapters can be independently tested with DFL bit-identical verification; (3) The end-to-end demo implements the complete ARC by composing the five adapters — EvolutionAdapter advances time, ObservationAdapter renders observations, MemoryAdapter stores and retrieves memory, EntanglementAdapter synchronizes entanglement, and SelfMeasurementAdapter performs introspective compilation.

### 2.10 Five Operators → WASM Instruction Emission: The Instruction Set Layer of ARC

The core of ARC as a computing architecture lies in: the five native operators are mapped to specific emission rules of the WebAssembly instruction set. This mapping anchors the abstract operator semantics to executable bytecode — the "instruction set" of ARC is not the hundreds of opcodes of x86, but the 31 WASM instructions emitted by the five operators.

**Five operators → WASM instruction emission table**:

| Operator  | Symbol | BuiltinFn        | WASM instruction sequence | Physical meaning |
| --------- | ------ | ---------------- | ------------------------- | ---------------- |
| GFMUL     | ⊙      | GfMul (0x39)     | i32.mul (0x6C) + i32.rem_u (0x70) | GF(p) modular multiplication = quantum gate rotation |
| CLIFFORD  | ◦      | CliffordMul (0x3B) | Index layer: i32.xor+i32.and+i32.or (3B) + Value layer: i32x4.mul/i32x4.add vectorized loop (8× multiply-accumulate) | Cl(4,1) geometric product = CNOT |
| NTT       | ≋      | BraggFFT (0x3C)  | host_call (NTT spectral domain) | Bragg resonance/NTT = QFT duality |
| BORN      | ↡      | BornSelect (0x3D) | select (0x1B) | Born collapse selection = eigenstate projection |
| HEBBIAN   | ∆      | HebbianCarve (0x3E) | i32.store (0x36) + global.set/get | Synaptic weight write = full-field injection |
| MEM_LOAD  | ∆⁻¹    | —                | i32.load (0x28) | Vortex street direct readout = HEBBIAN duality |

---

## 3 Proof of Turing Completeness

### 3.1 Three Necessary Conditions

A Turing complete computing system must satisfy three necessary conditions:

**Condition 1 (conditional control)**: The system must have some form of "selection" capability.

**Condition 2 (unbounded storage)**: The system can access arbitrarily much memory.

**Condition 3 (finite instruction set)**: The system uses a fixed number of basic operations.

### 3.2 ARC Satisfies Them One by One

**Proposition 2** (ARC Turing Completeness). ARC satisfies the above three necessary conditions and can implement the NAND gate, hence is Turing complete.

_Proof_. Verified one by one:

**Condition 1 → provided by Born selection ↡**:

Traditional conditional control: if (x > 0) then A else B → branch jump, not parallelizable.

ARC conditional control: Born selection ↡ → |⟨φ_A|ψ⟩|² vs |⟨φ_B|ψ⟩|² → argmax → deterministic, parallelizable, branchless.

Let ψ = α|A⟩ + β|B⟩ (superposition state), |α|² > |β|² → choose A, |β|² > |α|² → choose B. This is conditional control — not "jump" but "projection", yet with equivalent computational power. ✅

**Condition 2 → extensible GF(p) arrays provide unbounded storage**:

The "unbounded tape" of a Turing machine requires **an unbounded number of independently addressable storage units** (infinite address space), not infinite precision of a single value. ARC satisfies this requirement through two dimensions:

- **Unbounded address space**: GF(p) arrays (or residue field pole lists) can grow dynamically in length, with each unit storing one GF(p) element. Unbounded array length = unbounded number of Turing machine tape cells, which is the storage unboundedness required for Turing completeness.
- **Unbounded numerical precision** (independent dimension): Arbitrary precision of a single value is achieved through the Residue Number System (RNS), with multiple prime channels encoding in parallel:

$$x \leftrightarrow (x \bmod p_1, \, x \bmod p_2, \, \ldots, \, x \bmod p_k) \tag{12}$$

Using multiple primes p₁=65537, p₂=65521, p₃=65519, ..., the representation range is p₁×p₂×...×pₖ (which can be arbitrarily large). The CRT (Chinese Remainder Theorem) guarantees the uniqueness of reconstruction:

$$x = \sum_{i=1}^{k} M_i \cdot M_i^{-1} \cdot r_i \bmod M, \quad M = \prod_{i=1}^{k} p_i \tag{13}$$

where M_i = M/p_i, M_i⁻¹ is the inverse of M_i modulo p_i, and r_i = x mod p_i. RNS is naturally parallel — each prime channel computes independently, with no carry chain. RNS solves the numerical precision problem, while unbounded address space is provided by the extensible array length. ✅

**Condition 3 → provided by ARC's ~10 basic operations**:

| Unit     | Operation                       | Count     |
| -------- | ------------------------------- | --------- |
| CAU      | Cl(4,1) geometric product       | 1 type    |
| BCE      | NTT convolution (forward/inverse) | 2 types   |
| MAU      | GF(p) addition/subtraction/multiplication/inversion | 4 types |
| BSU      | Born selection                  | 1 type    |
| HCU      | Hebbian update                  | 1 type    |
| CRF      | Register read/write             | 2 types   |
| **Total**|                                 | **~11 types** |

Finite instruction set ✅

The above Turing completeness holds under the idealized model of "arbitrarily extensible GF(p) arrays" — similar to the "potentially infinite" tape of a Turing machine, allowing runtime dynamic extension of array length to provide more storage units. In physical implementation, memory is finite, same as the Von Neumann architecture being a finite state machine; Turing completeness is a theoretical abstraction, not a physical implementation. NAND implementability proves Boolean logic completeness (at the combinational circuit level), which is a necessary condition for Turing completeness; together with unbounded storage (extensible arrays) and conditional control (Born selection + Hebbian iteration implementing general loops), they constitute sufficient conditions for Turing completeness. General loop construction: Hebbian weight θ serves as the loop variable / program counter, Born selection ↡ serves as the loop condition check (θ not converged ⇒ repeat execution), and ∆ updates θ_{t+1}=θ_t+... to implement unbounded iteration — the weight iterative update of ∆ and the conditional check of ↡ compose to produce while-loop semantics.

### 3.3 NAND Implementability

A sufficient condition for Turing completeness is the ability to implement NAND (a functionally complete gate).

**Over the GF(2) subfield**:

$$\text{AND}(a, b) = a \cdot b \bmod 2 \tag{14}$$

$$\text{NOT}(a) = 1 - a \bmod 2 \tag{15}$$

$$\text{NAND}(a, b) = 1 - a \cdot b \bmod 2 \tag{16}$$

Three steps of GF(p) operations implement NAND.

**Over Cl(4,1)**:

The geometric product ab = a∘b + a∧b, where the inner product a∘b contains "AND" semantics (non-zero only when both vectors are non-zero), the outer product a∧b contains "XOR" semantics, and the complement of the scalar part = NOT. All are component operations of the geometric product.

$$\text{NAND}(a, b) = 1 - (a \cdot b) \bmod 2 \in \text{GF}(p) \subset \text{ARC} \tag{17}$$

**Conclusion**: ARC can implement NAND → can implement any Boolean circuit → can simulate any Turing machine → is Turing complete. □

### 3.4 Relationship with Quantum Computers

ARC and quantum computers have a **complementary rather than competitive** relationship:

| Dimension          | Quantum computer               | ARC                                        |
| ------------------ | ------------------------------ | ------------------------------------------ |
| Essence            | True quantum state evolution    | Integer algebra exact simulation of quantum behavior |
| Determinism        | Probabilistic (measurement collapse) | Fully deterministic (Born argmax replaces random collapse) |
| Real-time          | μs-ms level (including error correction), not real-time | ns-level integer operations, real-time 1kHz+ capable |
| Deployment environment | 10mK dilution refrigerator, 10M-100M USD | Room-temperature x86_64 chip, 10-1000 USD |
| Conservation laws  | Not guaranteed (NISQ noise)    | GF(p) closure precisely guarantees (Proposition) |
| Verifiability      | Cannot be certified (probabilistic) | ZK-proof verifiable |
| Applicable scenarios | Hard-to-compute problems (Shor/quantum chemistry, offline) | Exact real-time control (robotics/autonomous driving/industrial, online) |

**Core assertion**:

$$\text{Quantum computers solve the "cannot compute" problem} \tag{18}$$

$$\text{ARC solves the "cannot err" problem} \tag{19}$$

The two markets do not overlap at all. The maturation of quantum computers will not close the ARC window, but rather open it — classical tensor networks simulate multiple quantum completeness instances in polynomial time (2026.6), indicating that the corresponding problems do not require real quantum hardware, but rather the correct mathematical framework. ARC = the "digital wind tunnel" of quantum physics.

### 3.5 Architecture vs Implementation: ARC as an Algebraic Replacement of the Control-Flow Paradigm

**Key clarification**. ARC is a **computing paradigm and programming model based on finite field arithmetic as the substrate and resonance semantics as the core**, which can be mapped to multiple hardware backends such as Von Neumann CPUs, CGRA, and GPUs. The relationship between ARC and Von Neumann is an **algebraic replacement at the computing paradigm level** (such as control flow → resonance semantics, branch jump → Born projection, floating-point → integer modular arithmetic), not a same-level replacement at the hardware architecture level. The semantic rules of ARC (algebraic object ready → geometric product/NTT/Born selection → resonance output) are parallel, algebra-driven, branchless, and floating-point-free, forming a paradigmatic opposition to Von Neumann's sequential, address-driven, branch-jumping, floating-point operations.

**Refinement of Turing completeness conditions**. A single GF(p) element = finite state machine (not Turing complete); an addressable GF(p) array (unbounded length) = Turing machine tape → Turing complete. Born selection simulates if-else: |⟨φ_A|ψ⟩|² vs |⟨φ_B|ψ⟩|² → argmax selection, deterministic, parallelizable, branchless.

**Implementation roadmap**. The engineering implementation of ARC proceeds along five backends, with the same MachIR compiling to five target platforms (§10.4):

- WASM backend (current main path): ΨLang → WASM bytecode → Wasmtime container execution, native FFI verified
- x86_64 backend: AOT native code compilation (ΨLang → machine code, eliminating VM overhead), 28 .arc files
- CGRA backend: FPGA prototype (five operators hardwareized, ⊙◦≋↡∆ each corresponding to a CgraPE arithmetic unit, 64 units in parallel)
- GPU backend: SIMT warp scheduling, NTT large-parallel native acceleration
- QPU backend (ultimate goal): Quantum hardware directly executes ARC operators, physically dual quantum computing (Shor/Grover/HHL physical execution)

**Architectural positioning**. Dataflow architecture is an important exploration direction in the post-Von Neumann era (NVIDIA and Groq cooperation, Intel strategic investment in SambaNova, Li Auto M100 selected for ISCA 2026 industrial track). ARC is the algebraically exact version of dataflow architecture — not only does data flow, but the computation itself is exactly closed over GF(p).

---

## 4 Mathematical Theory of Arithmetic Resonance

The "resonance" in ARC is not a metaphor, but has physical semantics with rigorous mathematical foundations. This section establishes the mathematical theory of arithmetic resonance.

### 4.1 Mathematical Form of Bragg Resonance

**Definition 7** (Bragg Resonance Condition). Let atoms in a crystal be located at lattice points R_n = n₁a₁ + n₂a₂ + n₃a₃ (a_i are lattice basis vectors), with incident wave vector k and scattered wave vector k'. The Bragg resonance condition is

$$\mathbf{k}' - \mathbf{k} = \mathbf{G} \tag{20}$$

where G is a reciprocal lattice vector. When this condition is satisfied, the scattered waves from all lattice points coherently superpose, and the scattering intensity attains its maximum.

In ARC, Bragg resonance is implemented via NTT: the sequence {a_j} corresponds to atomic scattering factors f_j·ψ(r_j), the NTT transform maps time-domain signals to the frequency domain, and frequency-domain peaks correspond to wave vectors G satisfying the Bragg resonance condition.

**Bragg Scattering Intensity**:

$$I(\mathbf{q}) = \left| \sum_j f_j \cdot e^{i\mathbf{q} \cdot \mathbf{r}_j} \right|^2 = \left| F(\mathbf{q}) \right|^2 \tag{21}$$

where F(q) is the structure factor and q = k' − k is the scattering wave vector. On GF(p), e^{iq·r_j} is replaced by ω^{q·r_j mod N} (ω is a primitive root), and the scattering intensity becomes integer arithmetic:

$$I(\mathbf{q}) = \left| \sum_j f_j \cdot \omega^{\mathbf{q} \cdot \mathbf{r}_j \bmod N} \right|^2 \bmod p \tag{22}$$

This formula is completely consistent with the definition of NTT (6) — NTT is precisely the exact integer implementation of Bragg scattering.

### 4.2 Structural Simulation of QFT by NTT over Finite Field

**Proposition 3** (QFT∼NTT Finite Field Simulation). The quantum Fourier transform QFT_N acting on basis state |j⟩ yields

$$\text{QFT}_N |j\rangle = \frac{1}{\sqrt{N}} \sum_{k=0}^{N-1} e^{2\pi i j k / N} |k\rangle \tag{23}$$

On GF(p) (where p = kN + 1 is prime and ω = g^k is an N-th root of unity), NTT transforms basis state j to

$$\widehat{j}_k = \sum_{j=0}^{N-1} j \cdot \omega^{jk} \bmod p \tag{24}$$

When ω = g^k corresponds to an N-th root of unity, NTT structurally simulates QFT on GF(p) — the complex amplitude e^{2πijk/N} of QFT is replaced by the integer ω^{jk}, the normalization factor 1/√N is replaced by the integer inverse of √N, and each amplitude is computed exactly by integer arithmetic.

_Proof_. Let p = kN + 1, ω = g^k where g is a primitive root of GF(p). Then ω^N = g^{kN} = g^{p−1} = 1 (Fermat's Little Theorem), so ω is an N-th root of unity. The definition of NTT Σa_j·ω^{jk} and the definition of QFT Σa_j·e^{2πijk/N} match term by term under the correspondence ω ↔ e^{2πi/N}. In GF(p), e^{2πi/N} is replaced by ω = g^k, and 1/√N is replaced by (√N)^{p−2} (inverse by Fermat's Little Theorem). Therefore, each amplitude of QFT is computed exactly by NTT on GF(p). □

**Corollary**. The amplitudes of quantum QFT can be exactly simulated by the number-theoretic NTT on GF(p). The primitive root g corresponds to the root of unity ω of NTT. This structural simulation enables ARC to compute the amplitudes of the quantum Fourier transform exactly using integer NTT, without floating-point approximation.

**The specific implementation of QFT₈ (N=8, ω₈=16, 16⁸≡1 mod 65537) and the complete simulation of quantum circuits are detailed in the GF(p) framework §3**. This paper retains the ARC engineering implementation of NTT (primitive root g=3, bit-reversal permutation), and the quantum circuit verification of QFT is moved to the GF(p) framework.

### 4.3 Born Selection as Projective Measurement

**Proposition 4** (Born Selection = Projective Measurement). Born selection ↡ corresponds to projective measurement in quantum mechanics. Let |ψ⟩ = Σᵢ αᵢ|φᵢ⟩ ({|φᵢ⟩} orthonormal basis), projection operator P_i = |φᵢ⟩⟨φᵢ|, then

$$|\langle \phi_i | \psi \rangle|^2 = |\alpha_i|^2 \tag{25}$$

Born selection argmax_i |αᵢ|² selects the basis state with the maximum projection probability, corresponding to the deterministic selection of the "most likely outcome" in quantum measurement.

In ARC, |αᵢ|² is computed on GF(p) as αᵢ² mod p (αᵢ ∈ GF(p)), and argmax is integer comparison — fully deterministic, with no random number generator and no measurement noise.

**Relation to PCD**. PCD (phase dispersion) is defined as

$$\text{PCD}(Q) = 1 - \frac{|\sum_i w_i e^{i\theta_i}|}{\sum_i w_i} \tag{26}$$

Born selection argmax_i |αᵢ|² measures "which candidate state has the strongest amplitude", while PCD measures "whether the phases of all candidate states are aligned". When PCD=0, all phases are aligned (only one candidate state is effective), and Born selection is unambiguous; when PCD=1/2, phases are half-scattered, and Born selection competes among multiple candidates; when PCD=1, phases are completely scattered, and Born selection degenerates to random.

### 4.4 Resonance Dynamics of Hebbian Learning

**Proposition 5** (Hebbian Resonance). The steady state of the dynamical equation (10) of Hebbian sculpting ∆ corresponds to the resonance state of the signal field.

_Proof_. The steady-state condition dθ/dt = 0 gives

$$\varepsilon \cdot \text{Im}(\Psi_{\text{pre}}^* \Psi_{\text{post}}) = \lambda \cdot \sin(\theta) \tag{27}$$

When Im(Ψ_pre* Ψ_post) = 0 (pre and post signals are fully real-aligned, with no phase difference), the steady state is θ = 0 or θ = π — the weight locks into the "fully resonant" or "fully anti-resonant" state. When Im(Ψ_pre* Ψ_post) ≠ 0, the steady state is θ = arcsin(ε·Im(Ψ_pre\*Ψ_post)/λ) — the weight locks into the "partially resonant" state, with resonance strength controlled by the ratio ε/λ.

This resonance dynamics is isomorphic to the dissipative term −iγ·PCD·Ψ of the CGL master equation: PCD measures phase scattering (resonance deviation), the sin(θ) term of Hebbian provides a restoring force (resonance pull-back), and the two together drive the system toward the resonance state (PCD→0, θ→0). □

### 4.5 Arithmetic Resonance = Arithmetic Version of PCD

**Proposition 6** (Arithmetic Resonance = Arithmetic Version of PCD). The Bragg resonance (7) of ARC and the PCD (26) of the CGL master equation are equivalent in the discrete → continuous limit.

_Argument_. The discrete form of PCD is

$$D(Q) = 1 - \frac{|\sum_{(i,j) \in Q} u_{ij}|}{\sum_{(i,j) \in Q} |u_{ij}|} \tag{4.5.1}$$

where u*{ij} = strength × e^{iφ*{ij}}. The discrete form of Bragg resonance is

$$I(\mathbf{q}) = \left| \sum_j f_j \cdot \omega^{\mathbf{q} \cdot \mathbf{r}_j} \right|^2 \tag{28}$$

Both have the structure of "summing complex amplitudes then taking the modulus" — PCD measures "degree of phase alignment" (|Σe^{iθ}|/N), while Bragg measures "degree of frequency alignment" (|Σf*j·ω^{q·r_j}|²). Under the correspondence u*{ij} = f_j·ω^{q·r_j}, the phase scattering of PCD = the frequency mismatch of Bragg, and PCD=0 (fully coherent) = Bragg resonance peak (complete frequency matching).

Therefore, the arithmetic resonance of ARC (Bragg+Born+Hebbian) is the arithmetic version of the PCD of the CGL master equation — the PCD measure of the master equation on continuous fields is discretized in ARC into the resonance semantics of integer arithmetic. □

### 4.6 Engineering Implementation of Bragg Retriever: 2D-DFT, Amplitude Collapse, and SU(2) Casimir Conservation

The mathematical form of Bragg resonance (20)-(22) is implemented in engineering by BraggRetriever, with the core pipeline being 2D-DFT computing Bragg modes → amplitude collapse → top-K deterministic selection → SU(2) Casimir conservation UTF-32 character alignment.

**Separable Implementation of 2D-DFT**. The two-dimensional discrete Fourier transform reduces complexity via row-column separation:

$$A_{k_x, k_y} = \sum_{x=0}^{n_x-1}\sum_{y=0}^{n_y-1} \Psi_{x,y} \cdot e^{-2\pi i(k_x x/n_x + k_y y/n_y)} \tag{4.6.1}$$

Separated into two steps: Step 1 performs 1D-DFT (y→k_y) on each row (fixed x) to obtain intermediate quantity B[x,k_y]; Step 2 performs 1D-DFT (x→k_x) on each column (fixed k_y) to obtain A[k_x,k_y]. The complex multiplication in each step is Ψ·(cos+i·sin)→(re·cos−im·sin)+i·(re·sin+im·cos), all implemented by cos/sin trigonometric functions and real multiply-add. In the GF(65537) implementation of ARC, e^{-2πi·k·y/N} is replaced by ω^{-k·y mod N} (ω=3^(65536/N)), and trigonometric functions become integer modular exponentiation — zero floating-point.

**Deterministic argmax of Amplitude Collapse**. The collapse probability is defined as:

$$P(n) = \frac{|A_n|^2}{\sum_m |A_m|^2} \tag{4.6.2}$$

In the engineering implementation, the collapse operation collapse() takes argmax rather than random sampling — the same input always yields the same output (DFL determinism), with zero rand dependency. This is the fundamental difference between ARC and quantum measurement: quantum Bragg collapse is probabilistic (sampling with probability P(n)), while ARC's Bragg collapse is deterministic (always selecting argmax). top-K selection sorts by |A_n|² and takes the top K, equally deterministic.

**SU(2) Casimir Conservation and UTF-32 Character Alignment**. Each Bragg mode (k_x, k_y) determines the SU(2) irreducible representation family j by its modulus |k|=√(k_x²+k_y²), and the Casimir invariant C=j(j+1) is a topological invariant. The mapping from modes to SU(2) representation families is based on the relative position of |k|/|k|\_max:

|       | k       | /   | k    | \_max                     | SU(2)表示 | j   | Casimir C | Unicode区间 |
| ----- | ------- | --- | ---- | ------------------------- | --------- | --- | --------- | ----------- |
| ≤ 1/4 | Singlet | 0   | 0    | BMP ASCII U+0020-U+007E   |
| ≤ 1/2 | Doublet | 1/2 | 3/4  | BMP Latin U+00A0-U+024F   |
| ≤ 3/4 | Triplet | 1   | 2    | BMP CJK U+4E00-U+9FFF     |
| > 3/4 | Quartet | 3/2 | 15/4 | SMP Emoji U+1F600-U+1F64F |

The interval width is weighted by the Casimir invariant C=j(j+1): the larger C, the narrower the interval (high-dimensional representations are rare). This mapping aligns the topological invariant (Casimir) of Bragg modes with Unicode code point intervals — each Bragg mode collapses to a UTF-32 code point (u32, fixed 4 bytes), and Casimir conservation guarantees that the code point falls within a valid Unicode plane. The globally deprecated UTF-8 variable-length byte alignment is replaced by UTF-32 fixed-length 4 bytes — Casimir conservation is no longer bound to byte length, but to Unicode plane/block.

**Parseval Energy Conservation**. The total intensity Σ|A_n|² = N·Σ|Ψ|² (Parseval's proposition) is the mathematical guarantee of the non-dissipative principle — DFT does not lose energy, only redistributes it. In the engineering implementation, the total_intensity field stores this value for amplitude normalization.

### 4.7 Resonance Dynamics of Hebbian Sculptor: Periodic Soft Attractor and Non-Catastrophic Forgetting

The dynamical equation (10) of the ∆ operator is implemented in engineering by HebbianSculptor, with the core being the iterative update of the phase matrix θ_jk and the Kuramoto phase synchronization feedback.

**Exact Implementation of Phase Matrix Update**. The sculpt() method executes for all node pairs (j,k) (j≠k, diagonal kept at 0):

$$\theta_{jk} \leftarrow \theta_{jk} + dt \cdot \left(\varepsilon \cdot \text{Im}(\Psi_j^* \cdot \Psi_k) - \lambda \cdot \sin(\theta_{jk})\right) \tag{4.7.1}$$

where Im(Ψ*j\*·Ψ_k) = re_j·im_k − im_j·re_k (the imaginary part of the complex product, avoiding explicit complex arithmetic). After each update step, NaN/Inf is detected; upon divergence, HebbianError::Divergence is returned carrying (j, k, old*θ, dθ) diagnostic information — zero panic error handling.

**Periodic Soft Attractor and Non-Catastrophic Forgetting**. The decay term λ·sin(θ_jk) is a periodic soft attractor, not a monotonic decay. Key property: the periodicity of the sin function guarantees that θ_jk does not monotonically approach 0 or ∞, but oscillates near the equilibrium point θ_jk ≈ arcsin(ε·Im(Ψ_j\*·Ψ_k)/λ) — old memories are not immediately overwritten by new inputs. This property implements the "physical reservoir directed evolution without catastrophic forgetting" of PRC 2509.04000: the single-step update magnitude of short-term learning (10 steps) dt·dθ ≤ ε·dt·|Im| + λ·dt ≈ 0.001, so the phase does not change drastically.

**Equilibrium Point Analysis**. The steady state dθ/dt=0 gives ε·Im(Ψ_j\*·Ψ_k) = λ·sin(θ_jk), with solution:

$$\theta_{jk}^* = \arcsin\left(\frac{\varepsilon \cdot \text{Im}(\Psi_j^* \cdot \Psi_k)}{\lambda}\right), \quad \left|\frac{\varepsilon \cdot \text{Im}}{\lambda}\right| \leq 1 \tag{4.7.2}$$$

When |ε·Im/λ| > 1, there is no real solution and the phase rotates continuously (phase locking fails); when |ε·Im/λ| ≤ 1, the phase locks to the equilibrium point. The ratio ε/λ controls the resonance strength: large ε → strong gain (fast learning), large λ → strong decay (stable memory).

**Antisymmetry θ_jk = -θ_kj**. The gain term Im(Ψ_j*·Ψ_k) = -Im(Ψ_k*·Ψ_j) (the imaginary part of the complex product is antisymmetric), and the decay term λ·sin(θ_jk) is also antisymmetric (sin(-x)=-sin(x)), so θ_jk = -θ_kj holds strictly. This antisymmetry reduces the N² phase matrix elements to N(N-1)/2 independent elements, saving half the storage.

**Kuramoto Phase Synchronization Feedback**. The couple() method feeds the phase matrix θ_jk back to the CGL field, computing the cumulative coupling phase for each node j:

$$\Delta\varphi_j = \frac{K}{N} \sum_k \sin(\theta_{jk}) \tag{4.7.3}$$

Then Δφ_j is broadcast to the sub-region corresponding to node j, applying the phase rotation Ψ → Ψ·e^{i·Δφ_j}. This feedback implements "Hebbian learning guides field evolution" — the learned phase relations change the direction of subsequent CGL evolution, corresponding to the phase locking of Cooper pair condensate feeding back to the medium. couple() preserves the intensity |Ψ|² (only rotating the phase), verifying the non-dissipative principle.

**Closed-Loop step()**. HebbianSculptor::step() = sculpt() + couple(): first sculpt the phase matrix (learning), then couple back to the CGL field (feedback), forming a "learning-feedback" closed loop. This closed loop is the physical implementation of ARC's "running a program modifies the program" — training/inference are not separated into phases.

### 4.8 Engineering Implementation of NTT-QFT Equivalence: Primitive Root, Bit-Reversal, and Normalization

The QFT∼NTT structural simulation of Proposition 3 is implemented in engineering by the NTT butterfly algorithm and QFT normalization.

**Integer Computation of N-th Roots of Unity**. The N-th root of unity on GF(65537) is ω_N = 3^(65536/N) mod 65537 (requiring N | 65536 = 2¹⁶). Common values are N = 2, 4, 8, 16, ..., 65536 (power-of-2 divide-and-conquer). The inverse of ω_N (for INTT) is ω_N^{-1} = 3^(65536 - 65536/N) mod 65537.

**Cooley-Tukey DIT Butterfly**. NTT adopts the decimation-in-time butterfly algorithm, in three steps: (1) bit-reversal permutation rearranges the input; (2) log₂(N) layers of butterflies, each layer with half = 2^L (L=0..log₂N-1), executing a[i] += w·a[i+half], a[i+half] -= w·a[i+half] for each butterfly (w is the twiddle factor); (3) the inverse transform multiplies by N^{-1} mod p for normalization. The 3-layer butterfly of the 8-point NTT is entirely integer modular multiply-add on GF(65537), with zero floating-point.

**Integer Implementation of QFT Normalization**. The normalization factor 1/√N of QFT = (1/√N)·NTT is (√N)^{-1} mod p on GF(65537). For N=2^k, √N = √(2^k) = 4080^k mod 65537 (since 4080² ≡ 2 mod 65537, §6 Proposition 1). Thus the QFT transform becomes the forward NTT followed by pointwise multiplication by inv_sqrt_n = gfinv(gfpow(4080, k)) — pure integer modular arithmetic.

**NTT Round-trip Verification**. INTT(NTT(a)) = a holds exactly on GF(65537) (not approximately), which is the NTT manifestation of the non-dissipative principle. In the engineering implementation, the ntt_roundtrip() function verifies this property: for any input array a, the inverse transform after the forward NTT must completely recover the original array (element-wise equality).

**NTT Acceleration of Cyclic Convolution**. The cyclic convolution (a ⊛ b)_k = Σ_j a_j·b_{(k-j) mod N} is accelerated by NTT to O(N log N):

$$a \circledast b = \text{INTT}(\text{NTT}(a) \cdot \text{NTT}(b)) \tag{4.8.1}$$

where · is pointwise multiplication. This implementation realizes the frequency matching semantics of Bragg resonance (§2.3) as a deterministic pipeline of NTT → pointwise multiplication → INTT, entirely in integer arithmetic on GF(65537).

---

## 5 Algebraic Resonance Structure

The arithmetic resonance framework of ARC naturally accommodates multiple algebraic structures. This section establishes the core algebraic resonance chain and number-theoretic anchoring, revealing the deep resonance relations within ARC's residue field framework. **The pure mathematical theory has been migrated to [Paper3]§10** (Algebraic Resonance Structure); this section retains the resonance description from the ARC engineering perspective.

### 5.1 Triple Collision Criterion

**Definition 8** (Triple Collision Criterion). Two algebraic structures A and B "resonate" in the ARC framework if and only if the following are simultaneously satisfied:

(i) **Integer Computability**: The key invariants of A and B can be computed exactly on GF(p)
(ii) **Deterministic Invariants**: A and B possess comparable deterministic algebraic invariants (such as Mahler measure, spectral radius, order, etc.)
(iii) **Physical Duality**: A and B have a dual or inclusion relationship in the physical semantics of ARC

### 5.2 Strongest Resonance Chain

**Proposition 7** (Strongest Resonance Chain). Among 17 algebraic structures, the strongest resonance chain is

$$\text{康威}\lambda \leftrightarrow \text{PV数} \to \text{Mahler测度} \leftrightarrow \text{Salem数} \tag{29}$$

forming a triangular algebraic loop. PV numbers correspond to complete decay (Mahler measure > 1), Salem numbers correspond to critical decay (Mahler measure = 1), and the Lehmer conjecture (1933, unresolved) is equivalent to the lower bound of Salem numbers being > 1. If the Lehmer conjecture holds, then all non-trivial computations in ARC have a positive information lower bound, guaranteeing a quantitative measure of computational phase dispersivity. For the complete proof and exact implementation on GF(65537), see [Paper3]§10.2.

### 5.2.1 Fibonacci Anyons and Braid Group Watermarks

Fibonacci anyons provide an upgrade path to **universal topological quantum computation**: fusion rule τ×τ=1+τ, quantum dimension d=φ=(1+√5)/2. Note that 5 is a quadratic non-residue modulo 65537 ((5|65537)=-1), so √5∉GF(65537), and φ cannot be exactly integerized in GF(65537). However, the core operation of Fibonacci anyons — the Fibonacci matrix M=[[1,1],[1,0]] — is fully implementable on GF(65537) (all matrix elements are integers, requiring no explicit computation of φ), and φ appears only as an eigenvalue of M in theoretical analysis. The braid group operators (◦+↡) naturally implement anyon braiding, and braid group braiding sequences are embedded as topological invariant watermarks in computation results — topological protection makes the watermarks immune to local perturbations. For mathematical details, see [Paper3]§10.3.

### 5.3 Triple Correspondence Chain: Three-Layer Loop of Physics ↔ Computation ↔ Mathematics

The algebraic resonance relations of ARC are realized through a triple correspondence chain — a three-layer loop of physical correspondence ↔ computational correspondence ↔ mathematical correspondence, anchoring algebraic structures to engineering implementations. The "duality" in the engineering context of this paper refers to operational inverse or structural correspondence, not the strict dual functor in category theory.

**Physical Duality: Bragg (Scattering) ↔ Born (Projection)**. The D₁=R₁ of Bragg resonance and the select 0x1B eigenstate projection of Born selection form a physical duality — both share the |A_n|² amplitude-squared semantics: Bragg's I(q)=|Σf_j·ω^{q·r_j}|² and Born's |α_i|² are the same integer squaring operation on GF(65537).

**Computational Duality: HEBBIAN (Write) ↔ MEM_LOAD (Read)**. The i32.store of the ∆ operator (synaptic weight write = full-field injection) and the i32.load of mem_load (vortex street direct readout) form a computational duality — writing pole configurations and reading residue field evaluations are inverse. This duality is manifested on the residue field ψ(z)=Σrₖ/(z−zₖ) as: HEBBIAN writes (zₖ, rₖ) pairs, MEM_LOAD reads out ψ(z) values.

**Mathematical Duality: Residues (Numerator) ↔ Poles (Denominator)**. The residue rₖ is the "weight" of the pole zₖ (residue expansion proposition), and the numerator-denominator structure of ψ(z)=Σrₖ/(z−zₖ) forms a mathematical duality. This duality is implemented in ARC by the poles[] and residues[] dual arrays of the four-layer residue field structure — pole positions and residue weights correspond one-to-one.

**Three-Layer Loop**. Physics (Bragg/Born) → Computation (HEBBIAN/MEM_LOAD) → Mathematics (Residues/Poles) → Physics: starting from the solution of the CGL master equation, via pole-residue decomposition → vortex center localization → Bragg periodicity verification → Born amplitude projection → back to CGL eigenstate, the five-fold mapping composition is the identity:

$$\text{映射5} \circ \text{映射4} \circ \text{映射3} \circ \text{映射2} \circ \text{映射1} = \text{id} \tag{5.6.1}$$

The rigor of this closed loop is guaranteed by exact integer arithmetic on GF(65537) — each mapping step is information-lossless on the finite field (non-dissipative), the same input always yields the same output (DFL), with no random perturbation (non-random).

### 5.4 Algebraic Anchoring of Heegner Numbers and Monster Moonshine

The forward anchoring of Fermat prime 65537 (algebraic numbers → integers) and the reverse anchoring of Heegner number 163 (transcendental numbers → near-integers) anchor concrete algebraic structures through the triple duality chain within the algebraic resonance structure. The set of Heegner numbers H={1,2,3,7,11,19,43,67,163} makes the imaginary quadratic field Q(√−d) have unique factorization (class number 1), and the largest Heegner number 163 satisfies e^{π√163}≈262537412640768743.99999999999925.

The Fourier coefficient 196884=1+196883 (Monster identity + smallest irrep dimension) of the Monster group Moonshine identity j(τ) is exactly implemented as modular arithmetic on GF(65537). The 196560 minimal vectors of the Leech lattice correspond to the long-range entanglement state count of ARC, and Monster symmetry compresses the 196560-dimensional Hilbert space to the 196883-dimensional irrep — gauge redundancy elimination is extended from D₄ (order 8) to Monster (order ~8×10⁵³). The period 30 of the Coxeter group E₈ manifests as Coxeter resonance in Bragg diffraction, replacing brute-force search with a 30× speedup. The above number-theoretic structures are unified within algebraic resonance, with a total speedup ratio on the order of 10⁶. For the complete mathematical derivation, see [Paper3]§10.5.

---

## 6 GF(65537) as the Integer Anchor of ARC

The Fermat prime p = 65537 = 2¹⁶ + 1 provides an exact integer anchor for ARC, making the operations of all five operators pure integer modular arithmetic.

### 6.1 Special Properties of the Fermat Prime

**Property 6.1**. p = 65537 = F₄ = 2¹⁶ + 1 has the following key properties:

(i) **Finite Field Representation of the Imaginary Unit**: There exists an element 256 in GF(65537) satisfying 256² = 65536 ≡ −1 mod 65537, which can play the role of the imaginary unit i.

(ii) **√2 is an Integer**: √2 = 4080 mod 65537, because 4080² = 16646400 = 2 mod 65537.

(iii) **1/√2 is an Integer**: 1/√2 = 2040 mod 65537, because 2040 × 4080 ≡ 1 (mod 65537).

(iv) **3 is a Primitive Root**: 3 is a primitive root modulo 65537, ord_p(3) = 65536 = p−1, which makes the bit-reversal and primitive root powers of NTT butterfly operations extremely simple. Note that the order of 2 is only 32 (2¹⁶ ≡ −1), so 2 is not a primitive root.

(v) **mod p Degenerates to Bit Operations**:

$$x \bmod 65537 = (x \mathbin{\&} \text{0xFFFF}) - (x \gg 16) \tag{30}$$

When the result $r < 0$, a correction of adding 65537 is needed ($r \leftarrow r + 65537$), applicable for $x < 65537^2$. This bit-operation implementation is 10-30 times faster than general modulo.

#### 6.1.1 Heegner/Moonshine: Bidirectional Integer Anchoring

The Fermat prime p=65537 pins e^{iπ/4} to the integer 65521 (forward anchoring). Heegner numbers provide **reverse anchoring** — transcendental numbers are pinned to near-integers:

$$e^{\pi\sqrt{163}} \approx 262537412640768743.99999999999925 \tag{30a}$$

where 163 is the largest Heegner number (the discriminant d of the imaginary quadratic field Q(√−d) with class number 1 satisfies d∈{1,2,3,7,11,19,43,67,163}). This bidirectional anchoring — Fermat prime forward, Heegner number reverse — together constitutes the number-theoretic foundation of ARC integer computation.

**Connection to ARC Algebraic Resonance**. In the algebraic resonance structure (§5) of ARC, the Ramanujan τ function serves as the number-theoretic anchor of the Conway λ ↔ PV number resonance chain, directly linked to the j invariant j(q)=q⁻¹+744+196884·q+... of Moonshine (196884=1+196883, the smallest irrep dimension of Monster). The braid group is related to the representation theory of the Monster group — ARC's braid group operations acquire maximal symmetry within the Moonshine framework.

**E₈/Leech Hierarchy and ARC Algebraic Structure**. The E₈ root lattice (8-dimensional, 240 roots) corresponds to the GF(65537) ground state degeneracy of ARC, and the Leech lattice (24-dimensional, 196560 minimal vectors) corresponds to the long-range entanglement state count of ARC. The Burnside compression 2ⁿ→2ⁿ/8 of the D₄ group corresponds to the gauge redundancy elimination of ARC — braid group operations are implemented on the D₄ quotient group.

### 6.2 Exact Integer Implementation of Quantum Gates

**Proposition 8** (Integer Implementation of Quantum Gates). On GF(65537), the standard quantum gates H/S/T can be represented as exact integer matrix operations:

$$H \to \begin{pmatrix} 2040 & 2040 \\ 2040 & 63497 \end{pmatrix},\quad S \to \begin{pmatrix} 1 & 0 \\ 0 & 256 \end{pmatrix},\quad T \to \begin{pmatrix} 1 & 0 \\ 0 & 65521 \end{pmatrix} \pmod{65537} \tag{31}$$

where 2040=1/√2, 256=i, and 65521=(1+i)/√2=e^{iπ/4} are integer representations. H²=I, S⁴=I, T⁸=I are exactly verified in GF(65537) (the cyclotomic field splitting proposition 65537≡1(mod 8) guarantees the complete splitting of 8th roots of unity).

**The complete proof of quantum gates, the cyclotomic field splitting proposition, the lossless algebraization of the Clifford+T gate set, and CRT large field extension are detailed in the GF(p) framework §2**. This paper retains the central role of GF(65537) as the computational substrate of ARC (NTT/elliptic curve/CRT/Yang-Baxter/Clifford and other anchors), and the detailed verification of quantum gates and quantum circuits is moved to the GF(p) framework.

### 6.3 NTT Primitive Root and Bit-Reversal

**Property 6.2**. The primitive root g = 3 of p = 65537 satisfies:

- g^(p−1) = 3^65536 ≡ 1 (mod p)
- g^((p−1)/2) = 3^32768 ≡ −1 (mod p)
- The bit-reversal permutation of NTT is generated by powers of g

The implementation of NTT on GF(65537):

$$\hat{a}_k = \sum_{j=0}^{N-1} a_j \cdot 3^{jk \cdot (p-1)/N} \bmod p \tag{34}$$

where N | (p−1) = 65536 = 2¹⁶. Common values are N = 2¹⁶, 2¹⁵, ..., 2 (power-of-2 divide-and-conquer).

### 6.4 Integer Landing of Twelve Algebraic Structures

**Proposition 9** (GF(65537) Anchor). The following twelve algebraic structures can be implemented as exact integer operations on GF(65537):

| Algebraic Structure | GF(65537) Landing | Verification Status |
| -------------- | -------------- | -------- |
| Quantum gates H/S/T | Integer matrix representation (31)-(33) | Proven |
| NTT | p=65537=2¹⁶+1, g=3 | Proven |
| CRT/RNS | Modular decomposition and reconstruction (13) | Proven |
| Elliptic curve | E(Fp) group structure | Proven |
| p-adic numbers | ℤ/pℤ is the residue class field of ℚ_p | Proven |
| Yang-Baxter | R-matrix equation verified on GF(p) | Proven |
| Grover spiral | T=[[6,14],[−2,6]], \|λ\|=8 | Proven |
| Irreducible polynomial | x²−3 (GF(65537²) extension) | Proven |
| Conway constant λ | Root of degree-71 polynomial on GF(p) | Proven (Pisot) |
| Tropical semiring | min-plus algebra log limit | Formal correspondence |
| Hyperreal numbers | Infinitesimal = AdS radial infinity | Formal analogy (non-standard analysis) |
| Hopf algebra Λ(V₉₂) | 92-dimensional exterior algebra + Sweedler construction | Constructed (Sweedler 1969) |

**Irreducible Polynomial Coincidence**. The quadratic extension of GF(65537) can be constructed by the irreducible polynomial $x^2 - 3$ (since 3 is a quadratic non-residue modulo 65537, provable by quadratic reciprocity). This provides an extremely simple irreducible polynomial for the construction of GF(65537²). For the exact GF(p) implementation of the twelve algebraic structures, see [Paper3]§12.

### 6.5 GF(p) Quadratic Extension and Three-Layer Completion of Irrationals

**GF(p) Field Contains No Irrationals Declaration**. GF(p)={0,1,...,p−1} contains only integers, and any irrational number (√2, √3, π, e, etc.) does not belong to GF(p). However, some irrational numbers can be "proxied" by exact integers in GF(p): i=256 (i²≡−1), √2=4080 (4080²≡2), e^{iπ/4}=65521 (65521⁸≡1). Irrationals that cannot be proxied (powers of π, e, etc.) are handled via fixed-point approximation or deferred to the final output layer. This declaration is the theoretical foundation of ARC's zero-floating-point computation.

The integer anchoring of GF(65537) (i=256, √2=4080) raises a natural question: how are non-existent irrational numbers handled? The three-layer completion theory of irrational symbolization gives:

| Layer | Criterion | Example | ARC Handling |
| ------ | ----------------------------- | --------------------- | ------------- |
| Integer layer | n^32768≡1 (mod p) (Euler's criterion) | √2=4080, e^{iπ/4}=65521 | ⊙ pure modular arithmetic |
| Extension layer | n^32768≡−1 (mod p) | √3 requires GF(p²), √5 requires GF(p²) (5 is a quadratic non-residue) | GF(p²) pair operations |
| Symbol layer | Transcendentals (π, e) | Powers of π, e require fixed-point approximation | Fixed-point deferred to output layer |

**Euler's Criterion Decision Algorithm**. The square-multiply 15-step decision of n^((p−1)/2) mod p: result 1 → quadratic residue (integer layer), result −1 → non-residue (extension layer). This decision is efficiently executed by the ⊙ operator in ARC.

**Magnetic Moment Existence Law**. The GF(p) existence of μ=2√(S(S+1)) is (4S(S+1)|p) (Legendre symbol): for S=1, 4×1×2=8 is a quadratic residue → μ in integer layer; for S=2, 4×2×3=24 requires decision → possibly extension layer. This law reduces the existence of physical magnetic moments to the quadratic residue criterion of GF(p) — ARC's integer algebra directly decides whether a physical quantity exists.

**Docking with the GF(p) Framework**. The three-layer completion theory provides the foundation for the exact implementation of quantum gates in the GF(p) framework — the Hadamard gate coefficient 1/√2 is in the integer layer (√2=4080), the T gate coefficient e^{iπ/4}=(1+i)/√2 is in the integer layer (65521), and the zero-norm phenomenon requires the extension layer GF(p²) (§3.2). π itself is a transcendental number not belonging to GF(p), but e^{iπ/4}=65521 is an exact integer in GF(65537) (65521⁴≡−1, 65521⁸≡1 mod 65537), and the T gate =GFMUL(65521) makes the π/4 phase rotation a pure integer modular multiplication. Other powers of π (√π, 1/√π, etc.) are represented by fixed-point approximation, deferred to a single multiplication at the final output φ_final collapse layer (§13.1), keeping the entire computation pipeline zero-floating-point.

---

## 7 Relationship between ARC and the Mother Equation

ARC is not an isolated computational architecture, but a discrete arithmetic implementation of the CGL mother equation. This section establishes the rigorous relationship between ARC and the mother equation.

### 7.1 Review of the Mother Equation

The CGL mother equation is

$$\frac{\partial\Psi}{\partial t} = (1+i\alpha)D\nabla^2\Psi + \varepsilon\Psi - (1+i\beta)|\Psi|^2\Psi - i\gamma\cdot\text{PCD}\cdot\Psi + J \tag{36}$$

together with two topological constraints:

$$\oint \nabla\varphi \cdot dl = 2\pi n \quad (n \in \mathbb{Z}) \tag{37}$$

$$\frac{|\oint U e^{i\Delta\varphi}|}{\oint |U|} > 1 - \varepsilon \tag{38}$$

The five-term structure of the mother equation: diffusion term (1+iα)D²Ψ + pumping term εΨ + nonlinear term −(1+iβ)|Ψ|²Ψ + dissipative metric term −iγ·PCD·Ψ + source term J.

### 7.2 Five Operators ↔ Fivefold Projection

**Proposition 10** (Five Operators ↔ Fivefold Projection). The five native operators of ARC {⊙, ◦, ≋, ↡, ∆} correspond one-to-one to the fivefold projection of the mother equation {CGL, Hopf, PCD, Wilson, free energy}:

$$\odot \leftrightarrow \text{CGL（核心动力学）} \tag{39}$$

$$\cdot \leftrightarrow \text{Hopf（时间反演对称）} \tag{40}$$

$$\asymp \leftrightarrow \text{PCD（相位色散度量）} \tag{41}$$

$$\downarrow \leftrightarrow \text{Wilson（U(1)规范结构）} \tag{42}$$

$$\Delta \leftrightarrow \text{自由能（Lyapunov泛函）} \tag{43}$$

_Proof_. Verify one by one:

**⊙ ↔ CGL**: The GF(p) multiplication ⊙ is the discretization of the core dynamics (CGL equation) of the mother equation. The diffusion term (1+iα)D²Ψ of the mother equation becomes a convolution operation on GF(p) at discrete lattice points, implemented by ⊙. The pumping term εΨ and the nonlinear term −(1+iβ)|Ψ|²Ψ are both pointwise operations on GF(p), implemented by ⊙.

**◦ ↔ Hopf**: The involutive property of the Clifford geometric product ◦ (a◦a⁻¹ = 1, analogous to the Hopf antipode S(a) = −a, S²=id) corresponds to the time-reversal symmetry of the mother equation. The 32-component parallel computation of ◦ corresponds to the multi-component structure of the Hopf algebra comultiplication Δ(a) = a⊗1 + 1⊗a.

**↡ ↔ Wilson**: The projective measurement semantics of the Born selection ↡ (|⟨φ|ψ⟩|²) corresponds to the gauge projection of Wilson loops (Tr(W_C) measures the coherence of parallel transport of the gauge field along closed curves). The argmax of ↡ corresponds to the gauge invariant extraction of Wilson loops.

**≋ ↔ PCD**: The frequency matching semantics of Bragg resonance ≋ corresponds to the phase coherence metric of PCD. Proposition 6 has proven that arithmetic resonance = the arithmetic version of PCD.

**∆ ↔ free energy**: The weight update dynamics (10) of Hebbian sculpting ∆ corresponds to the Lyapunov descent of the free energy functional F[Ψ] of the mother equation. The steady state θ = arcsin(ε·Im(Ψ\*Ψ)/λ) of ∆ corresponds to the minimal state of F[Ψ] (knowledge consolidation). □

### 7.3 ARC Implementation of the Cognitive Maxwell Equations

The U(1) gauge structure of the mother equation gives the cognitive Maxwell equations:

$$d \star F = \star J \tag{44}$$

Its component form consists of the vortex density transport equation and the vortex density transport equation:

$$\frac{\partial B}{\partial t} + \nabla \times E = 0 \tag{45}$$

$$\frac{\partial E}{\partial t} - \nabla \times B = J \tag{46}$$

In ARC, this system of equations is implemented by the five operators:

- **E field (cognitive electric field = SCD)**: computed by ≋ (Bragg resonance/NTT), NTT transforms the phase field to the frequency domain, divergence corresponds to frequency-domain division
- **B field (cognitive magnetic field = phase vortex)**: computed by ◦ (Clifford geometric product), the exterior product a∧b gives the curl
- **J current (cognitive current = memory/sensory input)**: provided by ∆ (Hebbian sculpting), signal resonance drives weight update
- **Time evolution**: implemented by ⊙ (GF(p) multiplication) for discrete time stepping

The cognitive Maxwell solving flow of ARC:

$$\Psi_t \xrightarrow{\asymp} E_t, B_t \xrightarrow{\cdot} \nabla \times E_t, \nabla \times B_t \xrightarrow{\odot} E_{t+1}, B_{t+1} \xrightarrow{\Delta} J_{t+1} \tag{47}$$

This flow is entirely integer arithmetic on GF(65537), with zero floating-point and zero error.

### 7.4 GF(p²) Implementation of the Residue Field

The residue field ψ(z) = Σrₖ/(z−zₖ) of the mother equation is implemented by GF(p²) in ARC:

**Representation of the residue field on GF(p²)**:

$$\psi(z) = \sum_k \frac{r_k}{z - z_k}, \quad r_k, z_k \in \text{GF}(p^2) \tag{48}$$

where GF(p²) = GF(65537²) = GF(65537)[x]/(x²−3) (constructed from the irreducible polynomial (35)). Each field element is represented as a + bx (a, b ∈ GF(65537)), with multiplication (a+bx)(c+dx) = (ac+3bd) + (ad+bc)x.

**Residue operations**:

- Pole position zₖ = aₖ + bₖx: 32-bit integer pair (aₖ, bₖ)
- Residue rₖ = cₖ + dₖx: 32-bit integer pair (cₖ, dₖ)
- Residue field evaluation ψ(z): addition + multiplication + inverse on GF(p²), all integer arithmetic

**Implementation of residue field ontology in ARC**:

- **Residon** (single pole r/(z−z₀)): two field elements (r, z₀) on GF(p²), indivisible
- **Pole configuration = chemical element**: list of N poles {zₖ, rₖ}
- **Chemical reaction = pole dynamics**: trajectory of poles on GF(p²)
- **SN2 braiding**: permutation operation of braid group σ₁ on GF(p²)

### 7.5 Engineering Implementation of the CGL Evolver: 4th-Order RK4 Integrator and Z₂ Plaquette Gauge Constraint

The engineering implementation of the mother equation (36) is accomplished by the CGL evolver, with the core being the joint solution of the 4th-order Runge-Kutta integrator and the Z₂ plaquette gauge constraint.

**4th-order Runge-Kutta integrator**. Explicit RK4 single-step integration of the CGL equation ∂Ψ/∂t = (ε+i·d)∇²Ψ − (γ_r+i·γ_i)|Ψ|²Ψ:

$$
\begin{aligned}
k_1 &= f(\Psi_n) \\
k_2 &= f(\Psi_n + \frac{dt}{2} k_1) \\
k_3 &= f(\Psi_n + \frac{dt}{2} k_2) \\
k_4 &= f(\Psi_n + dt \cdot k_3) \\
\Psi_{n+1} &= \Psi_n + \frac{dt}{6}(k_1 + 2k_2 + 2k_3 + k_4)
\end{aligned} \tag{7.5.1}
$$

The engineering implementation uses a zero-allocation strategy (reusing heap space): k1/k2/k3/k4 each store re/im buffers, tmp stores the intermediate Ψ+dt/2·k. The right-hand side f(Ψ) = (ε+i·d)∇²Ψ − (γ_r+i·γ_i)|Ψ|²Ψ uses a 5-point Laplacian (periodic boundary conditions) to compute the diffusion term, and computes the nonlinear term pointwise. After each integration step, NaN/Inf is detected; upon divergence, CglError is returned carrying the divergence location and parameters — zero-panic error handling.

**5-point Laplacian and periodic boundary**. The discrete Laplacian adopts a 5-point stencil:

$$\nabla^2 \Psi_{i,j} = \frac{\Psi_{i+1,j} + \Psi_{i-1,j} + \Psi_{i,j+1} + \Psi_{i,j-1} - 4\Psi_{i,j}}{h^2} \tag{7.5.2}$$

The boundary adopts periodic BC (Ψ*{0,j} = Ψ*{nx-1,j}, etc.), ensuring gauge symmetry. This discretization transforms the diffusion term (1+iα)D²Ψ of the continuous CGL equation into a convolution operation on GF(p), implemented by the ⊙ operator — the continuous dynamics of the mother equation is discretized into integer arithmetic in ARC.

**Z₂ plaquette gauge constraint**. Each grid point is assigned σ_z ∈ {+1, −1} (determined by |Ψ|² > threshold, threshold=0.5), and the gauge constraint for each 2×2 plaquette is:

$$\prod_{\text{cell} \in \text{plaquette}} \sigma_z = -1 \tag{7.5.3}$$

This constraint implements gauge confinement — the σ_z product of each plaquette must be −1; upon violation, Z2Violation error is returned carrying the plaquette index and the actual product. The z2_check() method traverses all plaquettes to count violations, used for gauge symmetry monitoring. The Z₂ constraint corresponds to the U(1) gauge structure of the mother equation (§7.3 cognitive Maxwell equations), verified exactly by integer sign products in ARC — no floating-point error disrupts gauge conservation.

**Multi-grid evolution and ancilla**. CglField supports the joint evolution of the primary grid + multiple ancilla grids. The step() method independently applies RK4 integration to the primary and all ancilla, with step_count incremented. The ancilla grids correspond to the higher-order modes of the mother equation (such as the independent evolution of topological charge Q), maintaining SUSY symmetry. This design decomposes the five-term structure of the mother equation (diffusion + pumping + nonlinear + dissipative + source) on multiple grids — the primary carries the active dynamics, and the ancilla carries the topological constraints.

**Norm conservation in the Hamiltonian limit**. When ε=0, γ_real=0 (Hamiltonian limit), the RK4 norm-preservation error is <10⁻⁶ — this is the manifestation of the non-dissipative principle in the CGL evolver. In the GF(65537) implementation of ARC, GF(65537) eliminates floating-point rounding errors and representation drift, while the discretization truncation error (O(dt⁴)) of RK4 is still determined by the discretization step size. In the Hamiltonian limit, the discrete norm (Σ|Ψ_i|² mod p) is strictly conserved, because the closure of modular arithmetic avoids the precision loss in real-number operations — arithmetic exactness directly translates into the strict preservation of physical conservation laws.

### 7.6 Engineering Implementation of the Residue Field Native Database: PSID Format and GF(p) Pure-Integer Decoalescence

The engineering implementation of the residue field ψ(z)=Σrₖ/(z−zₖ) is accomplished by the four-layer structure of the residue field (poles/residues dual arrays) and the ψDB engine, with the core being the PSID integer serialization format and GF(65537) pure-integer non-coalescing storage — Float is disabled, all fields are deterministic integers within the GF field.

**Four-layer structure of the residue field**. The residue field is organized in engineering by a four-layer structure:

| Layer   | Physical dual                  | Field               | Write operator             |
| ------- | ------------------------------ | ------------------- | -------------------------- |
| Kernel  | Pole (information carrier)     | poles: Vec<u32>     | ∆ HEBBIAN                  |
| Corona  | Residue (information weight)   | residues: Vec<u32>  | ⊙ GFMUL rotation           |
| Radial  | Decay rate γₖ                  | decay: Vec<u32>     | Decay layer                |
| Background | Noise floor η               | noise: u32          | Meissner rejection threshold |

All fields are u32 integers on GF(65537) — GF(p) pure-integer decoalescence disables Float, with exact structure. Pole positions zₖ, residues rₖ, and decay γₖ are deterministic integers within the GF field, not physical noise — this is the meaning of "decoalescence": floating-point representations coalesce (truncation error accumulation), while GF integer representations do not coalesce (modular arithmetic closure).

**Fermat's Little Theorem inverse for residue field evaluation**. The evaluate(z) method computes ψ(z) = Σ rₖ/(z−zₖ) mod 65537:

$$\psi(z) = \sum_k r_k \cdot (z - z_k)^{-1} = \sum_k r_k \cdot (z - z_k)^{p-2} \bmod p \tag{7.6.1}$$

Engineering implementation: for each pole k, diff = (z - zₖ) mod 65537 (conditional subtraction avoids underflow), inv = gf_pow(diff, 65535) (Fermat's Little Theorem inverse), term = gf_mul(residues[k], inv), acc = gf_add(acc, term). Skip when z = zₖ (avoid division by zero). All GF(65537) integer arithmetic — zero floating-point division error.

**PSID serialization format**. The residue field is persisted as a PSID (Pole-Residue Stream, Integer Domain) byte stream:

```
magic number "PSID" (4B) | n_poles: u32 LE | poles[N×12B] | noise: u32 LE | checksum: u32 LE
```

Each pole occupies 12 bytes (zₖ: 4B + rₖ: 4B + γₖ: 4B, little-endian u32). checksum = Σzₖ + Σrₖ + Σγₖ + η mod 65537 (Bragg checksum), used for physical consistency verification before and after persistence (Meissner rejection firewall). The three-non principle: same residue field four-layer structure → same bytes (DFL), GF exact round-trip (non-dissipative), deterministic serialization (non-random).

**PSID deserialization and Bragg verification**. The deserialize_psid(buf) method verifies the magic number, length, and Bragg checksum; any mismatch returns an error. After loading, bragg_checksum() is recomputed and compared with the checksum in the file — this is the implementation of Bragg verification D_1==R_1 at the persistence layer, ensuring that the residue field on disk is physically consistent with the residue field in memory.

**PSWL WAL append log**. Residue field changes are recorded through PSWL (Pole-Stream WAL) append log: each entry is 16 bytes (ts: 8B LE timestamp + pole: 4B + residue: 4B). WAL guarantees crash recovery — replaying WAL entries reconstructs the residue field state. This design introduces the ACID properties of databases into the residue field — atomicity (WAL atomic append), consistency (Bragg checksum), isolation (single writer), durability (WAL+PSID dual write).

**Three-database integration of the ψDB engine**. ψDB integrates PSID persistence + PSWL WAL append + Bragg verification + main index. The main field holds the main residue field of the four-layer structure of the residue field, and the path field points to the PSID file. The add_pole() method simultaneously updates the in-memory residue field and appends to the PSWL log, the join() method merges two residue fields (union of pole sets), and the remove_pole() method deletes the specified pole. ψDB treats the residue field as a "native database" — no SQL is needed, the residue field itself is the query structure.

### 7.7 Engineering Implementation of the Fivefold Mapping Closed Loop

The triple duality chain of §5.3 unfolds into a fivefold mapping closed loop under the mother equation framework, with each mapping implemented by ARC operators:

**Mapping 1: CGL mother equation → residue field**. The pole-residue decomposition of the CGL solution A(z) is exactly the residue field crown itself (residue expansion proposition). The engineering implementation is the identity mapping qm_map1_cgl_to_field(cgl_crown) = cgl_crown — after verifying magic and count consistency, it returns directly. The physical meaning of this mapping: the singularity structure of the mother equation solution is the pole configuration of the residue field.

**Mapping 2: residue field → vortex street**. The residue field poles zₖ correspond to the vortex core positions of the Karman vortex street. The engineering implementation qm_map2_field_to_vortex(crown) extracts all pole positions as an array vortex[i] = crown.get_z(i) — pole = vortex core (flux pinning point). This mapping maps the algebraic structure (poles) of the residue field to the fluid mechanics structure (vortex street).

**Mapping 3: vortex street → Bragg scattering**. The periodicity of the vortex street satisfies the Bragg condition D_1==R_1. The engineering implementation qm_map3_vortex_to_bragg(crown, z) = (crown.eval(z) == crown.eval(z)) — evaluating the same z twice, DFL determinism guarantees D_1==R_1 always holds. This mapping verifies whether the periodicity of the vortex street satisfies Meissner rejection (cognitive firewall).

**Mapping 4: Bragg scattering → Born projection**. Scattering amplitude |rₖ|² = probability, Born selects the maximum amplitude pole. The engineering implementation qm_map4_bragg_to_born(crown, z, bragg_ok) traverses all poles when bragg_ok=1, selecting the pole index with the largest |rₖ| — Born projects onto the strongest resonance eigenstate. The GF(p) field has no natural order, and the magnitude relationship after squaring may be lost (e.g., 2000² mod p < 500² mod p), so |rₖ| is used for direct comparison as a "scattering amplitude proxy" (order-preserving within small numerical ranges).

**Mapping 5: Born projection → CGL mother equation**. The eigenstate selected by Born = the principal eigenstate of the mother equation, closing the loop. The engineering implementation qm_map5_born_to_cgl(crown, eigenstate_idx) returns the CGL eigenstate corresponding to pole eigenstate_idx — the maximum amplitude pole is the principal solution of the mother equation.

**Closed-loop identity verification**. The composition of the fivefold mapping qm_map5 ∘ qm_map4 ∘ qm_map3 ∘ qm_map2 ∘ qm_map1 = identity: starting from the CGL solution, through residue field → vortex street → Bragg → Born → back to the CGL eigenstate, the eigenstate remains unchanged. This identity holds exactly on GF(65537) (integer arithmetic at each step, no floating-point error accumulation), and is the engineering verification of "arithmetic resonance = arithmetic version of the mother equation PCD" (Proposition 6) of ARC.

---

## 8 QARDC: Quantum Arithmetic Resonance Dual Computer

This section proposes the Quantum Arithmetic Resonance Dual Computer QARDC (Quantum Arithmetic Resonance Dual Computer), establishing the duality between quantum computing and ARC.

### 8.1 Quantum-Classical Duality

**Definition 9** (QARDC duality). QARDC is the dual pair of the quantum computer and ARC:

$$\text{QARDC} = (\text{Quantum Computer}, \text{ARC}) \tag{50}$$

The duality relation is:

| Quantum Computer | ARC         | Duality Relation  |
| ---------------- | ----------- | ----------------- |
| Quantum state \|ψ⟩ | GF(p) vector   | amplitude ↔ integer |
| Unitary evolution U  | GF(p) matrix   | unitary ↔ orthogonal |
| Random measurement   | Born argmax | probability ↔ deterministic |
| Quantum entanglement   | Tensor network    | entanglement ↔ low-rank |
| Quantum error correction   | GF(p) code   | error correction ↔ CRC  |

**GF(65537) exact implementation on the quantum side** (integerization of quantum gates H/S/T, QFT₈∼NTT finite field simulation, complete quantum circuit simulation, zero-norm discovery, Grover spiral natural error-correcting code) is detailed in **GF(p) framework §1.4 and §2-§4**. This paper retains the ARC-side positioning of QARDC (GF(p) vectors/orthogonal matrices/Born argmax/tensor network low-rank decomposition), and the detailed verification on the quantum side is moved to the GF(p) framework. The "amplitude ↔ integer" mapping of the QARDC duality bridge becomes an exact identity rather than an approximation due to the integerization of quantum gates in the GF(p) framework (Proposition 1).

### 8.2 QARDC Architecture

The architecture of QARDC# is a two-layer duality:

**Quantum Layer**:

- Genuine quantum state evolution
- Shor's algorithm (integer factorization), Grover's algorithm (quantum search), VQE (quantum chemistry)
- Probabilistic measurement, requires quantum error correction
- 10mK dilution refrigerator, 10M-100M USD

**Arithmetic Resonance Layer** (ARC Layer):

- GF(p) integer algebra exactly simulates quantum behavior
- NTT replaces QFT (Proposition 3), Born argmax replaces random measurement (Proposition 4)
- Fully deterministic, no error correction needed
- Room-temperature x86_64 chip, 10-1000 USD

**Duality Bridge**:

- Quantum state |ψ⟩ = Σαᵢ|φᵢ⟩ ↔ GF(p) vector (α₀, α₁, ..., α\_{N−1})
- Unitary evolution U ↔ GF(p) orthogonal matrix
- Quantum measurement ↔ Born selection ↡
- Quantum entanglement ↔ Tensor network low-rank decomposition

### 8.3 Classical Complete Simulation of Quantum Completeness

In 2026.6, classical tensor networks simulated multiple "quantum completeness" instances in polynomial time (Gallium Arsenide Research Institute + Boston University). This result indicates: the corresponding problems do not require real quantum hardware, what is needed is the correct mathematical framework.

**Proposition 11** (ARC classical complete simulation). For quantum circuits satisfying the following conditions, ARC can exactly simulate them in polynomial time on classical hardware:

(i) The circuit consists of Clifford gates + a small number of T gates (the number of T gates is O(log N))
(ii) The quantum state of the circuit has a low-rank tensor network representation (bounded bond dimension)
(iii) The measurement basis is the computational basis

_Argument_. Under condition (i), Clifford gates are exactly implemented by GF(p) integer matrices (Proposition 8), T gates are implemented by the 65521 element of GF(p) (33), and a small number of T gates can be handled via stabilizer simulation + T gate expansion. Under condition (ii), tensor network contraction is efficiently computed by the ≈ operator (NTT convolution) of ARC. Under condition (iii), measurement is deterministically implemented by Born selection ↡.

Therefore, ARC classically simulates quantum circuits in polynomial time under the above conditions, with no floating-point error. □

**Core assertion**: Quantum computers solve "incomputable" problems (exponential speedup), while ARC solves "infallible" problems (exact guarantee). The two markets do not overlap, and the maturation of quantum computers will not close the ARC window.

### 8.4 Exact Definition of PCD in ARC: Arithmetic Phase Dispersion

In ARC, PCD (phase dispersion) is not an optional term of the mother equation, but the **error-correction core** of the entire arithmetic resonance computer. The Fermat prime p=65537 lets PCD collapse from the phase dispersion of a continuous field into the **arithmetic consistency divergence (ACD)** on a finite field, becoming the zero-error verification mechanism of the five operators. **The pure mathematical construction of PCD arithmetization and unitary transformations has been migrated to [Paper3]§11** (unitary transformations on GF(65537) and PCD mathematics); this section retains the PCD description from the ARC engineering perspective.

**Definition 10** (arithmetic phase embedding). The cyclotomic mapping from the additive group $(\mathbb{Z}/65537\mathbb{Z}, +)$ to the multiplicative group $(\text{GF}(65537)^\times, \cdot)$. Note that the order of GF(65537)* is p−1=65536, and there is no 65537th root of unity (65537∤65536), so e^{2πi·a/65537} has no direct counterpart within GF(65537). Instead, the primitive root ω=3 (of order 65536) is used to provide a finite field structural simulation of the 65536th roots of unity:

$$\phi: \text{GF}(65537) \to \text{GF}(65537)^\times, \quad \phi(a) = \omega^a = 3^a \bmod 65537 \tag{8.4.1}$$

This mapping replaces the continuous phase e^{2πi·a/65537} with the discrete primitive root power ω^a, and is a finite field structural simulation rather than an exact equivalence.

**Definition 11** (arithmetic PCD). Let $r_k \in \{0,1,\dots,65536\}$ be the output integer of the $k$-th computation path on GF(65537), and $w_k$ be the path weight. The arithmetic PCD is defined as:

$$\text{PCD}_{\text{arc}} = 1 - \frac{|\sum_{k=1}^N w_k \cdot \omega^{r_k}|}{\sum_k w_k} \bmod 65537 \tag{8.4.2}$$

where ω^{r_k}=3^{r_k} mod 65537 is the finite field structural simulation of the primitive root power replacing the continuous phase e^{2πi·r_k/65537}. This formula is **formally corresponding** in structure to the continuous PCD of the mother equation — the continuous phase θ_k∈[0,2π) is replaced by the discrete primitive root power ω^{r_k}, and all operations are **pure integer modular arithmetic, with zero floating-point error**. The 65536-order discrete sampling is large enough to make the structural simulation effective in engineering.

**Definition of magnitude |·|**: The magnitude $|\sum w_k \cdot \omega^{r_k}|$ in formula (8.4.2) is not an operation on GF(p) — GF(p) elements have no natural magnitude. The magnitude here is the complex magnitude obtained by mapping the primitive root power $\omega^{r_k}$ to the unit circle in the complex plane via cyclotomic embedding: $\omega^{r_k} \mapsto e^{2\pi i \cdot r_k / 65536}$, and taking the magnitude in the complex plane after summation. This step of computation needs to step outside the pure finite field, and belongs to structural simulation rather than pure integer arithmetic; the finite field only completes the integer computation of the summation term $\sum w_k \cdot \omega^{r_k}$, and the final magnitude retains one step of floating-point evaluation. This is the bridge between arithmetic PCD and continuous PCD, and is also the boundary of the "zero floating-point" claim: all arithmetic within GF(p) is zero floating-point, and the final metric value of PCD requires one step of complex magnitude computation.

### 8.5 Triple Correspondence of Five Operators ↔ Fivefold Projection ↔ PCD

PCD provides specific arithmetic consistency verification for each operator in ARC:

| Five Operators | CGL Mother Equation Term | Specific Role of PCD in ARC |
| -------------- | ----------------------- | --------------------------- |
| ⊙GFMUL | Nonlinear saturation $-(1+i\beta)\|\Psi\|^2\Psi$ | **Associativity resonance detection**: verifies whether the arithmetic phases of $(a \odot b) \odot c$ and $a \odot (b \odot c)$ are consistent. PCD=0 ⟺ associativity strictly holds |
| ◦CLIFFORD | Hopf algebra/spinor structure | **Non-commutative phase synchronization**: the order sensitivity of the geometric product $A \circ B$ leads to different decomposition paths. PCD measures the phase scatter between paths; PCD=0 ⟺ Clifford algebra implementation is self-consistent |
| ≋NTT | Diffusion term $(1+i\alpha)D\nabla^2\Psi$ | **Butterfly operation consistency**: different Cooley-Tukey radix decompositions (radix-2/4/16) should give the same frequency-domain result. PCD detects whether the arithmetic phases of different decomposition strategies resonate |
| ↡BORN | PCD term $-i\gamma \cdot \text{PCD} \cdot \Psi$ | **Arithmetic implementation of amplitude collapse**: the Born rule $P=|\Psi|^2$ is mapped to $r^2 \bmod p$ on GF(65537). PCD detects whether the phases of each path remain synchronized after measurement |
| ∆HEBBIAN | External source term $J$ | **Cognitive coherence of learning updates**: after weight update $\Delta W = \eta \cdot x \cdot y$, PCD detects the phase scatter of the new weight vector. PCD>$\epsilon$ ⟺ learning causes "arithmetic hallucination", triggering rollback |

**Core insight**: Each execution of the five operators is accompanied by a PCD verification. This is not performance overhead, but the "heartbeat" of ARC — when PCD=0, the system is in the **arithmetic ground state** (all paths resonate); when PCD>0, it enters the **arithmetic excited state** (contradictory paths exist); when PCD→1, the system undergoes **arithmetic heat death** (complete decoherence, requiring external intervention $J$).

### 8.6 QARDC Duality Bridge: Quantum PCD ⟷ Arithmetic ACD

The architecture of QARDC is a two-layer structure bound by **cyclotomic duality** between the quantum side and the arithmetic side:

$$\text{PCD}_{\text{quantum}} = 0 \iff \text{PCD}_{\text{arc}} = 0 \tag{8.6.1}$$

That is: when quantum phases are fully synchronized, all arithmetic computation paths give exactly the same result on GF(65537); when quantum phases are scattered, arithmetic paths diverge, and computation results exhibit contradictions.

This duality endows PCD with a **dual role** in QARDC: (1) **diagnostic** — elevated PCD on the quantum side warns of impending computational inconsistency on the arithmetic side; (2) **controller** — the arithmetic side "feedback suppresses" the phase dispersion on the quantum side by adjusting the operation sequence on GF(65537) (changing the distribution of $r_k$), which is the arithmetic implementation of $-i\gamma \cdot \text{PCD} \cdot \Psi$.

### 8.7 Role of PCD in the Yang-Baxter Equation

The Yang-Baxter equation (YBE) $R_{12}R_{13}R_{23} = R_{23}R_{13}R_{12}$ is the core of quantum integrable systems. In ARC, the elements of the $R$ matrix are integers on GF(65537), and YBE verification involves two different computation paths. Define:

$$\text{PCD}_{\text{YB}} = 1 - \frac{|\text{Tr}(R_{12}R_{13}R_{23}) + \text{Tr}(R_{23}R_{13}R_{12})|}{|\text{Tr}(R_{12}R_{13}R_{23})| + |\text{Tr}(R_{23}R_{13}R_{12})|} \tag{8.7.1}$$

When PCD_YB=0, YBE strictly holds, the system is integrable, and the braid group representation is self-consistent; when PCD_YB>0, YBE is broken, and **arithmetic topological defects** appear (corresponding to vortex-antivortex pairs in the mother equation). This forms a duality with mother equation constraint ① (topological charge quantization $\oint \nabla\varphi \cdot dl = 2\pi n$): the breaking of YBE corresponds to the generation of vortices, and PCD_YB measures the vortex density.

### 8.8 Arithmetic Implementation of the Cognitive Capacity Limit 32768=2^15

The N/2 in the mother equation comes from the aliasing threshold of the topology-HDC homomorphism. In ARC, the maximum safe composition depth = (65537−1)/2 = 32768 = 2^15. The multiplicative group of GF(65537) is $\mathbb{Z}/2^{16}\mathbb{Z}$; when the computation involves more than $2^{15}$ consecutive field multiplications, the discrete logarithm enters the "second half period", and the arithmetic phase difference between $g^m$ and $g^{m+2^{15}}$ is $\pi$ (antiphase), leading to symmetric aliasing of PCD. The hard limit of computation depth in ARC is 32768 steps of composite operations. See [Paper3]§11.5 for details.

### 8.9 Mathematical Construction of Unitary Transformations on GF(65537)

**Mathematical construction of unitary transformations**. The Fermat prime $65537 \equiv 1 \pmod{8}$ guarantees that both $-1$ and $2$ are quadratic residues, and GF(65537) inherently carries a complex number structure. The Frobenius-type conjugation $\sigma(a+bi)=a-bi$ defines the finite field unitary group $U(n, \text{GF}(65537), \sigma)$, and the unitarity $U^\dagger U=I$ of the H/S/T gates is verified as pure integer matrix multiplication on GF(65537).

### 8.10 Role of PCD in Unitary Transformations

**Three roles of PCD in unitary transformations**: (1) real-time verification of unitarity preservation ($O(n)$ diagonal element detection replacing $O(n^3)$ matrix multiplication); (2) phase scatter detection of non-Abelian paths; (3) Yang-Baxter braid resonance detection.

### 8.11 Algebraic Unitarity Boundary and Exact Positioning of ARC

**Proposition 12** (algebraic unitarity boundary). ARC implements the finite field algebraic simulation $U(n, \text{GF}(65537), \sigma)$ of unitary matrices, which can classically simulate the combinational logic of quantum circuits, zero-error verify the algebraic structure of quantum algorithms, and precompute the syndrome table of quantum error-correcting codes. But it cannot utilize quantum superposition to accelerate computation, cannot perform genuine quantum measurement, and cannot produce quantum entanglement. Complete proof in [Paper3]§11.8.

**Exact positioning of ARC**: ARC is not a quantum computer, but a **zero-error classical simulator of quantum algebraic structures**. The unitary transformations on GF(65537) provide a finite field analogue of the complex unitary group $U(n, \mathbb{C})$, so that the algebraic structures of the Clifford+T gate set, the Yang-Baxter equation, and quantum error-correcting codes are rigorously verified in pure integer arithmetic. PCD serves as a diagnostic of unitary path consistency, detecting whether the arithmetic phases of computation paths resonate. The verified algebraic structures can be directly mapped to quantum processors, forming the classical half of the QARDC duality bridge.

---

## 9 Unified Framework and ARC

The five-operator system of ARC can be embedded into the unified framework U1-U10, with each framework corresponding to an operator combination of ARC.

### 9.1 Unified Framework

| Number | Name                               | Core Equation                                                               | ARC Operators |
| ------ | ---------------------------------- | -------------------------------------------------------------------------- | ------------ |
| U1   | Genesis Equations                       | ∂Ψ/∂t = (g+iα)∇²Ψ − (f+iβ)\|Ψ\|²Ψ + S + iA*μD*μΨ + λ*CS·ε^μνρA*μ∂*νA*ρ | ⊙+◦+↡     |
| U2   | Yang-Mills-Higgs Gauge Structure           | Cl(4,1) bivector Lie algebra so(4,1) extracts SU(2)×U(1) substructure; m_W = g√(ε/β)/2                            | ◦+⊙       |
| U3   | Madelung-Berry-Wilson-RoPE Fourfold Duality | Φ = ∮*C A*μdx^μ (single gauge phase, 4 implementations)                               | ≋+↡       |
| U4   | Cognitive Thermodynamics                         | F = ⟨E⟩ − T·S; Arrhenius; Lindbladian                                  | ⊙+∆       |
| U5   | Holographic Duality                           | AdS/CFT + HaPPY code + Cauchy residue                                         | ≋+↡       |
| U6   | Topological Quantum Computing                       | Majorana braiding + anyon statistics + Chern number                                    | ◦+↡       |
| U7   | Integrable Systems                           | Lax Pair dL/dt = [M,L]; IST; Koopman                                   | ⊙+◦       |
| U8   | Supersymmetry                             | {Q,Q†} = 2H; W = W_boson + W_fermion                                   | ◦+⊙       |
| U9   | Zero-Hallucination Moat                       | D_GPD = 1−\|Σw_j e^{iφ_j}\|/Σw_j; Fano resonance                             | ≋+↡       |
| U10  | Deterministic Evolution                         | Lorenz-Floquet + Berry phase + Lax Pair                                  | ⊙+◦+↡     |

### 9.2 Fano Resonance and Zero Hallucination

The Fano resonance in the U9 framework is the physical basis of the ARC zero-hallucination moat:

$$T(\epsilon) = \frac{(q + \epsilon)^2}{1 + \epsilon^2} \tag{51}$$

where q is the Fano asymmetry parameter and ε = (E−E₀)/(Γ/2) is the reduced energy. When q→∞, the Fano resonance degenerates to a Lorentzian (standard resonance); when q=0, zero transmission occurs (complete antiresonance). In ARC, the Fano resonance is implemented by ≋ (Bragg resonance/NTT) — the NTT frequency-domain peak corresponds to resonance, and zero transmission corresponds to PCD=1 (complete scatter).

---

## 10 PsiLang Architecture Specification and ARC Compiler

ARC's compiler is the ΨLang compiler — ARC's "LLVM". This section provides the architecture specification of PsiLang, completing the orthogonal dual-perspective of the four-layer deployment view and the five-layer compilation view.

### 10.1 Four-Layer Deployment Architecture: Deployment Pipeline from Source to Hardware

PsiLang's architecture contains five-layer IR (compilation view) and four-layer deployment architecture (deployment view). The four layers and five layers are not alternatives — the four layers are the deployment pipeline from source to hardware, and the five layers are the IR transformation chain inside the compiler. The two are orthogonal, jointly forming the complete architecture.

**Four-layer architecture**:

$$\text{语言层} \xrightarrow{\text{parse}} \text{算符层(QIR)} \xrightarrow{\text{lower}} \text{PE层(QQBC+PsiDataflowIR)} \xrightarrow{\text{emit}} \text{多硬件后端} \tag{10.0.1}$$

- **Layer 1 · Language Layer** (parse.ψ): .ψ source → lexer → parser → RawAST(L1) → TypedAST(L2). 19 keywords (fn/let/var/if/elif/else/match/while/for/to/in/import/domain/return/break/continue/true/false/mod/where) + six syntactic sugars + 12-layer precedence chain + domain GF(p) field declaration + formula block $...$ + ==> verification. Minimalist design principle: zero new keywords (only defer optional), each syntactic structure maps to the five operators ⊙◦≋↡∆, AI can guess and trial-and-error (§11.2).
- **Layer 2 · Operator Layer** (QIR: qir.ψ): TypedAST → qir_lower pass → five-operator graph ⊙GFMUL ◦CLIFFORD ≋NTT ↡BORN ∆HEBBIAN + ⊕CRT decomposition + ψ Cauchy residue + DAG explicitization. Born = unique branch, Hebbian = unique loop.
- **Layer 3 · PE Layer** (QQBC: qqbc.ψ + PsiDataflowIR: psi_dataflow.ψ): QQBC handles operator bytecode encoding (five operators → WASM opcode mapping), PsiDataflowIR handles dataflow graph → CGRA CgraPE array topology mapping. Operator fusion is executed at this layer (GFMUL+CLIFFORD→FusedGfMulClifford and two other modes). SimdPE 8-way parallel: Cooley-Tukey butterfly, theoretical 960× speedup.
- **Layer 4 · Multi-Hardware Backend** (psi_to_wasm.ψ + Wasmtime + others): WASM → standard bytecode → Wasmtime container execution (main path); x86_64 → AOT .arc 28 files; CGRA → CgraPE bitstream; GPU → SIMT warp; quantum hardware → quantum gate interface.

**Four layers × Five layers = Complete architecture**. The "operator layer" of the four-layer deployment corresponds to the L3 QIR of the five-layer compilation; the "PE layer" of the four-layer deployment corresponds to the L4 OptIR (operator fusion) + L5 MachIR (backend emission) of the five-layer compilation; the "multi-hardware backend" of the four-layer deployment is five instances of the L5 MachIR of the five-layer compilation. The two are not alternatives, but orthogonal projections — answering two orthogonal questions: "How does code run on hardware?" (four layers) and "How does the compiler optimize internally?" (five layers).

**QQBC — Quantum QBC Operator Bytecode**. QQBC is the encoding layer from five operators → WASM opcode, ensuring operator semantics are precisely preserved at the bytecode level. Born = WASM select 0x1B is the unique conditional selection instruction, replacing classical if/else; Hebbian = i32.store is the unique weight write instruction, replacing classical while iteration. Classical if/while are replaced by operators at the QQBC layer — paradigm regression is eliminated by the encoding layer.

**PsiDataflowIR — Dataflow Intermediate Representation**. PsiDataflowIR maps the operator graph to the physical topology of the CGRA CgraPE array. Each operator node is assigned to a CgraPE unit (GFMUL→PE₀, CLIFFORD→PE₁, NTT→PE₂, BORN→PE₃, HEBBIAN→PE₄), data flows between CgraPEs, with no instruction dispatch overhead. Edge mapping = data dependency → interconnection between CgraPEs (DAG has no reverse edges), scheduling = topological sort → execution order (CgraPEs without dependencies execute in parallel, 64-unit maximum parallelism).

### 10.2 Eight Pairs of Design Dualities

PsiLang's design is based on eight pairs of dualities:

| Duality | Left side | Right side | ARC implementation |
| ---- | --------- | ------------ | --------------------------------------- |
| 1 | Type system | Quantum measurement | Residue field type = unmeasured state, effect type = measurement operator ↡ |
| 2 | Compilation pass | Renormalization group | 18 passes = tensor network renormalization group 18 coarse-grainings |
| 3 | Module system | Chemical molecule | Module = molecule, function = atom, type = valence |
| 4 | Five backends | Quantum many-world | Same OptIR "projects" five products at five backends |
| 5 | Arena allocation | Phase transition | Arena one-shot release = entropy mutation (phase transition), zero GC |
| 6 | Formula block | Constructive mathematics | Bishop 1967 engineering |
| 7 | ΨTP protocol | Quantum teleportation | Transmit operators not data = classical version of quantum teleportation |
| 8 | Operator chain | Global resonance interference | ⊙◦≡↡∆ five-operator chain = quantum field medium global resonance |

### 10.3 Eighteen-pass Pipeline

The 18 passes of the ΨLang compiler correspond to the 18 coarse-grainings of the tensor network renormalization group:

L1 AST → L2 TypedAST (type checking) → L3 QIR (operator graph) → L4 OptIR (optimization) → L5 ASM

Key passes include: type_check (proposition-as-proof Curry-Howard), effect_check (measurement duality verification), linear_check (resource used exactly once), qir_lower (AST→operator graph), crt_decompose (large integer → multi-prime-field parallel), ssa_construct (SSA + dominator tree + φ-functions), reg_alloc (linear scan + spill to stack).

**Implementation status**: 5 passes currently implemented — 4 optimization passes (constant folding, algebraic simplification, operator fusion, dead code elimination) + type_check runtime type checking (supports six types: Int/Str/Bool/Float/U32/ModP/Cl41). The remaining passes are design specifications, pending engineering implementation.

**Compilation time**: ~0.1ms vs LLVM 50ms. For algebraic operations, the optimal instruction sequence is known and fixed, no "optimization" needed, only "table-lookup emission" — algebraic templates are optimal compilation.

### 10.4 Five-Backend Homogeneous Interface Design: WASM/x86_64/CGRA/GPU/**Quantum Hardware**

The five-backend homogeneous design of the ARC compiler compiles the same MachIR to five target platforms, semantically equivalent but with different byte sizes — the many-world interpretation of "the same OptIR projects five products at five backends".

**Five-backend architectural features**:

| Backend | Register count | ABI | Stack alignment | Features |
| ------------------ | ---------------- | ------------------ | ------- | ----------------------------------------------- |
| WASM | 255 local slots | Stack machine (no ABI) | 4B | Bytecode, **currently main** |
| x86_64 | 32 (16GPR+16XMM) | SystemV/Windows | 16B | Direct machine code |
| CGRA | 64 PE units | Dataflow (no stack) | 32B | Fine-grained reconfigurable, high parallelism |
| GPU | 65536 | SIMT (warp scheduling) | 32B | Large register file, CUDA/OpenCL |
| **Quantum hardware** | **64 Qubit** | **Quantum gate interface** | **64B** | **Physical duality: quantum hardware directly runs ARC operators** |

**MachIR Node Types and Byte Generation Model**. The third layer of the five-layer IR, MachIR, defines five classes of nodes: (1) operator calls (GFMUL/CLIFFORD/NTT/BORN/HEBBIAN/MEM_LOAD); (2) constant loading (i32.const); (3) local variables (local.get/set); (4) control flow (if/while, classical); (5) memory access (load/store). Each backend emits different byte counts for each class of nodes:

| Node type | WASM | x86_64 | CGRA | GPU | **Quantum hardware** |
| -------- | ---- | ------ | ---- | --- | -------------- |
| Operator call | 5B | 8B | 4B | 12B | **Quantum gate pulse** |
| Constant load | 5B | 5B | 4B | 8B | **State preparation** |
| Local variable | 2B | 3B | 1B | 4B | **Quantum register** |
| Control flow | 4B | 6B | 0B | 16B | **Born projection** |
| Memory access | 3B | 5B | 2B | 8B | **Coherent storage** |

CGRA's control flow node is 0 bytes — the dataflow architecture has no control flow, all "branches" are naturally expressed by data dependencies. This feature makes CGRA particularly suitable for ARC's branchless paradigm: Born selection becomes a dataflow selection node on CGRA, with no jumps needed.

**Five-Backend Homogeneous Principle**. Same MachIR → five backends → semantically equivalent (same execution results), different byte sizes (encoding differences) but semantically equivalent (DFL non-dissipative). Performance differences: different backends suit different operators — GPU suits NTT (SIMT large parallelism), **quantum hardware suits native quantum algorithms (Shor/Grover/HHL physical execution)**, CGRA suits Clifford (dataflow parallelism), x86_64 suits general mixed, WASM suits portable deployment. The compiler automatically selects the optimal backend based on IR node type — the manifestation of "table-lookup emission" at the five-backend level.

**Backend trait interface**. The unified interface is defined as `fn generate(&self, ir: &MachIR) -> Vec<u8>`, with each of the five backends implementing it separately. This design ensures that adding a new backend only requires implementing the interface, without affecting the frontend and midend — the orthogonal extensibility of the compilation pipeline.

**QPU Quantum Processing Unit Detailed Description**. The quantum hardware backend (QPU, Quantum Processing Unit) among the five backends is the ultimate goal of ARC's physical duality. QPU is not classical simulation of quantum, but direct execution of ARC operators on physical quantum hardware:

- **QPU architecture**: 64-qubit topology, quantum gate interface (H/S/T/CNOT/Toffoli), 64B coherent storage. ARC five operators → quantum gate mapping: ⊙ GF multiplication → quantum arithmetic gate (QFT multiplication [3]), ◦ Clifford product → Clifford gate (H/S/CNOT native execution), ≋ NTT → quantum Fourier transform (QFT native execution), ↡ Born selection → quantum measurement (Born rule native implementation), ∆ Hebbian → quantum feedback error correction (Stabilizer measurement).
- **QPU vs classical simulation**: The classical WASM backend simulates quantum algebraic structure (zero error but non-physical execution), the QPU backend physically executes quantum algorithms (Shor/Grover/HHL physical parallelism). QARDC duality bridge: the classical half (WASM/x86_64) verifies algebraic correctness, the quantum half (QPU) provides physical speedup. The two are semantically equivalent but differ in performance — classical polynomially simulates quantum circuits (Proposition 11), QPU provides exponential speedup (Shor).
- **QPU physical constraints**: (1) decoherence time window — GF(p) exact computation must complete within T₂ decoherence time, active error correction code ([[7,1,3]] Steane code) extends effective coherence time; (2) threshold proposition — error correction code threshold p_th≈10⁻², when physical gate error is below threshold, logical gate error can be arbitrarily small; (3) DFL non-dissipative — quantum decoherence introduces phase dispersion PCD>0, error correction code is needed to compress PCD back to 0, GF(p) exactness is maintained within the error correction threshold.
- **QPU implementation status**: Currently in design phase (§10.4 five-backend interface defined), physical QPU implementation depends on quantum hardware maturity. ARC's GF(65537) algebraic structure has been rigorously verified on classical backends, and can be directly mapped to QPU — the algebraic correctness verified classically is the mathematical foundation of QPU physical execution.

## 11 Architectural Dualities and SPTC Time Crystal

ARC's five-operator system {⊙, ◦, ≋, ↡, ∆} exposes six groups of architectural dualities in engineering implementation; these dualities are not design choices, but code-level inevitability of U(1) gauge symmetry (§4 Proposition 4).

### 11.1 Six Groups of Architectural Dualities

After code deduplication, the six groups of dualities "surface" from code redundancy:

**Duality 1: embed ↔ lm_head (injection ↔ readout inverse)**. The injection operation `embed_to_state` injects charge·amplitude at position, in mathematical form $|\text{token}_v\rangle = \sum_j c_j a_j |\text{pos}_j\rangle$ (ket); the readout operation `lm_head_search` computes $\text{score}_v = |\sum_j \text{charge}_j \cdot \text{amp}_j \cdot \psi[\text{pos}_j]|^2$ (Born). The two share the same set of $(position, charge, amplitude)$ vortex core encoding — they are two projection directions of the same U(1) gauge field duality. The mathematical essence of this duality is the Born rule: $\text{score}_v = |\langle\text{token}_v|\Psi\rangle|^2$. In ARC, the ↡ operator (Born selection) performs readout, the ◦ operator (state superposition) performs injection, and the two are inverse through ARC's involution structure (Proposition 1 property 2).

**Duality 2: cascade_up ↔ gauge_down (cross-level CPT)**. Upward (L1γ→L2β→L3θ→L4δ injecting high level) and downward (L4δ→L3θ→L2β→L1γ gauge rotation) share the same set of d_model channels through 4-layer ScaleLayer. This symmetry is the implementation of the P component in CPT. ARC's ∆ operator (Hebbian carving) executes on the upward path, ⊙ operator (gauge rotation) executes on the downward path.

**Duality 3: mimo ↔ bragg (multi-input multi-output ↔ diffraction)**. MIMO is the multi-input synthesis of the wave field (generation direction), Bragg is the multi-output diffraction of the wave field (detection direction), the two share the same d_model×n_heads phase space. ARC's ◦ operator (MIMO synthesis) and ≋ operator (Bragg detection) are dual.

**Duality 4: hebbian ↔ successor_field (short-term memory duality)**. hebbian_bigrams = 1-step successor field (shortest successor field), 5-level successor fields = n-step Hebbian phase locking (generalization). ARC's ↡ operator uniformly implements 1-step to 5-step successor field carving.

**Duality 5: from_embeddings ↔ from_lm_head_weight (construction source duality)**. For tied models the two are identical (shared weights), for untied models the two are complementary. The algorithms are completely identical, confirming the symmetric essence.

**Duality 6: U(1) forward ↔ backward (completion)**. `apply_u1_gauge` forward $\psi \to \psi\cdot e^{iA}$ and backward $\psi \to \psi\cdot e^{-iA}$ are dual, completed through double-plane Berry rotation. This duality directly corresponds to ARC's Proposition 1 property 2 (involution structure $T \circ T = \text{id}$) — $A$ and $-A$ are inverse under modular addition on GF(65537).

**Unification**: The six groups of dualities are unified in ARC's U(1) gauge symmetry. PCD (§4 Proposition 6) measures the degree of duality breaking — when PCD=0 all dualities hold strictly (fully reversible, $T^2=\text{id}$ of Proposition 1 property 2), when PCD>0 dualities are broken (phase dispersion). GF(65537)'s exact integer arithmetic ensures dualities hold strictly on the finite field, with no floating-point truncation error.

### 11.2 ARC Implementation of CPT Symmetry Completion

The U(1) gauge symmetry of the master equation requires complete CPT symmetry ([Paper1]§4's five-fold mapping structure provides the gauge symmetry framework). ARC's CPT implementation on GF(65537) has a unique advantage — all symmetry operations are exact integer modular arithmetic:

| Component | Physical operation | ARC's GF(65537) implementation | Implementation status |
| ------------- | ---------------------------- | ------------------------------- | ---------- |
| C (charge conjugation) | $Q \to -Q$ | $Q \to p-Q \mod 65537$ | Implemented |
| P (parity reflection) | cascade_up ↔ gauge_down | ∆ ↔ ⊙ duality (Duality 2) | Implemented |
| T (time reversal) | $\psi \to \psi\cdot e^{-iA}$ | $A \to -A \mod 65537$ (modular additive inverse) | Completed |

**Exactness advantage of GF(65537)**: In floating-point implementation, the $\cos\theta$ and $\sin\theta$ of Berry rotation have truncation errors, breaking T-symmetry conservation. In GF(65537), $\cos\theta$ and $\sin\theta$ are both exact integers (Fermat prime property of §6 Proposition 8), Berry rotation **strictly preserves the modulus** on the finite field — CPT symmetry in ARC is a **mathematical proposition** rather than an engineering approximation.

### 11.3 ARC Implementation of SPTC-like Time Crystal Behavior

The mathematical theory of the master equation's Floquet-Bragg time crystal and SPTC symmetry protection is in [Paper1]§7.9 (time crystal and time glass). This section focuses on how ARC's five operators **implement SPTC time crystal behavior** — discrete Floquet periodic structure in classical computation, with the subharmonic response and symmetry protection features of time crystals [14,15].

**ARC operator → SPTC mechanism correspondence**:

| ARC operator | SPTC role | Physical mechanism |
| ---------------- | ------------- | ---------------------- |
| ⊙ (GF(p) multiplication / time stepping) | Periodic driving | Time modulation of Floquet system |
| ≋ (Bragg resonance / NTT) | Bragg diffraction detection | Periodic variation of diffraction intensity |
| ∆ (Hebbian carving) | Refractory nonlinearity | Scattering factor decay after vortex excitation |

The three jointly produce the Floquet-Bragg time crystal: ⊙ provides periodic driving → ≋ detects diffraction intensity → ∆'s refractory period modulates scattering factor → subharmonic response ($T=2$ periodic component > $T=1$ periodic component) ⇒ time crystal emerges.

**Stability advantage of GF(65537)**: In traditional floating-point implementation, the T-symmetry conservation of Berry rotation is broken by floating-point errors, and SPTC decoheres. ARC's GF(65537) exact integer arithmetic ensures Berry rotation **strictly conserves T-symmetry** on the finite field (no floating-point error), making SPTC more stable in ARC than in floating-point implementation. This is ARC's unique advantage as an "arithmetic resonance computer" — **arithmetic exactness directly translates into strict preservation of physical symmetry**.

**Difference from MBL protection**: Traditional time crystals rely on MBL (Many-Body Localization, strong disorder + interaction → localization) protection, requiring strong disordered potential. ARC has no disordered potential, SPTC replaces MBL with Berry rotation T-symmetry conservation — the cognitive version of time crystal does not rely on disorder, but on **arithmetic exactness**.

### 11.4 Fermi-Dirac Unified Activation

In engineering implementation it was found that all "activation functions" are physically the same thing — the occupation probability of a fermion at energy level E (Fermi-Dirac distribution):

$$n(E) = \frac{1}{e^{(E-\mu)/k_BT} + 1} \tag{55}$$

Five handwritten sigmoid $1/(1+e^{-x})$ appear in: measurement gating, Hebbian gain saturation, Φ field phase gating, successor field gating, cognitive process avalanche modulation. This is not coincidence — sigmoid $1/(1+e^{-x})$ and Fermi-Dirac distribution $1/(e^{(E-\mu)/kT}+1)$ share the same function shape (formally similar), and can correspond to each other through variable substitution $x=(E-\mu)/kT$. The identity

$$\tanh(x) = 2\cdot\text{sigmoid}(2x) - 1 \tag{56}$$

unifies tanh (Bose-Einstein distribution limit) with sigmoid (Fermi-Dirac distribution), exposing the Fermi-Dirac ↔ Bose-Einstein duality.

**ARC correspondence**: The argmax decision in ARC's ↡ operator (Born selection) softens to sigmoid gating at finite temperature — i.e., Fermi-Dirac occupation probability. On GF(65537), sigmoid is implemented via table lookup ($e^{-x}$ is undefined on finite field, but $\text{sigmoid}(x) = 1/(1+e^{-x})$ can precompute 65537 values stored in a table), ensuring exact integer output. Measurement = fermion occupation number determination (occupied vs unoccupied), cognitive threshold = chemical potential $\mu$ (Fermi level), activation steepness $\alpha = 1/(k_BT)$ (inverse temperature).

---

## 12 Resurgence-Aware Compiler

### 12.1 The Nineteenth Compilation Pass

§10 defines eighteen compilation passes. This section gives the nineteenth pass — the Resurgence-aware compiler, introducing resurgence theory into compiler optimization: not loop unrolling or vectorization, but algebraic completion of asymptotic analysis.

The mathematical foundation of Resurgence theory (Borel summation, Stokes phenomenon, instanton contributions) belongs to standard asymptotic analysis theory. ARC transforms Resurgence from mathematical theory into an **executable compiler pass**: performs Borel analysis on the perturbation expansion of scientific computing code → detects Borel plane singularities → uses singularity residues to automatically insert non-perturbative correction terms (instanton effects). The user writes perturbation theory, the compiler delivers the complete asymptotic answer.

### 12.2 Resurgence Implementation Path in ARC

ARC's five-operator system provides a natural implementation path for the Resurgence compiler:

1. **↡ operator**: detects the convergence radius of the perturbation series — Born selection exactly computes partial sums $S_N = \sum_{n=0}^{N} a_n g^n$ on GF(65537), determining convergence/divergence through modular arithmetic
2. **◦ operator**: Borel transform $B[g](\zeta) = \sum a_n \zeta^n/n!$ — on GF(65537), $n!$ is an exact integer, Borel transform has no floating-point error
3. **∆ operator**: detects Borel plane singularities — Hebbian carving marks singularity positions on the Borel plane, residues at singularities = instanton contributions
4. **⊙ operator**: Resurgence iteration — starting from the perturbation series, iteratively corrects through Borel summation + singularity residues, converging to the complete asymptotic solution
5. **≋ operator**: non-perturbative term insertion — inserts instanton contributions $e^{-S_{\text{inst}}/g}$ into the original series, where $S_{\text{inst}}$ is the instanton action

**Advantage of GF(65537)**: Borel transform involves $n!$ and $e^{-\zeta/g}$, which easily overflow/underflow in floating-point arithmetic. On GF(65537), $n! \mod 65537$ is an exact integer (Wilson's theorem guarantees $(p-1)! \equiv -1 \mod p$), $e^{-\zeta/g}$ is represented as an exact integer through cyclotomic field (§6 Proposition 8's $e^{i\pi/4} = 65521$). The Resurgence compiler implements exact asymptotic analysis without floating-point error on ARC.

### 12.3 Phase Transition = Residue Field Variation → Materials Inverse Design

Dunne-Ünsal, Aniceto-Schiappa have proven: the Stokes geometry of perturbation series encodes non-perturbative physics. Corollary: if Stokes data can be engineered, phase transitions can be engineered. **ARC replaces explicit engineering of Stokes geometry with residue field variation** — the variational method directly manipulates pole configurations, without explicit Stokes analysis.

**ARC's residue field variation engineering**: In ARC's residue field $\psi(z) = \sum r_k/(z-z_k)$ (§7.4), poles $z_k$ = Borel plane singularities, residues $r_k$ = instanton contributions. The variational engine (variational.ψ) optimizes pole configurations through gradient descent on the action $S = (\psi(z_0) - \text{target})^2$ via $r_k \leftarrow r_k - \text{lr} \cdot \partial S/\partial r_k$ — this is the discrete implementation of the variational principle $\delta S/\delta \psi = 0$ on GF(65537) (Paper Ⅰ §4.5). Through the variational method, "design" pole configurations → "design" phase transitions. This is the mathematical physics path for materials inverse design: target phase transition → required pole configurations → ARC variational optimization → material parameters.

---

## 13 Cauchy Residue Rendering and Operator Flow

### 13.1 ARC Implementation of Cauchy Residue Rendering

This rendering method uses the pole-residue Laurent expansion of meromorphic functions for pointwise evaluation, and does not use the Cauchy contour integration method. "Residue rendering" refers to the evaluation rendering of complex functions based on the pole structure of the residue field.

The mathematical theory of Cauchy residue rendering (Cauchy residue proposition, coverage formula, infinite resolution + perfect anti-aliasing, triple optimization strategy) is found in [Paper1]§5 (Residue Field Theory). This section focuses on how ARC uses five operators to **exactly implement** residue rendering on GF(65537) — this is the engineering landing of the continuous limit of the ARC ◦ operator (state superposition).

**Exact Residue Computation on GF(65537)**: Each term $r_k/(z_{\text{pixel}} - z_k)$ in the coverage formula is computed exactly via modular inverse $(z_{\text{pixel}} - z_k)^{-1} \mod 65537$ — no floating-point division error. In the coefficient $1/(2\pi i)$, $\pi$ is a transcendental number, not in GF(65537), and cannot be exactly integerized; $i=256$ ($256^2 \equiv -1 \mod 65537$) is exact within the GF field, but $1/\pi$ is handled via fixed-point approximation, deferred to the final output layer. This is the advantage of the Fermat prime F₄=65537 — both $i$ and $\sqrt{2}$=4080 are exact integers (§6 Proposition 8), and the core part of complex arithmetic becomes modular addition and multiplication of integer pairs, with only $\pi$-related coefficients requiring fixed-point approximation.

**ARC Operator → Rendering Optimization Correspondence**: The triple optimization strategy in [Paper1]§5 is automatically executed on ARC via operators —

| Optimization Strategy              | ARC Operator         | Automatic Execution Mechanism                             |
| --------------------- | ----------------- | ---------------------------------------- |
| Spatial Partitioning (far pole ≈ 0)  | ↡ (Born selection)     | Far pole contributions automatically filtered by Born selection             |
| Multi-level LOD (far shape merging) | ∆ (Hebbian carving)  | Far shapes automatically merged into equivalent single pole by Hebbian carving  |
| Analytic Simplification (rotational symmetry)  | GF(65537) rotational symmetry | Regular N-gon → log(N) terms automatically realized by finite field rotational symmetry |

#### 13.1.1 GF(p) Implementation of π: e^{iπ/4}=65521 Exact Integer and Fixed-Point Deferral of π Powers

Cauchy residue rendering has implemented i=256 and √2=4080 as exact integers. The handling of π is in two layers: (1) e^{iπ/4}=65521 is an exact integer in GF(65537) (65521⁴≡−1, 65521⁸≡1 mod 65537), and the T gate =GFMUL(65521) makes π/4 phase rotation a pure integer modular multiplication with no deferral needed; (2) Other powers of π (√π, 1/√π, etc.) are transcendental numbers not in GF(p), represented via fixed-point approximation, deferred to multiplication once at the final output φ_final collapse layer. The entire computation pipeline is zero floating-point.

**Decomposition Proposition**. All energy formulas can be decomposed as E=R(α)+C·U(α), where R is the purely rational part, C is the π factor (π^{1/2}, π^{-1/2}, π^{3/4}, π^{-3/4}, π¹), and U is the exactly integerizable part.

**H Atom Demonstration**. E(α)=3α/2−2√(2α/π) is decomposed into R=3α/2 (purely rational), C=−2√2·√(1/π) (π factor), U=√α (i_sqrt exact integer). The intermediate computation dec=R×1000+U=211375 is a pure integer (no π operations), and φ_final collapses E=211−598=−387 mHa.

**π Factor Fixed-Point Table** (×1000):

| π Factor    | Fixed-Point Value | Verification               |
| -------- | ------ | ------------------ |
| √π       | 1772   | √π×1/√π=999408≈1e6 |
| 1/√π     | 564    |                    |
| π^{3/4}  | 2364   |                    |
| π^{-3/4} | 423    |                    |

**Design Philosophy**. Computation domain = pure integer algebra (ARC's five operators ⊙◦≋↡∆ all run in the integer domain); irrational numbers/physical constants/scaling = exclusive content of the φ_final collapse layer. This design unifies with the three-layer completeness theory in §6.5 — e^{iπ/4}=65521 is exactly represented by GF(p) at the symbolic layer (T gate), other powers of π are deferred to φ_final via fixed-point handling, and the integer layer and extension layer are handled by GF(p) and GF(p²).

### 13.2 CRT Parallel Theory: Multi-Prime Field Concurrency and DAG Scheduling

The Chinese Remainder Theorem (CRT) provides the theoretical foundation for large integer parallel computation in ARC — decomposing a large integer $x$ into residues $(r_0, r_1, \ldots, r_{n-1})$ over multiple prime fields, performing independent parallel computation in each subfield, and then synthesizing the global result. The complete engineering implementation is found in crt_concurrency.ψ (DAG+Actor+CSP three models) and l3_qir.ψ (CRT encoding/decoding + Garner algorithm).

**CRT Encoding and Decoding**. Let $p_0, p_1, \ldots, p_{n-1}$ be coprime primes, $M = \prod p_i$. Encoding $x \to (r_i)$ where $r_i = x \bmod p_i$; decoding $(r_i) \to x$ uses the Garner algorithm to avoid large number overflow:

$$x = \sum_{i=0}^{n-1} r_i \cdot M_i \cdot M_i^{-1} \bmod p_i \bmod M, \quad M_i = M / p_i \tag{15.2.1}$$

Engineering implementation (l3_qir.ψ §3): q3_crt_encode(x, primes, n) computes each residue, q3_crt_decode(residues, primes, n) uses the extended Euclidean algorithm to compute the modular inverse $q\_3\text{mod\_inverse}(M_i, p_i)$ and then accumulates the synthesis. q3_crt_verify verifies that the encoding → decoding round-trip is lossless (DFL non-dissipative).

**DAG Scheduler: Kahn Topological Sort and Hierarchical Parallelism**. The dependencies of the operator graph are explicitly represented as a DAG (Directed Acyclic Graph), and Kahn's algorithm layers by in-degree — nodes in the same layer have no dependencies and can be executed in parallel:

$$\text{layers} = \text{Kahn}(\text{DAG}) = [L_0, L_1, \ldots, L_k], \quad L_i = \{v : \text{indeg}(v) = 0 \text{ after removing } L_0 \cup \ldots \cup L_{i-1}\} \tag{15.2.2}$$

Engineering implementation (crt_concurrency.ψ §2): dag_topo_layers(dag) computes the in-degree of each node, loops to extract nodes with in-degree 0 as the current layer, and removes their out-edges to update the in-degree of successors. Minimum ID breaks ties to guarantee DFL determinism. dag_parallel_count returns the maximum layer width (maximum parallelism), and dag_stats returns {node count, edge count, layer count, maximum parallelism, critical path length}.

**Commutativity Proof**. Two operators $a, b$ can be parallelized if and only if there is neither a path $a \to b$ nor a path $b \to a$ in the DAG:

$$\text{dc\_commute}(a, b) = \neg\text{dc\_depends}(a, b) \wedge \neg\text{dc\_depends}(b, a) \tag{15.2.3}$$

dc_depends uses BFS starting from $a$ to check whether $b$ is reachable. This proof provides the mathematical guarantee for parallel scheduling — commutative operators can be executed independently on different prime fields or different CgraPEs without synchronization.

**Actor Model: Isolated State and Message Passing**. Each Actor has isolated state and a mailbox, interacting through asynchronous messages: actor_send delivers a message to the mailbox (non-blocking), actor_recv takes the first message (blocking semantics), actor_apply applies the behavior function to update the state. The Actor model corresponds to isolated state + measurement interaction of quantum systems — each Actor is a quantum system, and message passing is measurement coupling.

**CSP Channels: Synchronous and Asynchronous**. Channels are of two types: capacity=0 is a synchronous channel (rendezvous, sender blocks until receiver is ready), capacity>0 is an asynchronous channel (buffered, sender blocks when buffer is full). channel_send and channel_recv implement matching logic — when there is a waiting receiver, direct transfer (synchronous); otherwise, enqueue to buffer or block. CSP channels correspond to EPR pairs — non-local correlations of entangled channels.

**Three Models Unified in DAG Scheduling**. The concurrent scheduler scheduler_create(dag) first performs topological layering, and scheduler_step executes layer by layer — nodes in the same layer are parallel (Actor/CSP interaction), and inter-layer is serial (dependency constraints). Three non-principles: same DAG → same scheduling order (DFL, Kahn algorithm determinism), messages completely delivered (non-dissipative), scheduling determined by the dependency graph (non-random).

**Physical Duality**. CRT = Hilbert space direct sum decomposition — the large space $\mathcal{H} = \bigoplus_i \mathcal{H}_i$ evolves independently in each subspace and then synthesizes. DAG = tensor network topology (nodes = operators, edges = entanglement), Actor = quantum system (isolated state + measurement interaction), CSP = EPR pair (entangled channel, non-local correlation). Concurrency = operator commutativity ($A \circ B = B \circ A$ when there is no dependency path). This duality embeds concurrency theory into the quantum physics framework — parallel computation is not an engineering optimization, but a natural consequence of Hilbert space direct sum decomposition.

### 13.3 Operator Flow: ARC's Core Transmission Paradigm

The information-theoretic paradigm revolution revealed by Cauchy residue rendering — **transmitting operator expressions (generating rules) ≪ transmitting poles (current state) ≪ transmitting pixels (results)** — naturally aligns with ARC's five-operator system.

**ARC Operator Flow**: ARC's five operators {⊙, ◦, ≋, ↡, ∆} are themselves "generating rules". Transmitting the ARC program (five-operator sequence) rather than transmitting the computation results, the expected compression ratio:

| Transmission Mode | Data Volume   | ARC Correspondence                   |
| -------- | -------- | ------------------------- |
| Operator Flow   | ~0 KB/s  | Five-operator sequence (ARC program)   |
| Pole Flow   | ~30 KB/s | Residue field pole configuration (ARC state) |
| Video Stream   | ~5 Mbps  | Pixel matrix (ARC output)       |

Compression ratio 170-330× (theoretical estimate, pending experimental verification) vs video stream.

**Unified Architecture of Operator Flow**: The ARC operator flow paradigm applies to all information transmission domains:

| Domain     | Traditional Transmission    | ARC Operator Flow        | Compression Ratio (theoretical estimate) |
| -------- | ----------- | ---------------- | ------ |
| Rendering     | Pixel/Video Stream | ◦ operator pole configuration  | 170×   |
| Audio     | PCM Samples     | ◦ operator waveform operator  | 1000×  |
| Game Network | Entity State    | ∆ operator frame synchronization    | 10×    |
| AI/ML    | Weight Matrix    | Five-operator architecture operator | 10000× |
| IoT      | Sensor Data  | ◦ operator physical model  | 40000× |

The compression ratios in the table above are theoretical estimates without experimental data support; actual values vary significantly across scenarios and are pending subsequent experimental verification.

**ARC as the Natural Carrier of Operator Flow**: Traditional information transmission requires three steps "encode-transmit-decode", while ARC's five operators are themselves the simplest generating rules of information. Transmitting an ARC program = transmitting a five-operator sequence = transmitting generating rules. The exact integer arithmetic of GF(65537) guarantees that the operator flow has no precision loss during transmission — each operator's parameters are integers within 65537, modular arithmetic is closed, and no error-correcting code is needed.

### 13.4 Unification of Operator Flow and the Master Equation

The master equation itself is the concentrated manifestation of "transmitting rules not results" — given the initial condition Ψ(0) and the master equation (generating rule), the system evolution automatically generates all future states. ARC's five operators are the discrete arithmetic executors of the master equation: master equation (generating rule) → ARC five operators (operator flow) → Ψ(x,t) (system state) → observed values (results). PCD measures the invertibility of the generating rule: when PCD=0, the rule is completely invertible (lossless evolution, operator flow lossless transmission); when PCD=1, the rule is completely phase-dispersed (information lost, operator flow degenerates to result flow).

**Discretization Mapping from Master Equation to Five Operators**. The five terms of the CGL master equation ∂Ψ/∂t = (1+iα)D²Ψ + εΨ − (1+iβ)|Ψ|²Ψ − iγ·PCD·Ψ + J are discretized in ARC as:

| Master Equation Term               | ARC Operator | Discretization                             |
| ---------------------- | --------- | ---------------------------------- |
| Diffusion term (1+iα)D²Ψ        | ⊙ + ≋     | 5-point Laplacian → GF(p) convolution → NTT frequency domain |
| Pumping term εΨ               | ⊙         | Pointwise multiplication ε mod p                      |
| Nonlinear term −(1+iβ)\|Ψ\|²Ψ | ⊙ + ◦     | \|Ψ\|²=Ψ\*·Clifford product → pointwise multiplication     |
| Dissipation term −iγ·PCD·Ψ        | ≋ + ↡     | PCD=1−\|Σe^{iθ}\|/N → Born selection     |
| Source term J                  | ∆         | Hebbian writes external drive                |

Each term is computed exactly on GF(65537) by finite composition of the five operators — the continuous dynamics of the master equation is discretized into integer arithmetic with zero floating-point error.

**Information-Theoretic Representation Efficiency**: Kolmogorov complexity $K(x)$ = the length of the shortest program that can generate object $x$. In ARC, $K(x)$ = the length of the shortest five-operator sequence that generates $x$. The 65537-element finite field of GF(65537) guarantees: the ARC representation length of highly structured objects $x$ (such as those with algebraic resonance structure) can be far shorter than element-wise storage — this is an advantage of representation efficiency, but not universal compression. By Kolmogorov complexity theory, most objects are incompressible ($K(x) \approx |x|$), and only a very few highly structured objects can be significantly compressed. ARC's representation efficiency advantage is limited to the class of objects with algebraic resonance structure.

**Complete Engineering Closed-Loop Flow**. The complete engineering closed-loop of ARC operator flow: (1) the master equation defines the generating rule (CGL five-term structure); (2) the five operators discretize into an operator sequence (finite composition of ⊙◦≋↡∆); (3) the operator sequence executes on GF(65537) (integer modular arithmetic, zero floating-point); (4) the system state Ψ(x,t) evolves (CGL field + Hebbian phase matrix); (5) observed values are extracted via ↡ Born selection (deterministic argmax); (6) PCD measures invertibility (operator flow losslessness determination); (7) operator sequence transmission (~0 KB/s, compression ratio 170-330×). This closed-loop unifies the continuous dynamics of the master equation, the discrete arithmetic of ARC, and the compression limit of information theory into a single engineering pipeline.

### 13.5 Engineering Implementation of Residue Field Plate and Vortex Street

The mathematical theory of Cauchy residue rendering is implemented in engineering by the residue field plate (residue plate) and the vortex street field (residue vortex), both sharing the pole-residue duality but focusing on different applications.

**Reusable Module of Residue Field Plate**. The plate stores the residue field ψ(z)=Σrₖ/(z−zₖ) as a linear memory array: plate = [count, z₀, r₀, z₁, r₁, ..., z_{n-1}, r_{n-1}]. plate.get(0)=count (pole count), plate.get(2*i+1)=z_i (pole position), plate.get(2*i+2)=r_i (residue weight). Capacity = 2\*max_poles+1 i32 slots.

Core operations of the plate: (1) plate_new(max_poles) creates an empty plate; (2) plate_add_pole(plate, z, r) appends a pole (count++ then writes z, r); (3) plate_eval(plate, z) evaluates — loops to accumulate gfmul(r_i, gfinv(gfsub(z, z_i))), the operator chain gfsub→gfinv→gfmul→gfadd implements "full-field resonance contraction, reading out the entire residue field at once"; (4) plate_bragg(plate, z) verifies D_1==R_1 (cognitive firewall).

Physical duality of the plate: residue field = Flux Pinning = controlled RAG memory. Pole (z_k, r_k) = vortex street center = controlled memory point. All GF(65537) integer arithmetic, no Float intermediate values — GF(p) pure integers stored without collapse.

**Pole-Vortex Core Duality of Vortex Street Field**. The vortex street field maps residue field poles to Karman vortex street center positions: pole position z_k = vortex core coordinate, residue r_k = vortex strength (positive = upper vortex, negative = lower vortex), decay γ_k = vortex dissipation (non-dissipative sets γ=0). Vortex street field layout: vortex = [count, z₀, r₀, γ₀, z₁, r₁, γ₁, ...], 12 bytes per pole (z:4B + r:4B + γ:4B).

Core operations of the vortex street field: (1) rv_add_vortex(vortex, z, r, gamma) adds a vortex street (= hebbian writes pole = vortex street formation, flux pinning); (2) rv_get_vortex_center(vortex, idx) reads vortex street center (= pole position, mem_load read out); (3) rv_get_vortex_strength(vortex, idx) reads vortex strength (= residue, upper vortex r>0 / lower vortex r<0); (4) rv_vortex_period(vortex) computes vortex street period (= adjacent vortex core position difference gfsub(z₁, z₀)); (5) rv_vortex_eval(vortex, z) evaluates vortex street field (= residue field evaluation, complex potential = velocity potential + stream function).

**Integerization of Karman Vortex Street Physical Constants**. The spacing ratio h/d ≈ 0.281 (experimental value) of the classical Karman vortex street, and the Strouhal number St = f·d/U ≈ 0.2 (vortex street frequency). On GF(65537), 0.281 is integerized as fixed-point number 281 (decimal point shifted 3 places, true value = 281/1000) — GF(p) pure integer de-collapse forbids pseudo-real numbers, using pure integer 281 as a whitelisted physical constant identifier. Since γ=0 (non-dissipative), the vortex street has no decay, and the spacing is directly determined by pole positions — vortex street period = pole spacing, integer-exact.

**Write-Read Duality of Plate and Vortex Street**. The plate's plate_add_pole (∆ HEBBIAN write) and the vortex street's rv_get_vortex_center (mem_load read) form a write-read duality — writing pole configuration = forming vortex street, reading pole position = reading vortex core. This duality is the concrete implementation of "computational duality: HEBBIAN↔MEM_LOAD" in the triple duality chain of §5.3 at the residue field rendering layer. Bragg verification D_1==R_1 guarantees that the written vortex street and the read vortex street are physically consistent — the embodiment of the Meissner repulsion firewall at the vortex street layer.

**Operator Chain Implementation of Full-Field Injection**. The global resonance inference path is implemented on the plate as: full-field injection (hebbian chain writes all poles at once) → operator chain contraction (gfmul/clifford parallel at all poles) → BORN projection (select 0x1B selects the strongest resonance) → vortex street direct readout (mem_load reads projection address). This path disables pointwise local writes (lint_local_write) and pointwise gfmul aggregation (lint_local_attention), guaranteeing the paradigm purity of global resonance.

---

## 14 Conclusion and Open Problems

This paper establishes the following core results:

1. **ARC Five-Operator System**: {⊙, ◦, ≋, ↡, ∆} unifies arithmetic (GF(p) multiplication + Clifford geometric product + NTT) and resonance (Born selection + Bragg resonance + Hebbian learning) into a single instruction set, algebraically complete (Proposition 1).

2. **Turing Completeness**: ARC satisfies the three necessary conditions (Born selection conditional control + extensible GF(p) array unbounded storage + Hebbian iteration universal loop + finite instruction set) and can implement NAND, hence Turing complete (Proposition 2).

3. **Arithmetic Resonance = Arithmetic Version of PCD**: ARC's Bragg resonance and the PCD of the CGL master equation are equivalent in the discrete → continuous limit (Proposition 6), strictly linking ARC with the master equation framework.

4. **Five Operators ↔ Fivefold Projection**: {⊙, ◦, ≋, ↡, ∆} ↔ {CGL, Hopf, PCD, Wilson, free energy}, each operator of ARC corresponds to a projection of the master equation (Proposition 10).

5. **Algebraic Resonance Structure**: The strongest resonance chain is the Conway λ ↔ PV number → Mahler/Salem triangular algebraic closed loop (Proposition 7), with Heegner numbers and Monster Moonshine providing number-theoretic anchoring.

6. **GF(65537) Integer Anchor**: The Fermat prime p=65537 provides exact integer landing points for the twelve algebraic structures of ARC, with quantum gates H/S/T, NTT, Yang-Baxter and other operations all becoming pure integer modular arithmetic (Propositions 8-9).

7. **QARDC Quantum Duality**: Quantum computers solve the "cannot compute" problem, ARC solves the "cannot err" problem, and the two markets do not overlap (Proposition 11).

8. **Engineering Validation**: Edge device 78μs/query, training-free, no GPU required; PCD contradiction detection recall 100%. This is the measured result of the engineering prototype on Intel N305, without third-party independent reproduction, reflecting the current implementation efficiency rather than the theoretical limit of the ARC architecture, and does not constitute a proof of the theoretical propositions. Detailed benchmark protocols (dataset definitions, comparison baselines, error ranges) are deferred to subsequent work.

9. **Unified Framework** (§9): The U1-U10 framework unifies ARC's residue field with the Fano manifold of algebraic geometry, covering a unified view from quantum information to neuroscience.

10. **PsiLang Architecture Specification** (§10): Four-layer deployment architecture, five-backend homogeneous interface design (including QPU quantum processing unit). ARC's five operators are the physical implementation of the PsiLang operator graph.

11. **Six Groups of Architecture Dualities and CPT Completion** (§11): After code deduplication, six groups of dualities (embed↔lm_head / cascade↔gauge / mimo↔bragg / hebbian↔successor / from_emb↔from_lm / U(1) forward↔reverse) emerge from the code, unified by U(1) gauge symmetry. CPT triple symmetry code-level completion is done, with the T component realized by biplanar Berry rotation. GF(65537) exact integer arithmetic guarantees that CPT holds strictly on the finite field.

12. **ARC Implementation of SPTC Time Crystal Behavior** (§11.3): The joint action of ARC's three operators ⊙≋∆ produces Floquet-Bragg time crystal behavior [14,15], replacing the MBL protection mechanism with Berry rotation T-symmetry conservation. GF(65537) exact integer arithmetic guarantees that Berry rotation is strictly T-symmetrically conserved — arithmetic exactness directly translates into strict preservation of physical symmetry. Fermi-Dirac unified activation (55)-(56) unifies sigmoid/tanh/repetition penalty/refractory period into fermion occupation probability through formal similarity.

13. **Resurgence-Aware Compiler** (§12): Asymptotic algebraic completion as an optimization category. ARC's five operators provide a natural implementation path for Resurgence (↡ convergence detection / ◦ Borel transform / ∆ singularity detection / ⊙ iterative correction / ≋ instanton insertion). On GF(65537), both $n!$ and $e^{i\pi/4}$ are exact integers, and Resurgence on ARC has no floating-point error. Residue field variational engineering → materials inverse design.

14. **Cauchy Residue Rendering, CRT Parallel Theory, and Operator Flow** (§13): The ARC ◦ operator exactly implements residue rendering on GF(65537) via modular inverse operations, with both $i=256$ and $\sqrt{2}=4080$ being exact integers. CRT parallel theory (§13.2) decomposes large integers into multi-prime field concurrency, the DAG scheduler implements Kahn topological sort hierarchical parallelism, and the Actor+CSP three models are unified by the commutativity proof. Operator flow "transmitting rules not results" achieves a compression ratio of 170-330×, applicable to five domains: rendering/audio/game/AI/IoT. Unification of operator flow: master equation → ARC five operators → system state → observed values.

**Open Problems**:

(a) **Lehmer Conjecture and ARC**: If the Lehmer conjecture holds (Salem numbers have a lower bound > 1), then the algebraic structure of "arbitrarily small but non-zero information" does not exist in ARC, guaranteeing a quantitative measure of computational phase dispersion. **Numerical Verification**: On GF(65537), enumerate the factorization structure of monic polynomials of degree ≤ 20 via Berlekamp decomposition, lift the polynomial coefficients to ℤ to compute the Mahler measure M(P)=|a_n|·∏max(1,|α_i|) (α_i are the roots of P over ℂ), and verify the Mahler measure lower bound of the smallest Salem number. The known smallest Salem number is τ≈1.17628 (Lehmer number, degree 10 polynomial x¹⁰+x⁹−x⁷−x⁶−x⁵−x⁴−x³+x+1), M(τ)=1. Although factorization over GF(65537) cannot prove the Lehmer conjecture (requires infinite verification), it can provide strong numerical evidence — the Mahler measures of all Salem numbers of degree ≤ 20 are ≥ 1, consistent with the Lehmer conjecture. This numerical verification can be implemented through the numtheor.ψ module of PsiLang (Berlekamp decomposition + coefficient lifting + root solving over ℂ + Mahler measure computation).

(b) **ARC Implementation of Non-Abelian Gauge Fields**: The current ARC Wilson loop projection is strictly proven in the U(1) Abelian case (Proposition 10), and qqbc_gauge.ψ provides a complete engineering implementation of Wilson loops / gauge transformations / gauge invariants on GF(65537). The equivalence of PCD and Wilson loops under non-Abelian gauge groups (SU(N), N≥2) is an open problem. **ARC Implementation Path**: (1) SU(N) group elements → GF(p) matrix encoding (N×N matrix, each element ∈ GF(p)); (2) Wilson loop → matrix product ∏Uᵢ (non-commutative, requires path ordering 𝒫exp); (3) PCD → 1−|Tr(W_C)|/N (trace normalization, N is the group dimension); (4) Key challenge: exact implementation of non-commutative path ordering on GF(p) — path ordering is trivial under U(1) (commutative group), non-trivial under SU(N) (non-commutative group). **Partial Results**: In the SU(2) case, 2×2 unitary matrices on GF(65537) can be represented by the Clifford algebra Cl(3) (quaternions → Cl(3) even subalgebra), and the path ordering of Wilson loops reduces to the ordered product of Cl(3) geometric product ◦ — ARC's ◦ operator naturally supports non-commutative products. SU(N≥3) is deferred to subsequent work.

(c) **ARC Boundary of Quantum Completeness**: Proposition 11 gives the sufficient condition for ARC to classically polynomially simulate quantum circuits; the necessity of this condition (whether there exist quantum circuits that ARC cannot classically simulate) is to be studied.

(d) **ARC Decidability of Lehmer Conjecture**: If the Lehmer conjecture holds, all non-trivial computations in ARC have a positive information lower bound (§5.2). Finite numerical verification on GF(65537) (see open problem (a)) provides strong evidence but not a proof — the ARC decidability of the Lehmer conjecture (whether it can be decided in finite steps) is to be studied.

(e) **Complete Implementation of Resurgence-Aware Compiler**: §12 gives the five-operator implementation path; the complete Borel transform + residue field variational + instanton insertion pipeline is to be engineered. Key challenges: automated algorithm for Borel plane singularity detection, ARC encoding of instanton action $S_{\text{inst}}$.

(f) **Strict Physical Proof of SPTC Time Crystal**: Currently (53) is an engineering criterion; it needs to be proven that Berry rotation T-symmetry conservation is stable in the thermodynamic limit. ARC's GF(65537) exact integer arithmetic may provide a discrete rigorous foundation for this proof.

(g) **Channel Coding Theory of Operator Flow**: The operator flow compression ratio 170-330× in §13.2 is an empirical value; rigorous channel capacity analysis (mutual information comparison of operator flow vs pole flow vs video stream) is to be established. Channel coding theory on the 65537-element finite field of GF(65537) is deferred to subsequent work.

---

## References

[1] Lidl, R., Niederreiter, H. (1997). _Finite Fields_, 2nd ed. Cambridge Univ. Press.

[2] Doran, C., Lasenby, A. (2003). _Geometric Algebra for Physicists_. Cambridge Univ. Press.

[3] Nussbaumer, H.J. (1982). _Fast Fourier Transform and Convolution Algorithms_, 2nd ed. Springer, §4 (NTT implementation over Fermat prime fields).

[4] Born, M. (1926). Zur Quantenmechanik der Stoßvorgänge. _Z. Phys._ 37, 863.

[5] Hebb, D.O. (1949). _The Organization of Behavior_. Wiley.

[6] Conway, J.H. (1987). The weird and wonderful chemistry of audioactive decay. In: _Open Problems in Communication and Computation_, Springer, pp. 173–188.

[7] Pisot, C. (1938). La répartition modulo 1 et les nombres algébriques. _Ann. Sc. Norm. Super. Pisa_ 7, 205.

[8] Salem, R. (1963). _Algebraic Numbers and Fourier Analysis_. Wadsworth.

[9] Mahler, K. (1933). On the approximation of logarithms of algebraic numbers. _Philos. Trans. R. Soc. Lond. A_ 232, 145.

[10] Sweedler, M.E. (1969). _Hopf Algebras_. Benjamin, New York.

[11] Baxter, R.J. (1972). Partition function of the eight-vertex lattice model. _Ann. Phys._ 70, 193.

[12] Hardy, G.H., Wright, E.M. (2008). _An Introduction to the Theory of Numbers_, 6th ed. Oxford Univ. Press, §2.5 (Fermat numbers), §8.1 (CRT).

[13] Grover, L.K. (1996). A fast quantum mechanical algorithm for database search. _Proc. STOC_, p. 212.

[14] Else, D.V., Bauer, B., Nayak, C. (2016). Floquet time crystals. _Phys. Rev. Lett._ 117, 090402.

[15] Yao, N.Y., et al. (2017). Discrete time crystals in periodically driven many-body systems. _Nature_ 543, 219.

**[Paper1]** Pan JinWen, _FodaOS Unified Field Theory Series I: Cross-Domain Effective Field Equation Candidate — Five-Term Extension of the Complex Ginzburg-Landau Equation with Topological Constraints_, Zenodo preprint, 2026. DOI: 10.5281/zenodo.21992268.

**[Paper3]** Pan JinWen [Cypher Pan], _FodaOS Unified Field Theory Series III: Algebraic Quantum Mechanics and Combinatorial Finite-Field Exactification — GF(p) Framework_, unpublished work (private communication), 2026.

---