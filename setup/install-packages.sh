#!/bin/sh

if [ "$USER" != "root" ]; then
    echo "Must be run as root"
    exit 1
fi

apt-get install postgresql
apt-get install raptor2-utils
