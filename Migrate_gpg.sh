#!/bin/bash

# Migrate GPG Keys from One Workstation to Another
# https://gist.github.com/angela-d/8b27670bac26e4bf7c431715fef5cc51

# List all GPG keys
gpg --list-secret-keys --keyid-format LONG
    # /home/angela/.gnupg/pubring.kbx
    # -------------------------------
    # sec   rsa4096/[your key] 2018-03-30 [SC]
    #       ABCDEFGHIJKLMNOPQRSTUVWXYZ
    # uid                 [ unknown] angela (KEY NAME) <user@domain>
    # ssb   rsa4096/ABCDEFGHIJKL 2018-03-30 [E]

    # After the key size rsa4096/ is your key ID.

# Export the public key & private key
gpg --export -a [your key] > gpg-pub.asc
gpg --export-secret-keys -a [your key] > gpg-sc.asc

# Import the public key & private key
gpg --import gpg-pub.asc
gpg --import gpg-sc.asc