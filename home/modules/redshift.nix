{ config, pkgs, ... }:

{
  # redshift needs this to infer the location 
  services.geoclue2 = {
    enable = true;
  };

  services.redshift = {
    enable = true;

    provider = "geoclue2";

    temperature = {
      day = 4900;
      night = 4900;
    };
  };
}


