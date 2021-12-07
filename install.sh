#!/bin/bash
# Green virtual environment by Robert Kühn (https://rokdd.xyz/)
# Organise your virtual environments with happyness
#
# To install the script use the following command:
# sudo curl https://raw.githubusercontent.com/rokdd/green-venv/master/install.sh | sudo bash

# Terminal colors

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 2`
blue=`tput setaf 4`
gray=`tput setaf 2`
reset=`tput sgr0`

# Prints a line with color using terminal codes
style_print() {
  echo -e "${!2}$1${reset}"
}

style_print "Installed the green virtual environment for you! There: $~" 'gray'
sudo curl -o ~/.bashrc.greenvenv https://raw.githubusercontent.com/rokdd/green-venv/master/.bashrc.greenvenv
cd ~ && { curl -O https://raw.githubusercontent.com/rokdd/green-venv/master/.bashrc.greenvenv; cd -; }
sudo grep -qxF '[ -f $HOME/.bashrc.greenvenv ] && . $HOME/.bashrc.greenvenv' ~/.bashrc || echo -e "\n#this line activate the green-venv\n[ -f \$HOME/.bashrc.greenvenv ] && . \$HOME/.bashrc.greenvenv" >> ~/.bashrc