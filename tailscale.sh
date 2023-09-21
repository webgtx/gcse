#!/bin/bash

wget $TS_RELEASE_URL
tar xf tailscale*

rm *.tgz
cd tailscale*
nohup ./tailscaled > /dev/null 2>&1 &
./tailscale up
