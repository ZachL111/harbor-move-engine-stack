# Field Notes

This note keeps the chess and game engines assumptions visible beside the checks.

The domain cases cover `position pressure`, `move ordering`, `search width`, and `endgame risk`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `search width` and `move ordering`, so those are the first two cases I would preserve during a refactor.

The local verifier covers this data so the notes stay tied to code.
