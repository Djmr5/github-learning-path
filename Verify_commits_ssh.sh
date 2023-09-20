#!/bin/bash

# Generate a new SSH key
ssh-keygen -t ed25519 -C "your_email@example.com"

# Specify the location of the SSH public key, default path is: /c/Users/you/.ssh/id_algorithm
git config --global user.signingkey "path_to_your_public_key"

# Enable/Enforce commit signing
git config --global commit.gpgsign true

# Configure commit signing format
git config --global gpg.format ssh