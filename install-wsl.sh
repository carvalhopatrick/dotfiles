#!/bin/bash

stow wsl -t $HOME 

# after cloning the dotfiles:
# git submodule update --init --recursive

# anytime I want to update my submodules
# git submodule update --recursive --remote
