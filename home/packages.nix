{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    nativeOnly = true;
  };

  home.packages = with pkgs; [
    # wm utils
    rofi
    kitty
    xfce.thunar
    flameshot
    maim

    # utils
    neofetch
    pfetch
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
    rustup
    jdk
    sumneko-lua-language-server

    # daily
    chromium
    spotify
    safeeyes
  ];
}

