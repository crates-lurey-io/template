# Changelog

This changelog is looser than most, as it's tracking HEAD on a git branch.

## 2025-07-19

### Changed

- Various `cargo just ...` commands now pass `--all-features`

## 2025-07-14

### Added

- When a library (`--lib`) and intended to be published, adds `CHANGELOG.md`
- Added `RUSTDOCFLAGS="-D warnings"` and `cargo just doc-check`
- Added `.vscode/settings.json`
- Added `--all-features` to `cargo just coverage*`

### Changed

- Added some punctuation, correctly includes `crates-lurey-io/` as repo owner
