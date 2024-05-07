# FROM rust:bookworm AS builder

# WORKDIR /app/backend

# COPY . .

# RUN --mount=type=cache,target=./target/release cargo install --path .
# RUN cargo install --path .

# -----

FROM debian:12.5-slim

WORKDIR /app

RUN apt-get update && apt-get install -y
# RUN apt-get update && apt-get install -y --no-install-recommends openssl libcurl4 && rm -rf /var/lib/apt/lists/*

# COPY --from=builder /usr/local/cargo/bin/action-test /usr/local/bin/action-test

# CMD ["action-test"]
