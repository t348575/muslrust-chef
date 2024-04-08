FROM clux/muslrust:1.77.1-stable AS chef
USER root
RUN cargo install cargo-chef
RUN apt-get update && apt-get install clang lld -y
