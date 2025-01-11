list:
    just --list

check:
    cargo clippy -- -W clippy::correctness -D warnings
    cargo fmt --check

build:
    cargo build --features dev

build-release:
    cargo build --release --features dev

run *args:
    cargo run --features dev -- {{args}}

run-release *args:
    cargo run --release --features dev -- {{args}}
