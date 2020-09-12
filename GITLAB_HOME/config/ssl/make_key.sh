#!/usr/bin/env sh

# get this script's path
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# generate key & crt
openssl req -batch -new -x509 -newkey rsa:4096 -nodes -sha256 \
  -subj /CN=example.com/O=example -days 3650 \
  -keyout ./gitlab.example.com.key \
  -out ./gitlab.example.com.crt

# chmod
chmod 400 ./gitlab.example.com.key
