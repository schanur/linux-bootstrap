#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail


PACKAGE_LIST_EARLY_1="\
git \
"

PACKAGE_LIST_EARLY_2="\
eatmydata \
etckeeper \
"

PACKAGE_LIST="\
alsa-utils \
apparmor \
apparmor-docs \
apparmor-notify \
apparmor-profiles \
apparmor-profiles-extra \
apparmor-utils \
aptitude \
arj \
cclive \
colortest \
conntrack \
cups \
emacs \
exfat-utils \
gddrescue \
imagemagick \
lhasa \
libreoffice \
lynx \
lzip \
mc \
moc \
mplayer \
ncompress \
network-manager \
nfs-common \
openssh-server \
pandoc \
powertop \
printer-driver-all \
p7zip-rar \
rsync \
rzip \
unace \
unalz \
smartmontools \
smbclient \
sshfs \
thin-provisioning-tools \
tmux \
vim \
wordnet \
xloadimage \
xz-utils \
youtube-dl \
zoo \
zsh \
"

PACKAGE_LIST_X11="\
brasero \
ddd \
doxygen-gui \
filezilla \
file-roller \
gedit \
gedit-plugins \
gimp \
gksu \
gnome-commander \
gpodder \
handbrake \
i3 \
icedove \
k3b \
mesa-utils \
mesa-utils-extra \
mirage \
mupdf \
mupdf-tools \
network-manager-gnome \
network-manager-openconnect-gnome \
network-manager-openvpn-gnome \
network-manager-vpnc-gnome \
network-manager-pptp-gnome \
rxvt-unicode-256color \
system-config-printer \
vlc \
wdm \
xfonts-terminus \
xserver-xorg \
xterm \
"

PACKAGE_LIST_X11_MULTIMEDIA="\
brasero \
handbrake \
gimp \
gpodder \
k3b \
mplayer \
vlc \
"

PACKAGE_LIST_VIRT="\
aqemu \
qemu \
vde2 \
virtinst \
virtualbricks \
virt-goodies \
virt-manager \
virt-top \
vmdebootstrap \
xmount \
xtrlock \
"

PACKAGE_LIST_DEV="\
bashdb \
check \
clang \
cmake \
ddd \
doxygen \
doxygen-gui \
ffmpeg-doc \
gcc \
gdb \
gitg \
gitk \
git-cola \
global \
g++ \
libclang-dev \
libcrypto++-dev \
libglib2.0-doc \
libpcap-dev \
libsdl2-dev \
lldb \
make \
meld \
pry \
python3 \
qt5-default \
rake \
ruby-method-source \
swig \
valgrind \
zshdb \
"

PACKAGE_LIST_DEV_DOC="\
aspell-doc \
cppman \
debian-handbook \
doxygen-doc \
erlang-manpages \
giggle \
giggle-personal-details-plugin \
giggle-terminal-view-plugin \
git-doc \
git-man \
glibc-doc \
libvirt-doc \
manpages \
manpages-dev \
mplayer-doc \
ncurses-doc \
opencl-1.2-man-doc \
opengl-4-man-doc \
openmpi-doc \
qt5-doc \
"

PACKAGE_LIST_NONFREE="\
firmware-iwlwifi \
firmware-linux \
"

apt-get install ${PACKAGE_LIST_EARLY_1}

git config --global user.email "root@localhost"
git config --global user.name  "root"

apt-get install ${PACKAGE_LIST_EARLY_2}

# eatmydata
apt-get install                        \
        ${PACKAGE_LIST}                \
        ${PACKAGE_LIST_X11}            \
        ${PACKAGE_LIST_DEV}            \
        ${PACKAGE_LIST_DEV_DOC}

apt-get install                        \
        ${PACKAGE_LIST_NONFREE}        \
        ${PACKAGE_LIST_X11_MULTIMEDIA} \
        ${PACKAGE_LIST_VIRT}

# Check for inclusion:
# logtail
# pavumeter pavucontrol paman paprefs
# gsmartcontrol
# cmdtest
# ssh-askpass rssh molly-guard ufw monkeysphere
# resolvconf dnsmasq


# TODO:
# Reset linux-firmware-free to autoset
