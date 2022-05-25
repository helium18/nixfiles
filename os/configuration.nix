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
<<<<<<< HEAD
=======
      #./services/safeeyes.nix
>>>>>>> master
    ];

  nixpkgs.config.allowUnfree = true;

  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  time.timeZone = "Asia/Kolkata";

  system.stateVersion = "21.11";
}

