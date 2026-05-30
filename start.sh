#/bin/bash
echo "Installing proot-distro..."
# Needed to set it up env
pkg install proot-distro

proot-distro install ubuntu:24.04
proot-distro login ubuntu

echo "Installing Freenet..."
# Install freenet
curl -fsSL https://freenet.org/install.sh | sh

# Start freenet  
freenet network --log-dir=/tmp &>>/dev/null

