#!/bin/bash

# init and update submodules after cloning the dotfiles:
git submodule update --init --recursive

# create the stow links for every group
for d in */ ; do
    stow $d -t $HOME
done


# anytime I want to just update my submodules
# git submodule update --recursive --remote
