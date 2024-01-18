FROM rockylinux:9.3 AS builder

RUN dnf install -y clang cmake
RUN echo "export CXX=/usr/bin/clang++" >> ~/.bashrc
WORKDIR /src
ENTRYPOINT [ "/bin/bash" ]


FROM builder AS build

WORKDIR /src/build
COPY . /src
RUN cmake .. && cmake --build .
WORKDIR /src
