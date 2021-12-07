#!/bin/bash
# Green virtual environment by Robert Kühn (https://rokdd.xyz/)
# Organise your virtual environments with happyness
#
# To install the script use the following command:
# sudo curl https://raw.githubusercontent.com/TheRemote/PiBenchmarks/master/Storage.sh | sudo bash

# Terminal colors
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

# Prints a line with color using terminal codes
style_print() {
  printf "%s\n" "${2}$1${NORMAL}"
}

style_print "test for normal"
style_print "test for green" "GREEN"

grep -qxF '[ -f $HOME/.bashrc.greenenv ] && . $HOME/.bashrc.greenenv' .bashrc || echo '[ -f $HOME/.bashrc.greenenv ] && . $HOME/.bashrc.greenenv' >> .bashrc