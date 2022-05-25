{ config, pkgs, ... }:

let 
  unstable = import <unstable> {
    config.allowUnfree = true;
    config.nativeOnly = true;
  };
in {
  nixpkgs.config = {
    allowUnfree = true;
    nativeOnly = true;
  };
  
  home.packages = with unstable; [
    # wm utils
    xfce.thunar
    lxappearance
    flameshot
    maim

    # utils
    neofetch
    pfetch
<<<<<<< HEAD
=======
    exa
>>>>>>> master
    cava
    powertop
    xclip
    unzip
    pciutils
    acpi
    glxinfo

    # ricing
    ## fonts
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ## icons
    arc-icon-theme 

    # dev
    gh # github cli
    rnix-lsp # nix-lsb
    python38
    vscode
<<<<<<< HEAD
=======
    gitui
>>>>>>> master
    rustup
    jdk
    sumneko-lua-language-server

    # daily
    chromium
    spotify
    safeeyes
  ];
}

