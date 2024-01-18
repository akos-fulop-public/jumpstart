FROM rockylinux:9.3 AS builder

RUN dnf install -y clang cmake
RUN echo "export CXX=/usr/bin/clang++" >> ~/.bashrc
WORKDIR /src
ENTRYPOINT [ "/bin/bash" ]


FROM builder AS build

WORKDIR /build
COPY . /src
RUN cmake /src && cmake --build .
WORKDIR /src

FROM rockylinux:9.3

WORKDIR /app
COPY --from=build /build/src/app /app/app
ENTRYPOINT [ "/app/app" ]
