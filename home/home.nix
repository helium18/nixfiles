{ config, pkgs, ... }:

{
  imports = 
    [
      ./packages.nix
      ./wm.nix
      ./theme.nix

      # modules
      ./modules/git.nix
      ./modules/neovim.nix
      ./modules/z-shell.nix
      ./modules/starship.nix
      ./modules/kitty.nix
      ./modules/rofi.nix

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
      "eww" = {
        source = ./config/eww;
        target = "./.config/eww";
      };
    };

  # hm config
  programs.home-manager.enable = true;
  home = {
    username = "helium";
    homeDirectory = "/home/helium";
    stateVersion = "22.05";
  };
}
