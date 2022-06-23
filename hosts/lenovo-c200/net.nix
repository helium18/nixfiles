{}:

{
  networking = {
    hostName = "nixos-lenovo-c200";
    networkmanager.enable = true;
    useDHCP = false;

    interfaces = {
      enp1s8.useDHCP = true;
      wlp2s0.useDHCP = true;
    };
  };
}
