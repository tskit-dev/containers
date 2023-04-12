# NOTE: sha256 tags only seem to work when pulling from quay.io.
# Trying to pull from docker.io gets you a "manifest not known"
FROM quay.io/fedora/fedora

WORKDIR /bootstrap

COPY bootstrap_devel.sh /bootstrap

RUN dnf install -y gcc g++ meson python3.10 python3.10-devel \
  CUnit-devel \
  zlib-devel \
  bzip2-devel \
  gh \
  git \
  meson \
  pkgconfig \
  curl \
  valgrind \
  gdb \
  # Convenience follows:
  zsh \
  neovim \
  vim \
  kitty \ 
  mozilla-fira-* \
  ripgrep \
  && curl -sS https://starship.rs/install.sh | sh -s -- --yes \
  # Clean up our download cache
  && dnf clean all
