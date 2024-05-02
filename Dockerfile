FROM rust:bookworm AS builder

WORKDIR /app/backend

COPY . .

RUN cargo install --path .

RUN echo $PATH
RUN ls -l /usr/local/cargo/bin/

# -----

FROM debian:12.5-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends openssl libcurl4 && rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/cargo/bin/action-test /usr/local/bin/action-test

CMD ["action-test"]
