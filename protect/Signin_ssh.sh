# To signin via ssh to clone or repo or any other action you may create an ssh key and add it to github
# You can create a ssh key with the following
  # I encourage using a strong passphrase for maximum security
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Then you may add the public contents of the file to github and add the necessary permissions
cat ~/.ssh/id_rsa.pub

# Finally add the key to the ssh agent on every new terminal session
ssh-add ~/.ssh/id_rsa

# Now you can verify your connection via:
ssh -T git@github.com # Hi username! You've successfully authenticated.

# Or clone some repo
git clone git@github.com:username/repository.git target_folder

  # In case you want to identify your stored keys in github you can compare their sha256 via
  sh-keygen -lf ~/.ssh/id_rsa.pub
