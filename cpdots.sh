#!/bin/bash

read -p "This will overwrite existing dot-files in your home directory.  Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp .bashrc ~
    cp .git-prompt.sh ~
    cp .gitconfig ~
    source ~/.bashrc
fi

