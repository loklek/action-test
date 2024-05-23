FROM rust:bookworm AS builder

WORKDIR /app/backend

COPY . .

RUN ls -la

# RUN cargo install --path .

# -----
# FROM debian:12.5-slim

# WORKDIR /app

# COPY --from=builder /usr/local/cargo/bin/action-test /usr/local/bin/action-test

# CMD ["action-test"]
