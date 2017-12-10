#!/bin/sh

echo "copying bash addons..."
cp -axv ./.bash* ~/


echo "copying vim addons..."
cp -axv ./.vim* ~/
cp -axv ~/.gvim* ~/

mkdir -p ~/bin

echo "copying files to ~/bin"
cp -axv ./bin ~/bin


