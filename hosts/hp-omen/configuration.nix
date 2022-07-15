{ config, pkgs, ... }:

{
  imports =
    [
      ./boot.nix
      ./net.nix
      ./hardware-configuration.nix
      ./packages.nix
      ./xserver.nix
      ../../modules/services/tlp
    ];

  # -- User --
  users.users.helium = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "input" ];
  };

  # sound
  services.pipewire = {
    enable = true;
    audio = {
      enable = true;
    };
    pulse = {
      enable = true;
    };
    alsa = {
      enable = true;
      support32Bit = true;
    };
    wireplumber = {
      enable = true;
    };
  };

  powerManagement.enable = true;

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
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      # nvidiaPersistenced = true;

      prime = {
        offload.enable = true;
        amdgpuBusId = "PCI:6:0:0";
        nvidiaBusId = "PCI:1:0:0";
      };
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

  # -- Misc -- 
  nixpkgs.config.allowUnfree = true;

  services.gnome.sushi.enable = true;

  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
    };
  };

  time.timeZone = "Asia/Kolkata";

  system.stateVersion = "21.11";
}

