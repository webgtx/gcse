#!/bin/bash

curl "$STORAGE_URL/configs/sshd_config" -o /etc/ssh/sshd_config
killall sshd
/usr/sbin/sshd
