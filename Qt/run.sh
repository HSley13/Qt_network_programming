#!/bin/zsh

echo "Enter passphrase:"
read -s passphrase

if gpg --quiet --batch --yes --decrypt --passphrase="$passphrase" --output decrypt_file.sh run_file.sh.gpg; then
    source decrypt_file.sh
fi