# harbor-move-engine-stack

`harbor-move-engine-stack` keeps a focused Elixir implementation around chess and game engines. The project goal is to build an Elixir toolkit that studies engine behavior through windowed input fixtures, with late-data behavior checks and explicit failure cases.

## Why It Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Harbor Move Engine Stack Review Notes

For a quick review, compare `search width` with `move ordering` before reading the middle cases.

## Features

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/harbor-move-engine-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `search width` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `edge` at 215, which lands in `ship`. The most cautious case is `stress` at 164, which lands in `ship`.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
