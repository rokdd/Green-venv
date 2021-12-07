#!/bin/bash
# Green virtual environment by Robert Kühn (https://rokdd.xyz/)
# Organise your virtual environments with happyness
#
# To install the script use the following command:
# sudo curl https://raw.githubusercontent.com/rokdd/green-venv/master/install.sh | sudo bash

# Terminal colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
GRAY='\033[0;30m'

NC='\033[0m' # No Color
# Prints a line with color using terminal codes
style_print() {
  printf "%s\n" "${2}$1${NC}"
}

style_print "test for normal"
style_print "test for green" GREEN

grep -qxF '[ -f $HOME/.bashrc.greenenv ] && . $HOME/.bashrc.greenenv' $HOME/.bashrc || echo '[ -f $HOME/.bashrc.greenenv ] && . $HOME/.bashrc.greenenv' >> $HOME/.bashrc