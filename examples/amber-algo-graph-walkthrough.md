# Amber Algo Graph Flow Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 85 | hold |
| stress | search depth | 220 | ship |
| edge | boundary pressure | 270 | ship |
| recovery | complexity | 235 | ship |
| stale | input width | 181 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around search depth and complexity.
