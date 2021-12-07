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

style_print "Installed the green virtual environment for you! $HOME" 'gray'
curl https://raw.githubusercontent.com/rokdd/green-venv/master/install.sh > ~/.bashrc.greenenv
grep -qxF '[ -f $HOME/.bashrc.greenenv ] && . $HOME/.bashrc.greenenv' ~/.bashrc || echo -e "\n#this line activate the green-venv\n[ -f \$HOME/.bashrc.greenenv ] && . \$HOME/.bashrc.greenenv" >> ~/.bashrc