{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    # vSync = true;

    fade = true;
    fadeSteps = [ "0.06" "0.06" ];

    extraOptions = ''
      corner-radius = 15;
      round-borders = 15;
      use-damage = false;
    '';
  };
}


