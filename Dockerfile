# base image
FROM ubuntu:22.04

# system dependencies
RUN apt update -y && apt install -y wget \
                                    libfontconfig \
                                    libdbus-1-3 \
                                    libxcb-glx0 \
                                    libx11-xcb-dev \
                                    libxcb-icccm4 \
                                    libxcb-keysyms1 \
                                    libxcb-image0 \
                                    libxcb-randr0 \
                                    libxcb-render-util0 \
                                    libxcb-shape0 \
                                    libxcb-sync1 \
                                    libxcb-xfixes0 \
                                    libxcb-xinerama0 \
                                    libxcb-xkb1 \
                                    libxext6 \
                                    libxkbcommon-x11-0 \
                                    ffmpeg \
                                    libsm6 \
                                    libegl1

# defining workdir
WORKDIR /home
