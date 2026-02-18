# syntax=docker/dockerfile:1
ARG RUBY_VERSION=3.4.8
FROM docker.io/library/ruby:$RUBY_VERSION-slim

WORKDIR /rails

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
      build-essential \
      curl \
      git \
      libpq-dev \
      libyaml-dev \
      pkg-config \
      postgresql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Install hledger
RUN curl -fsSL https://github.com/simonmichael/hledger/releases/download/1.42/hledger-linux-x64.tar.gz \
    | tar xz -C /usr/local/bin hledger

ENV BUNDLE_PATH="/usr/local/bundle" \
    HOME="/rails"

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["/rails/bin/docker-entrypoint"]

EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
