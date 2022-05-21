{ config, pkgs, ... }:

{
  imports = 
    [
      ./packages.nix
      ./glue.nix
      ./config.nix

      # modules
      ./modules/git.nix
      ./modules/neovim.nix
      ./modules/fish.nix
      ./modules/picom.nix
      ./modules/starship.nix
      ./modules/kitty.nix
      ./modules/redshift.nix
      ./modules/rofi.nix
    ];
}
