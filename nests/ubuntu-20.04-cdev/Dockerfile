FROM docker.io/castedo/tskit-nests:ubuntu-20.04-mspdev

RUN apt-get -y install libcunit1-dev libconfig-dev

RUN apt-get -y install meson ninja-build

RUN apt-get -y install valgrind kcachegrind

RUN apt-get -y install clang-format-6.0
RUN update-alternatives --install /usr/local/bin/clang-format clang-format /usr/bin/clang-format-6.0 1

