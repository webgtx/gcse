#!/usr/env bash

export BRANCH="master"
export STORAGE_URL="https://raw.githubusercontent.com/webgtx/gcse/$branch/"

if [[ $USER != "root" ]]; then
  echo "run script as root"
  exit 1
fi

curl $storage_url/configs/sshd_config -o /etc/ssh/sshd_config
/usr/sbin/sshd
