# Contributing to PsiLang

Thanks for your interest. The repository has a deliberate split:

- **Open ψ sources** — `lib/` (standard library, self-hosting compiler family, domain libraries, frontend stack), `examples/`, `self_compile.ψ`. Everything here is plain ψ and open for contribution.
- **Binary compiler** — `bin/qlc2.exe` is distributed prebuilt; its source is not part of this repository. Issues about compiler behavior are welcome; pull requests cannot rebuild the binary.

## Acceptance workflow

1. `bin\qlc2.exe --check your_file.ψ` must report 0 errors.
2. `bin\qlc2.exe --run your_file.ψ` (or `--fast`) must execute cleanly.
3. **Semantic fingerprints are the refactor oracle.** A pure refactor must keep `commit` and `energy` byte-identical:

   ```text
   bin\qlc2.exe lib\core\stdlib\arr.ψ
   ```

   Record the fingerprint before your change, re-run after, compare. Comments, blank lines, paths and filenames do not affect the fingerprint; any semantic change does.

4. New examples belong in `examples/` and must print their expected output (see `examples/operators.ψ`).

## Style

- Sources are English-only; ψ identifiers use ASCII, operators use the native symbols (⊕ ⊙ ≋ ↡ ∆ ◦).
- Keep `#` comments sparse — the language prefers self-describing names; documentation lives in the README.
- Determinism first (DFL: Deterministic / Lossless / Non-random): no clocks, no randomness, no floating point in library code.
- Domain libraries import siblings within `lib/domain/` and the stdlib; keep the import graph acyclic.

## Papers

`papers/` holds the theory series (1-8, Chinese originals with English translations). Translation improvements and errata are welcome — open an issue with the paper number and section.
