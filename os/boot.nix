{ config, pkgs, ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.cantouchefivariables = true;
    };

    # splash screen while logging in
    plymouth = {
      enable = true;
    };
	
    # latest kernel
    kernelpackages = pkgs.linuxpackages_latest;

    initrd.kernelmodules = [ "amdgpu" ]; # load amdgpu first

    # kernel boot parameters
    kernelparams = [
      "quiet"
      "splash"
      "video=svideo-1:d"
      "radeon.si_support=0"
      "radeon.cik_support=0" # disables radeon cik(sea island) support
      "amdgpu.si_support=0"
      "amdgpu.cik_support=0" # disables amdgpu cik(sea island) support
      "amdgpu.modeset=1"
      "amdgpu.dc=1" # enables display core driver 
    ];
  };
}
