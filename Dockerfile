FROM pytorch/pytorch:1.0-cuda10.0-cudnn7-devel

# Install apt packages
RUN apt-get update && apt-get install -y \
git \
vim-gtk3 \
wget \
tmux \
dbus \
dbus-x11 \
terminator

RUN apt-get install -y python3-pip

RUN python3 -m pip install --upgrade pip
RUN pip3 install scipy
RUN pip3 install opencv-python

RUN rm -rf /var/lib/apt/lists/

WORKDIR /root
