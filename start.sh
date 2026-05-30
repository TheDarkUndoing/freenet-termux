#/bin/bash
echo "Installing proot-distro..."
# Needed to set it up env
pkg install proot-distro

proot-distro install ubuntu:24.04 --name=freenet-termux
proot-distro login freenet-termux -- bash -c "export DISPLAY=:1 && echo "Installing Freenet..." && curl -fsSL https://freenet.org/install.sh | sh && freenet network --log-dir=/tmp &>>/dev/null"


