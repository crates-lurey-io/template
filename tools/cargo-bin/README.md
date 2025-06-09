# tools-cargo-bin

[![Rust](https://github.com/crates-lurey-io/tools-cargo-bin/actions/workflows/rust.yaml/badge.svg)](https://github.com/crates-lurey-io/tools-cargo-bin/actions/workflows/rust.yaml)

Intended to be a git sub-module of workspaces that use `cargo-bin`.

## Usage

```sh
cargo bin CRATE
cargo bin --sync-aliases
cargo bin --install
```

See also: <https://github.com/dustinblackman/cargo-run-bin>.

## Installation

To add as a sub-module:
```sh
git submodule add https://github.com/crates-lurey-io/tools-cargo-bin tools/cargo-bin
```

Then modify your workspace's `Cargo.toml`:
```toml
[workspace]
members = [
    "tools/cargo-bin",
]
```

Then add an alias to `.cargo/config.toml`:
```toml
[alias]
bin = ["run", "--package", "cargo-bin", "--"]
```
