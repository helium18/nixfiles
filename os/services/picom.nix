{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;

    backend = "glx";

    vSync = true;

    fade = true;
    fadeSteps = [ "0.06" "0.06" ];

    extraOptions = ''
      corner-radius = 15;
      round-borders = 15;
      
      use-damage = false;

      rounded-corners-exclude = [
        "window_type = 'dock'",
      ];
    '';

    # use the ibhagwan fork
    package = pkgs.picom.overrideAttrs(o: {
      src = pkgs.fetchFromGitHub {
        repo = "picom";
        owner = "ibhagwan";
        rev = "44b4970f70d6b23759a61a2b94d9bfb4351b41b1";
        sha256 = "0iff4bwpc00xbjad0m000midslgx12aihs33mdvfckr75r114ylh";
      };
    });
  };
}



