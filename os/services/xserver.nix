# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;

      layout = "us";

      exportConfiguration = true; # export configuration to /etc/x11/xorg.conf

      # touchpad 
      libinput = {
        enable = true;
	touchpad = {
	 naturalScrolling = true;
	};
      };

      dpi = 135;

      displayManager = {
        lightdm = {
          enable = true;
	};
      };

      # drivers
      videoDrivers = [ "nvidia" ];
      screenSection = ''
        Option         "metamodes" "nvidia-auto-select +0+0 {ForceFullCompositionPipeline=On}"
        Option         "AllowIndirectGLXProtocol" "off"
        Option         "TripleBuffer" "on"
      ''; # fix screen tearing

      desktopManager = {
        # work around to make nix detect a wm installed with HM
        session = [
          {
            name = "home-manager";
            start = ''
              ${pkgs.runtimeShell} $HOME/.xsession &
	     waitPID=$!
	   '';
          }
        ];
      };

      resolutions = [
        {
          x = 1920;
          y = 1080;
        }
      ];

      xkbOptions = "caps:swapescape"; # swap escape and caps 
    };    
  };      
}
