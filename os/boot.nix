{ config, pkgs, ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    # splash screen while logging in
    plymouth = {
      enable = true;
    };
	
    # latest kernel
    kernelPackages = pkgs.linuxPackages_latest;

    initrd.kernelModules = [ "amdgpu" ]; # load amdgpu first

    # kernel boot parameters
    kernelParams = [
      # boot screen
      "quiet"
      "splash"

      # perf
      # "mitigations=off"
      "nowatchdog"
      # "cryptomgr.notests"
      # "initcall_debug"
      # "no_timer_check"
      # "noreplace-smp"
      # "page_alloc.shuffle=1"
      # "rcupdate.rcu_expedited=1"
      # "tsc=reliable"

      # acpi
      "pci=nommconf"

      # video
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
