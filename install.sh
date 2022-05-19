#!/bin/sh

echo -e "\n-> Switching to nixos unstable"

# source https://nixos.org/manual/nixos/stable/index.html#sec-upgrading
nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nixos-rebuild switch --upgrade

echo -e "\n-> Installing home-manager"
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

echo -e "\n-> Moving the configuration files to the respective places"

# os stuff
sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.old # backup the old config
sudo mv os/configuration.nix /etc/nixos/

# home manager stuff
mv ~/.config/nixpkgs ~/.config/nixpkgs.old/ # backup old config
mv home/ ~/.config/
mv ~/.config/home ~/.config/nixpkgs # rename home to nixpkgs

echo -e "\n-> Applying configs"
sudo nixos rebuild switch
home-manager build switch

echo -e "\n-> All set! Consider rebooting now"
