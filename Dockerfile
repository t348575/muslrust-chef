FROM clux/muslrust:1.77.1-stable AS builder
RUN cargo install cargo-chef
RUN apt update && apt install clang wget -y
RUN wget https://github.com/rui314/mold/releases/download/v2.30.0/mold-2.30.0-x86_64-linux.tar.gz
RUN tar -xvzf mold-2.30.0-x86_64-linux.tar.gz
RUN cp mold-2.30.0-x86_64-linux/bin/mold /usr/local/bin
