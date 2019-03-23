FROM ubuntu:16.04

RUN apt update && \
    apt -y install bzip2 curl language-pack-pl libglu1i libxi6 libxrender1 tar unzip wget zip \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/*

RUN locale-gen pl_PL.UTF-8
ENV LC_ALL=pl_PL.UTF-8
ENV LANG=pl_PL.UTF-8
ENV LANGUAGE=pl_PL.UTF-8
RUN wget -c https://download.blender.org/release/Blender2.79/blender-2.79b-linux-glibc219-x86_64.tar.bz2
RUN tar xvjf blender-2.79b-linux-glibc219-x86_64.tar.bz2
RUN mv blender-2.79b-linux-glibc219-x86_64 blender
RUN rm -rf blender-2.79b-linux-glibc219-x86_64.tar.bz2
RUN ln -s /blender/blender /bin/blender
