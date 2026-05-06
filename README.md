# amber-algo-graph-flow

`amber-algo-graph-flow` is a compact OCaml repository for algorithms, centered on this goal: Package an OCaml local lab for graph analysis with windowed input fixtures, late-data behavior checks, and documented operating limits.

## Project Rationale

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Amber Algo Graph Flow Review Notes

The first comparison I would make is `boundary pressure` against `input width` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/amber-algo-graph-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `boundary pressure` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The OCaml code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Next Improvements

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
