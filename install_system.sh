#!/bin/bash

PACKAGE_LIST_EARLY="\
eatmydata \
etckeeper \
git \
"

PACKAGE_LIST="\
alsa-utils \
emacs \
gimp \
imagemagick \
libreoffice \
lynx \
mc \
moc \
mplayer \
gddrescue \
qemu \
sshfs \
tmux \
vim \
wordnet \
xz-utils \
zsh \
"

PACKAGE_LIST_X11="\
aqemu \
ddd \
doxygen-gui \
gnome-commander \
gpodder \
i3 \
icedove \
rxvt-unicode-256color \
vlc \
wdm \
xfonts-terminus \
xserver-xorg \
xterm \
"

PACKAGE_LIST_DEV="\
check \
clang \
doxygen \
gcc \
gdb \
gitg \
gitk \
git-cola \
g++ \
libclang-dev
libglib2.0-doc \
libsdl2-dev
lldb \
pry \
python3 \
rake \
ruby-method-source \
swig \
valgrind \
"

PACKAGE_LIST_DEV_DOC="\
aspell-doc \
cppman \
erlang-manpages \
git-doc \
git-man \
glibc-doc \
manpages \
manpages-dev \
mplayer-doc \
ncurses-doc \
opencl-1.2-man-doc \
opengl-4-man-doc \
openmpi-doc \
"

apt-get install ${PACKAGE_LIST_EARLY}

git config --global user.email "root@localhost"
git config --global user.name  "root"

eatmydata apt-get install ${PACKAGE_LIST} ${PACKAGE_LIST_X11} ${PACKAGE_LIST_DEV} ${PACKAGE_LIST_DEV_DOC}

