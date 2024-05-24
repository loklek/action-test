FROM rust:bookworm AS builder

ARG DELETE_PREV_TARGET

WORKDIR /app/backend

COPY . .

# RUN cargo install --path .

# -----
# FROM debian:12.5-slim

# WORKDIR /app

# COPY --from=builder /usr/local/cargo/bin/action-test /usr/local/bin/action-test

# CMD ["action-test"]
