#!/bin/bash

# Make the script executable:
# chmod +x set_gitconfig_values.sh
# Run the script:
# ./set_gitconfig_values.sh


sudo apt-get install git

config_file="gitconfig_values.txt"

# Check if the file exists
if [ -f "$config_file" ]; then
    # Read the values from the file
    while IFS= read -r line; do
        # Use 'eval' to interpret the line as a command
        eval "git config --global $line"
    done < "$config_file"

    echo "Git configuration values set from $config_file."
else
    echo "Config file '$config_file' not found."
fi

type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

gh auth login --with-token < mytoken.txt