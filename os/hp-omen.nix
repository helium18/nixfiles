{ config, pkgs, ... }:

{
  # Enable sound.
  sound.enable = true;

  hardware = {
    cpu.amd.updateMicrocode = true;

    opengl = {
      enable = true;
      driSupport = true;
      extraPackages = with pkgs; [
        amdvlk
	mesa.drivers
      ];
    };

    pulseaudio = {
      enable = true;
    };

    enableAllFirmware = true;
  };
}
