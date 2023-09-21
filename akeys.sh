#!/bin/bash

mkdir -p ~/.ssh &
chmod go-rwx ~/.ssh
cp ./authorized_keys ~/.ssh/authorized_keys
