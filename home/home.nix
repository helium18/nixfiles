{ config, pkgs, nur, ... }:

{
  imports =
    [
      ./packages.nix
      ./wm

      # programs
      ./programs/git
      ./programs/neovim
      ./programs/z-shell
      ./programs/starship
      ./programs/kitty
      ./programs/rofi

      # services 
      ./services/picom
      ./services/libinput-gestures
      ./services/redshift
      ./services/systemd
      ./services/dunst
    ];

  home.file = {
    "scripts" = {
      source = ./scripts;
      target = "./.config/scripts";
    };
  };

  programs.home-manager.enable = true;
}
