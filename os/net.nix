{ config, pkgs, ... }:

{
  networking = {

    wireless = {
      enable = false; # we don't need wpa_cli / wpa_supplicant
    };
    
    networkmanager = {
      enable = true;
    };

    # DHCP
    useDHCP = false; # useDHCP is deprecated
    interfaces = {
      eno1 = {
        useDHCP = true;
      };
      wlo1 = {
        useDHCP = true;
      };
    };

  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
}
