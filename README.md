# Project Jumpstart

This is a template project that aims to be a starting point for C++ development.

## Usage
The project is set up with a multistage Dockerfile. To compile, use or develop, you need a Linux host with Docker installed.

### Build and run
To build the application, in the project root run:
```docker image build -t jumpstart .```
Then run the app with
```docker container run --rm jumpstart```

### Develop
The recommended way to develop is to build the "builder" stage as an image:
```docker image build --target builder jumpstart:builder .```

## Tools and Technologies

The list of tools and technologies directly used in the project.

- Docker
- Rocky Linux
- Clang
- CMake
