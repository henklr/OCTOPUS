#!/bin/bash

read -s -p "Enter password: " PASS
echo
echo -n "Enter text to encrypt: "
IFS= read -r INPUT
echo
echo "Encrypting..."
echo -n "$INPUT" | openssl enc -aes-256-cbc -a -salt -pbkdf2 -pass pass:"$PASS"
echo