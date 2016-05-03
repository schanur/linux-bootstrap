#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

PACKAGE_LIST_EARLY="\
eatmydata \
etckeeper \
git \
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
cclive \
colortest \
conntrack \
cups \
emacs \
exfat-utils \
gddrescue \
imagemagick \
libreoffice \
lynx \
mc \
moc \
mplayer \
network-manager \
nfs-common \
openssh-server \
pandoc \
powertop \
printer-driver-all
rsync \
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
zsh \
"

PACKAGE_LIST_X11="\
brasero \
ddd \
doxygen-gui \
filezilla \
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
libclang-dev
libglib2.0-doc \
libsdl2-dev
lldb \
make \
meld \
pry \
python3 \
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
"

PACKAGE_LIST_NONFREE="\
firmware-iwlwifi \
firmware-linux \
"

apt-get install ${PACKAGE_LIST_EARLY}

git config --global user.email "root@localhost"
git config --global user.name  "root"

# eatmydata
apt-get install \
        ${PACKAGE_LIST} \
        ${PACKAGE_LIST_X11} \
        ${PACKAGE_LIST_VIRT} \
        ${PACKAGE_LIST_DEV} \
        ${PACKAGE_LIST_DEV_DOC} \
        ${PACKAGE_LIST_NONFREE}

# Check for inclusion:
# logtail
# pavumeter pavucontrol paman paprefs
# gsmartcontrol
# cmdtest
# ssh-askpass rssh molly-guard ufw monkeysphere
# resolvconf dnsmasq


# TODO:
# Reset linux-firmware-free to autoset
