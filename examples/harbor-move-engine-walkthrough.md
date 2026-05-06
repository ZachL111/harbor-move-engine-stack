# Harbor Move Engine Stack Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 203 | ship |
| stress | move ordering | 164 | ship |
| edge | search width | 215 | ship |
| recovery | endgame risk | 213 | ship |
| stale | position pressure | 194 | ship |

Start with `edge` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stress` becomes less cautious without a clear reason, I would inspect the drag input first.
