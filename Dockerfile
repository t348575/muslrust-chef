FROM clux/muslrust:1.78.0-stable AS builder
RUN cargo install cargo-chef
RUN apt update && apt install clang wget -y
RUN wget https://github.com/rui314/mold/releases/download/v2.31.0/mold-2.31.0-x86_64-linux.tar.gz -O mold.tar.gz
RUN mkdir mold && tar -xvzf mold.tar.gz -C mold --strip 1
RUN cp mold/bin/mold /usr/local/bin
