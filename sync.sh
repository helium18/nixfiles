#!/bin/sh

cp ~/.config/nixpkgs ~/nix-dots -r
cp /etc/nixos/ ~/nix-dots -r 

rm -rf home/
rm -rf os/

mv nixpkgs/ home/
mv nixos/ os/

