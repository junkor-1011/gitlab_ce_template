#!/usr/bin/env sh

# get this script's path
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# generate key & crt
openssl req -batch -new -x509 -newkey rsa:4096 -days 3650 -sha256 -nodes \
  -subj /CN=gitlab.example.com \
  -addext "subjectAltName=DNS:gitlab.example.com,DNS:www.gitlab.example.com" \
  -keyout ./gitlab.example.com.key \
  -out ./gitlab.example.com.crt

# chmod
chmod 400 ./gitlab.example.com.key
