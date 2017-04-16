#!/bin/bash
set -x

openssl aes-256-cbc -K $encrypted_8a195021a80c_key -iv $encrypted_8a195021a80c_iv -in deploy-key2.enc -out deploy-key -d
rm deploy-key2.enc
chmod 600 deploy-key
mv deploy-key ~/.ssh/id_rsa