# !/bin/bash
# How to verify your commits on GitHub through GPG
# https://daily-dev-tips.com/posts/how-to-verify-your-commits-on-github/#google_vignette

# Generate a new GPG key
gpg --full-generate-key

# Keep in mind the following settings:
    # I choose an RSA key (Option 1)
    # Key should be a MINIMUM of 4096 in size
    # I set it never to expire (Option 0)
    # Name and email. Use your GitHub email else, it won't work!

# List all GPG keys
gpg --list-secret-keys --keyid-format LONG
    # /home/angela/.gnupg/pubring.kbx
    # -------------------------------
    # sec   rsa4096/[your key] 2018-03-30 [SC]
    #       ABCDEFGHIJKLMNOPQRSTUVWXYZ
    # uid                 [ unknown] angela (KEY NAME) <user@domain>
    # ssb   rsa4096/ABCDEFGHIJKL 2018-03-30 [E]

    # After the key size rsa4096/ is your key ID.

# Export the public key
gpg --armor --export [THIS_KEY_ID]

# Copy the public key to your clipboard
gpg --armor --export [THIS_KEY_ID] | xclip -selection clipboard # Linux# Don't knkow if it works
    # -----BEGIN PGP PUBLIC KEY BLOCK-----
    # [SCRAMBLE]
    # -----END PGP PUBLIC KEY BLOCK-----

    # Copy everything including the BEGIN and END lines.

# Add the public key to your GitHub account
    # Go to Settings > SSH and GPG keys > New GPG key
    # Paste the public key and save

# Configure Git to use your GPG key
git config --global user.signingkey [THIS_KEY_ID]
git config --global commit.gpgsign true