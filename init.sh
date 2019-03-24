#!/bin/bash

for i in .*; do
    if [[ $i != .git* ]] && [[ $i != *.swp ]] && [[ $i != . ]] && [[ $i != .. ]] ;
    then
        rm ../$i
        ln -s dotfiles/$i ../$i
    fi
done
