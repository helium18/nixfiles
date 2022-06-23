{ config, pkgs, nur, inputs, ... }:

{
  imports =
    [
      ./packages.nix
      ./wm

      # programs
      ../../modules/programs/git
      ../../modules/programs/neovim
      ../../modules/programs/z-shell
      ../../modules/programs/starship
      ../../modules/programs/kitty
      ../../modules/programs/rofi

      # services 
      ../../modules/services/picom
      ../../modules/services/libinput-gestures
      ../../modules/services/redshift
      ../../modules/services/systemd
      ../../modules/services/dunst
    ];

  home.file = {
    "scripts" = {
      source = ../../bin;
      target = "./.config/scripts";
    };
  };

  programs.home-manager.enable = true;
}
