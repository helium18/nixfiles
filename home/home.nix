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
    ];
}
