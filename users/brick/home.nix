{ config, pkgs, nur, inputs, ... }:

{
  imports =
    [
      ./packages.nix

      # programs
      ../../modules/programs/neovim
      ../../modules/programs/z-shell
      ../../modules/programs/starship
      ../../modules/programs/kitty
      ../../modules/programs/rofi
    ];

  programs.home-manager.enable = true;
}
