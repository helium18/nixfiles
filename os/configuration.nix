{ config, pkgs, ... }:

{
  imports =
    [
      ./boot.nix
      ./net.nix
      ./machines/hp-omen/hp-omen.nix
      ./machines/hp-omen/hardware-configuration.nix
      ./users/helium.nix
      ./packages.nix

      # services
      ./services/xserver/default.nix
      ./services/tlp/default.nix
    ];

  nixpkgs.config.allowUnfree = true;
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
    };
  };
  services.flatpak.enable = true;

  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  time.timeZone = "Asia/Kolkata";

  system.stateVersion = "21.11";
}

