# template-crate

A template for `cargo-generate` for [crates.lurey.io][].

[crates.lurey.io]: https://crates.lurey.io

[![Test](https://github.com/crates-lurey-io/template-cargo/actions/workflows/test.yml/badge.svg)](https://github.com/crates-lurey-io/template-cargo/actions/workflows/test.yml)

This is an opioniated template for creating new crates that are intended to be
managed by [crates.lurey.io][], and a such there are no stability or really any
guarantee at all.

## Usage

Install [`cargo-generate`][], and then run:

[`cargo-generate`]: https://crates.io/crates/cargo-generate

```sh
cargo generate gh:crates-lurey-io/template
```

## Dependencies

The following are `dev-dependencies` that are used by the generated project:

- [`cargo-binstall`][]; for downloading pre-built binaries instead of building.
- [`cargo-llvm-cov`][]; for generating code coverage reports.
- [`cargo-nextest`][]; for running tests in a project.
- [`cargo-run-bin`][]; for running vendored tools in a project.
- [`just`][]: for running commands in a project.

[`cargo-binstall`]: https://crates.io/crates/cargo-binstall
[`cargo-llvm-cov`]: https://crates.io/crates/cargo-llvm-cov
[`cargo-nextest`]: https://crates.io/crates/cargo-nextest
[`cargo-run-bin`]: https://crates.io/crates/cargo-run-bin
[`just`]: https://crates.io/crates/just
