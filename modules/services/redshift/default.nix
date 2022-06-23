{ config, pkgs, ... }:

{
  services.redshift = {
    enable = true;

    latitude = 18.63;
    longitude = 73.73;

    temperature = {
      day = 4400;
      night = 4400;
    };

    settings = {
      redshift = {
        brightness-night = "0.5";
        brightness-day = "0.7";
      };
    };
  };
}

