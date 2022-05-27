{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    nativeOnly = true;
  };
  
  home.packages = with pkgs; [
    # wm utils
    xfce.thunar
    lxappearance
    bottom
    flameshot
    libinput-gestures
    wmctrl
    maim

    # utils
    neofetch
    pfetch
    playerctl
    exa
    cava
    powertop
    xclip
    xfce.xfce4-terminal
    unzip
    pciutils
    acpi
    fsearch
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
    lua
    gitui
    rustup
    jdk
    sumneko-lua-language-server

    # daily
    chromium
    spotify
    keepassxc
    obsidian
    safeeyes
  ];
}

