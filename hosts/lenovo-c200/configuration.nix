{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./net.nix
      ./boot.nix
      ./packages.nix
    ];

  hardware.opengl = {
    enable = true;
  };

  networking.interfaces.wlp2s0.useDHCP = true;

  services = {
    xserver = {
      enable = true;

      layout = "us";

      videoDrivers = [ "intel" "mesa" ];

      displayManager = {
        lightdm = {
          enable = true;
        };
      };

      desktopManager = {
        xfce.enable = true;
      };
    };
  };

  # sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.helium = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
  };

  services.openssh.enable = true;

  system.stateVersion = "21.11";

}
