{ config, pkgs, nur, ... }:

{
  imports =
    [
      ./packages.nix
      ./wm/default.nix

      # programs
      ./programs/git/default.nix
      ./programs/neovim/default.nix
      ./programs/z-shell/default.nix
      ./programs/starship/default.nix
      ./programs/kitty/default.nix
      ./programs/rofi/default.nix

      # services 
      ./services/picom/default.nix
      ./services/libinput-gestures/default.nix
      ./services/redshift/default.nix
      ./services/systemd/default.nix
      ./services/dunst/default.nix
    ];

  home.file = {
    "scripts" = {
      source = ./scripts;
      target = "./.config/scripts";
    };
  };

  programs.home-manager.enable = true;
}
