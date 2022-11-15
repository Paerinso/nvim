#!/usr/bin/env bash
echo "Installing or updating to the newest nvim available."
FILE=/bin/nvim/
NEOVIMCURL=https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
if [ -d "$FILE" ]; then
    echo "$FILE exists."
    cd /
    sudo rm -rf /bin/nvim/
    sudo mkdir /bin/nvim
    cd /bin/nvim
    sudo curl -L -O $NEOVIMCURL
    sudo tar xzvf /bin/nvim/nvim-linux64.tar.gz
    sudo rm nvim-linux64.tar.gz
else
    echo "$FILE does not exist."
    sudo mkdir /bin/nvim/
    cd /bin/nvim/
    sudo curl -L -O $NEOVIMCURL
    sudo tar xzvf /bin/nvim/nvim-linux64.tar.gz
    sudo rm -f nvim-linux64.tar.gz
fi
#echo "do you want to download the github nvim config?"
#read downloadconfig

#if [ $downloadconfig == "y" ] || [ $downloadconfig == "yes" ]
#then
#    echo "Downloading your config now."
#else 
#    echo "Okay install is complete without config."
#fi
#sleep 5
#/bin/nvim/nvim-linux64/bin/nvim
