{ config, pkgs, ... }:

{
  sound.enable = true;

  hardware = {
    cpu.amd.updateMicrocode = true;

    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        amdvlk
	mesa.drivers
      ];
    };

    nvidia = {
      nvidiaPersistenced = true;

      prime = {
        offload.enable = true;

	amdgpuBusId = "PCI:6:0:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };

    pulseaudio = {
      enable = true;
    };

    enableAllFirmware = true;
  };

  environment.systemPackages = [
    (pkgs.writeShellScriptBin "nvidia-offload" ''
      export __NV_PRIME_RENDER_OFFLOAD=1
      export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export __VK_LAYER_NV_optimus=NVIDIA_only
      exec -a "$0" "$@"
    '')
  ];
}
