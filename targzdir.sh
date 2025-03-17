#!/bin/bash

echo "Enter the dir need to be archived ..!"
read dirarchive
dirarchive=${dirarchive%/}
set -x

dirarchivename=$(echo $dirarchive | awk -F'/' '{print $NF}')

tar -cvzf "$dirarchivename".tar.gz "$dirarchivename"

set +x

