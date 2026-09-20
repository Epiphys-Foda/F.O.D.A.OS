# PsiLang Syntax Reference (English)

> English translation of the canonical grammar card (`bin\qlc2.exe --syntax`) — qlc2 v0.3.0, canonical dialect v2, eight frozen keywords.
> **The card printed by the binary is authoritative.** Where this translation and the binary card disagree, the binary card wins — the difference is a compiler defect; log it and fix (dialect iron rule 6 below).

====================================================================
This card = every syntax property built into the compiler. With it, an AI or a human needs no other language documentation.
Motto: parse failure is failure (one dialect, zero compatibility layers); comments are `#` only; indentation only; zero floats.

[Keywords] (frozen 8, never extended)
  let  true  false  if  else  for  in  return
  Reserved words are hard errors: fn var const match elif while pub mod break continue use import
  class interface trait enum type func to ...

[Declarations & bindings]
  let x = expression            # variable binding (the only declaration form)
  let true X = expression       # global (visible across functions; formerly pub)
  let false K = expression      # immutable constant (formerly const)
  let f(a, b) = expression      # function (single-line body)
  let f = (x) -> expression     # λ capture-free arrow function (single expression auto-returned;
                                #   capturing closures not enabled — on the roadmap)
  let f(a, b) =                 # function (indented body; tail expression of the body = return value)
      expression
  let m = "path.ψ"              # module import (file = module; the import/mod keywords are forbidden)
  Assignment:  x = expression   # bare assignment; arrays: a[i] = v
  Note: let-bound names and function names share one namespace; user functions shadow
        same-named host builtins.

[Control flow] (indentation only — braces {} and colons : are hard errors)
  if condition                  # if is an expression (it has a value)
      body
  else if condition             # same-level flat chain (elif forbidden)
      body
  else
      body
  for i < N                     # conditional loop (the only loop; absorbs while)
      body
                                # ⚠ counted loops: `i` must be let-bound first; advance manually at the
                                #   body tail: i = i + 1
                                #   (exception: if the body leaves `i` unassigned and the condition is
                                #   VAR<N, the compiler advances it automatically)
  for v in array                # iteration loop (in here = iterate)
      body
  for ... else                  # sequential body after the loop (no break; the else list = the for list)
  return expression             # the only exit (optional; the tail expression is the return value)
  match is retired → use in matching (see below)

[in pattern matching] (the replacement for match; starts with EXPR in, value-domain-driven pure value dispatch)
  Disambiguation: in after for = iterate; in anywhere else = pattern match.
  Forms (arms at equal indent, first match fires, `pattern -> result`):
  let classify(n) =
      n in
          0 -> "zero"                 # literal (integer/string/boolean)
          1 | 2 -> "small"            # multiple values (| separated; no bindings)
          90..100 -> "A"              # half-open interval [90,100)
          100..=200 -> "B"            # closed interval [100,200]
          n if n < 0 -> "neg"         # guard (if condition; the binding name is usable)
          x -> x                      # variable binding (the value is bound to x)
          _ -> "other"                # wildcard (conventionally the last arm)
  · No arm matched = honest hard runtime death rc=101 (fast) / -1 sentinel (collision) — never a silent 0
  · Result arms are expressions; the whole in-expression has a value: let x = n in ... /
    write it directly as the tail of a function body
  · Not implemented (parse-time hard errors): array destructuring [a,b], regex ~"...", len=N

[Operators] (precedence overview, high to low)
  Arithmetic:  **  *  /  //  %  +  -    # / and // are synonyms; bignum unlimited precision
  Concatenation:  + single polymorphic add (integer/array/string)
                                # ⚠ ++ is never used for any concatenation (reserved for inc/dec; user
                                #   ruling 2026-09-12); array concatenation is also available via the host
                                #   arr_concat(A,B); string×number mixed concatenation is a hard error → int_to_str
  Comparison:  ==  !=  <  >  <=  >=     # results are 1/0
  Logical:  &&  ||  !                   # short-circuit; results normalized to 0/1 (not C value selection)
  Bitwise:  &  |  ^  <<  >>  ~          # >> is arithmetic shift (negatives floor, e.g. -16384>>15 = -1);
                                        #   shift count <0 or >=64 → result 0 (both channels agree;
                                        #   SYNTAX_ISSUES #10 fixed 2026-09-13)
  Range:  a..b (half-open)  a..=b (closed)
  Ternary:  condition ? a : b
  Pipeline:  x |> f                     # value into function
  Membership:  v in array               # (expression position) membership test → 1/0
  Six operators (first-class, GF(65537) semantics): ⊕ ⊙ ◦ ≋ ↡ ∆
    ⊕: scalar = field add; array⊕array = elementwise field add; scalar⊕array = broadcast
                                        # [1,2]⊕[3,4]=[4,6]
    ⊙: scalar = field multiply ⚠ reserved operator (tensor product reserved; user ruling)
                                        # array×array is a hard death; array multiply: ◦ (matrix) / ⊕ (field add)
    ◦: the linear-map composition family (matrix multiply)
                                        # 1D◦1D = inner product (scalar); 2D◦1D = matrix×vector;
                                        # 1D◦2D = vector×matrix; 2D◦2D = matrix multiply
       (2D = nested row arrays [[1,2],[3,4]]; shape mismatch = honest hard death)
    ≋: cyclic convolution (convolution theorem / frequency-domain composition; equal-length arrays;
       scalar = field multiply)         # [1,2]≋[3,4]=[11,10]
    ↡: Born Selection, prefix unary: nonzero collapses → 1/0 (the control-flow primitive)
    ∆: Hebbian update w ∆ s = (w + (s>>8)) mod P
                                        # small-step bounded accumulation; elementwise broadcast over arrays
    Dot product = the 1D form of ◦ ([1,2]◦[3,4]=11)
    ⊗ (U+2297): not a language operator (the operator set is closed at six) — the tensor product is
       the ◦ geometric-product outer component / composable derivations / a host op on demand
  Negative numbers: 0 - x (recommended); absolute value via the if-branch pattern
  ⚠ % is C-style truncation (negative dividend → negative remainder) — for GF normalization use
    the mod_norm(x, m) host op

[Types & literals]
  Integer: the only scalar; bignum unlimited precision (63-bit word-slot fast path, transparent
           promotion); literals 0x / 0o / 0b / decimal
  Fixed-point: the d.dd form = exact rational (zero floats; 0.1+0.2 == 0.3 is true)
  String: "..." byte string; expression interpolation {expr} (revived as R6) — let s = "hello,{word}!"
          print "1+1={add(1,1)}" (the paren-less print form); goes through full expression parsing
          internally; non-string values auto to_str; braces cannot nest / no escapes; desugars to
          str_concat+to_str
  Array: [1, 2, 3] literal; a[i] indexing (0-based); nested literals supported
  Boolean: true / false (independent semantics, not 0/1 values)
  Array/string chained methods (value methods): a.push(v) a.len() s.upper() a[1..] a.flat()
    (looked up in a frozen host table by method name; .slice(a,b) = [a,b) interval semantics)

[Modules]
  let m = "mymod.ψ"          # top-level anchor line → the whole module file is inlined
  m.funcName(...)  m.CONST   # qualified access (mod.CONST is value semantics)
  Search order: the program's directory → first-level subdirectories of the program's directory →
                each root of FODAOS_PLUGIN_PATH and its first-level subdirectories
  print/host names inside modules stay bare; host-name imports are exempt from the prefix.

[Host builtins] (frozen ABI, additive only — full list: qlc2 --abi)
  ⚠ Portability: short names (gfadd, small_div, etc.) are QLC2-specific — cross-runtime modules use
    the ⊕⊙◦ six operators or full host names
  Common: print len range arr_new_n arr_push arr_get arr_set arr_slice
          str_split str_join str_replace str_repeat int_to_str str_to_int
  GF(65537): gf_add gf_sub gf_mul gf_div gf_inv gf_sqrt gf_pow gf_gemv
  gf_div dual contract (R9): the name path = b≡0 → 0 (DFL absorption, same as gf_inv(0)); the bare
          host_call(219) = b≡0 honest hard death (requirement-doc P1 explicit division variant).
          gf_sqrt = Tonelli-Shanks min-root canon (R8: √2=4080, √4=2, √65536=256; 4080²≡2).
  Certificates/algebra: cert_zero(d) poly_eval(c,x) mod_norm(x,m) to_str(v)
  Number theory: isqrt icbrt small_div smod
  Enforcement: array out-of-bounds / division by zero (÷) / non-QR square root / GF inverse of zero /
          zero modulus → honest hard death rc=101

[Exit codes]
  0=ok  1=usage/parse  101=runtime error  103=timeout  (cmd_run: the return value = the exit code)

[Dialect iron rules] (violations are hard errors, zero tolerance)
  1. Comments are # only; // is the integer-division operator, not a comment
  2. No colon inline syntax (if c: x is a hard error); no brace blocks
  3. Line continuation is forbidden (&&/?:/argument lists are all single-line)
  4. An undefined identifier = a compile-time hard error (with spelling suggestions, see --guess)
  5. while/match/break/continue are reserved words and hard-error (loop skipping uses the flag pattern)
  6. When syntax is disputed, this card wins; if this card and compiler behavior disagree, it is a
     compiler defect — log it and fix it
====================================================================
Self-check commands: --syntax (this card) --abi (host table) --guess name (spelling suggestions)
                     --check file (full syntax check)

[Verification surface] (Rust verifies only the compiler binary itself — user ruling 2026-09-12)
  Contract verification = consistency of this card + --abi with compiler behavior (semantic
          disputes: this card wins)
  Machine-reading convention (the canonical contract for test-suite authors):
    · Last line = print(bare integer) — the canonical form of a stdout machine-readable verdict
    · Failure path = exit(non-zero) (host 10) or let the program return non-zero — the exit code is
      the preferred machine-readable channel
    ⚠ The text format of printing arrays/strings/interpolations evolves with display rendering and
      is NOT a machine-readable contract
    (case: array print changed from a debug format to recursive rendering; verdicts that depended on
    the old last-line form failed silently)
  Gate verification = selftest (dual-channel cross-check) + fixpoint (Kleene fixed point) + battery/canon
  Rust implementation details are outside the contract-verification surface; new capabilities go
  through libraries/plugins = zero new Rust verification obligations
