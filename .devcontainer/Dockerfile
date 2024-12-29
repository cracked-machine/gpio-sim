# for run instructions, see /workspaces/gpio-sim/.devcontainer/devcontainer.json

FROM ubuntu:22.04

RUN apt update -y && apt install -y \
    sudo\
    make\
    libgpiod-dev \
    git\
    build-essential\
    cmake \
    ninja-build \
    gdb \
    gdbserver \
    udev \
    usbutils \
    util-linux

# # package requirements for gpio-sim specific operations
# RUN apt update -y && apt install -y \
#     kmod 

ARG USER=user

RUN useradd -m $USER && echo "$USER:$USER" | chpasswd && adduser $USER sudo
RUN echo "$USER            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN adduser $USER dialout
RUN adduser $USER plugdev

CMD /bin/bash