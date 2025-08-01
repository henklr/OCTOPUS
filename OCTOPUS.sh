#!/bin/bash

CIPHERTEXT="U2FsdGVkX19wfrZrPJzKLl/tKZFPbV5H/tzGZRvuhn4="

read -s -p "Enter password to decrypt. Do this offline and in private: " PASS
echo
echo
echo "Decrypting..."
echo "$CIPHERTEXT" | openssl enc -aes-256-cbc -a -d -salt -pbkdf2 -pass pass:"$PASS"
echo