#!/bin/bash

BRANCH="master"
STORAGE_URL="https://raw.githubusercontent.com/webgtx/gcse/$BRANCH"
TS_ARCH="386"
TS_RELEASE_URL="https://pkgs.tailscale.com/stable/tailscale_1.48.2_$TS_ARCH.tgz"

# Setup SSHD
sudo curl "$STORAGE_URL/sshd.sh" | sudo bash

# Connect to tailscale network
curl "$STORAGE_URL/tailscale.sh" | sudo bash

# Template authorized_keys
curl "$STORAGE_URL/akeys.sh" | bash
