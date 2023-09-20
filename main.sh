#!/usr/env bash

BRANCH="master"
STORAGE_URL="https://raw.githubusercontent.com/webgtx/gcse/$branch/"
TS_ARCH="386"
TS_RELEASE_URL="https://pkgs.tailscale.com/stable/tailscale_1.48.2_$TS_ARCH.tgz"

if [[ $USER != "root" ]]; then
  echo "run script as root"
  exit 1
fi

# Setup SSHD
curl "$STORAGE_URL/configs/sshd_config" -o /etc/ssh/sshd_config
/usr/sbin/sshd

# Connect to tailscale network
wget $TS_RELEASE_URL
tar xf tailscale*

rm *.tgz
cd tailscale*
nohup ./tailscaled > /dev/null 2>&1 &
./tailscale up
