#!/bin/sh

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update && sudo apt-get install grub-customizer

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo rm /etc/apt/sources.list.d/google-chrome.list

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

apm install --packages-file recommend_packages.txt
