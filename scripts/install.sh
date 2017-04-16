#!/bin/bash
set -x

openssl aes-256-cbc -K $encrypted_8a195021a80c_key -iv $encrypted_8a195021a80c_iv -in deploy-key2.enc -out deploy-key2 -d
rm deploy-key.enc
chmod 600 deploy-key
mv deploy-key ~/.ssh/id_rsa