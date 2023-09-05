#!/bin/bash

# Initial Git configuration
    # Install Git
sudo apt-get install git
        # Or get the installer from https://git-scm.com/downloads

    # Set username & email
git config --global user.name "Your Name"
git config --global user.email "youremai@google.com"
        # Show the configuration
git config --list

    # Login to GitHub through Git CLI
        # Install GitHub CLI
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

    # Auth to GitHub using a token
        # The minimum  required scopes for the token are "repo" and "read:org"
gh auth login --with-token < mytoken.txt

    # Configure git to use GitHub CLI as the credential helper
gh auth setup-git
