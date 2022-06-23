{ pkgs, ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        device = "/dev/sda";
        kernelPackages = pkgs.linuxPackages_latest;
      };
    };
  };
}
