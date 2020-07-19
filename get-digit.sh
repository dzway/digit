#!/bin/sh

# download digit
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     wget --no-check-certificate --content-disposition https://bintray.com/dzway/digit/download_file?file_path=linux_amd64%2Fdigit%2Fdigit;;
    Darwin*)    wget --no-check-certificate --content-disposition https://bintray.com/dzway/digit/download_file?file_path=darwin%2Fdigit%2Fdigit;;
    *)          echo "Sorry, there's no available package for your OS, contact github.com/dzway/digit."
esac

# set digit to be runnable
chmod +x digit

# move it to /usr/bin/
sudo mv digit /usr/local/bin/digit
rm -rf get-digit.sh
