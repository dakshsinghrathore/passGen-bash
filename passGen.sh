#!/bin/bash

echo "Hey user! Are you planning to generate a password of any length? (yes/no)"
read resp

if [ "$resp" = "yes" ]; then
    echo "Choose the length of the password:"
    read len

    # Validating if input is numeric
    if ! [[ "$len" =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a valid numeric value for password length."
        exit 1
    fi

    PASS=$(date | sha256sum | cut -b 1-"$len")
    echo "$PASS"
elif [ "$resp" = "no" ]; then
    echo "Buzz off, mate!"
else
    echo "Invalid response. Please enter 'yes' or 'no'."
fi
