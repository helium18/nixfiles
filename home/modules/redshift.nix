{ config, pkgs, ... }:

{
  services.redshift = {
    enable = true;

    provider = "geoclue2";

    temperature = {
      day = 4900;
      night = 4900;
    };
  };
}


