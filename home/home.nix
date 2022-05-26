{ config, pkgs, ... }:

{
  imports = 
    [
      ./packages.nix
      ./glue.nix
      ./config.nix
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
    ];
}
