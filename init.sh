#!/bin/bash

if [[ ! -d ~/.vimbackups ]] ;
then
    mkdir ~/.vimbackups
fi

for i in .*; do
    if [[ $i != .git* ]] && [[ $i != *.swp ]] && [[ $i != . ]] && [[ $i != .. ]] ;
    then
        ln -sf ~/dotfiles/$i ~/$i
    fi
done
