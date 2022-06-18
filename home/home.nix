{ config, pkgs, nur, ... }:

{
  imports =
    [
      ./packages.nix
      ./wm.nix
      ./theme.nix

      # programs
      ./modules/programs/git.nix
      ./modules/programs/neovim.nix
      ./modules/programs/z-shell.nix
      ./modules/programs/starship.nix
      ./modules/programs/kitty.nix
      ./modules/programs/rofi.nix

      # services 
      ./modules/services/picom.nix
      ./modules/services/libinput-gestures.nix
      ./modules/services/redshift.nix
      ./modules/services/systemd.nix
      ./modules/services/dunst.nix
    ];

  home.file = {
    "scripts" = {
      source = ./config/scripts;
      target = "./.config/scripts";
    };
  };

  programs.home-manager.enable = true;
}
