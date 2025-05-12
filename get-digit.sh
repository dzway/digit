#!/bin/sh

# download digit
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/dzway/digit/master/bin/linux/digit;;
    Darwin*)    wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/dzway/digit/master/bin/darwin/digit;;
    *)          echo "Sorry, there's no available package for your OS, contact github.com/dzway/digit."
esac

# set digit to be runnable
chmod +x digit

# move it to /usr/bin/
sudo mv digit /usr/local/bin/digit
rm -rf get-digit.sh
