{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./boot.nix
      ./net.nix
      ./hp-omen.nix
      ./helium.nix
      ./packages.nix

      # services
      ./services/xserver.nix
      ./services/tlp.nix
    ];

  nixpkgs.config.allowUnfree = true;
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
    };
  };
  services.flatpak.enable = true;

  powerManagement.enable = true;
  
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  time.timeZone = "Asia/Kolkata";

  system.stateVersion = "21.11";
}

