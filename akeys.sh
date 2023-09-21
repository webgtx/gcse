#!/bin/bash

mkdir -p ~/.ssh &
chmod go-rwx ~/.ssh
curl "$STORAGE_URL/authorized_keys" -o ~/.ssh/authorized_keys
