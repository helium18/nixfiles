{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;

    backend = "glx";

    vSync = true;

    fade = true;
    fadeSteps = [ 0.06 0.06 ];

    settings = {
      corner-radius = 18;
      round-borders = 15;

      unredir-if-possible = false;

      use-damage = false;

      rounded-corners-exclude = [
        "window_type = 'dock'"
      ];
    };

    # use the ibhagwan fork
    package = pkgs.picom-ibhagwan;
  };
}


