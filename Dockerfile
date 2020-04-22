# base image
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
# Used by GitLab
    git \
# Used for Static Analysis
    clang-format-7 \
    python-minimal=2.7.* \
    wget \
    subversion \
# Used in running Memcheck
    valgrind \
# Used in running SCT
    tox \
    curl \
    python3 \
    bubblewrap \
    libffi-dev \
    python3-dev \
    libxslt1-dev \
    libclang1-6.0\
# Used in Doxygen
    doxygen \
# Clean apt cache
&& rm -rf /var/lib/apt/lists/* \
&& ln -s /usr/lib/llvm-6.0/lib/libclang.so.1 /usr/lib/libclang.so

# Proxy settings
ENV http_proxy=http://10.158.100.9:8080
ENV https_proxy=http://10.158.100.9:8080

CMD ["/bin/bash"]
