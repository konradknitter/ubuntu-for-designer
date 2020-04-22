# base image
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
# Used by GitLab
    git \
# Used for Static Analysis
    clang-format \
    python-minimal=2.7.* \
    wget \
    subversion \
# Used in running Memcheck
    valgrind \
# Used in running SCT
    tox \
    curl \
    python3 \
    python3.6 \
    bubblewrap \
    libffi-dev \
    python3.6-dev \
    libxslt1-dev \
    libclang1-6.0\
# Used in Doxygen
    doxygen \
# Clean apt cache
&& rm -rf /var/lib/apt/lists/* \
&& ln -s /usr/lib/llvm-6.0/lib/libclang.so.1 /usr/lib/libclang.so

CMD ["/bin/bash"]
