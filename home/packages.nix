{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    nativeOnly = true;
  };

  home.packages = with pkgs; [
    # wm utils
    cinnamon.nemo
    bottom  
    brightnessctl
    flameshot
    libinput-gestures
    xdotool
    acpid # for acpi_listen used by `refresh` script in ~/.config/scripts
    eww
    feh # bg
    maim # ss
    autotiling # tiling for i3wm

    # utils
    neofetch
    pfetch
    playerctl
    exa
    cava
    powertop
    xclip
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
    papirus-icon-theme
    lxappearance

    # dev
    gh # github cli
    rnix-lsp # nix-lsp
    python38
    vscode
    lua
    jq # json cli parsing
    gitui
    rustup
    jdk
    sumneko-lua-language-server

    # daily
    chromium
    spotify
    tdesktop
    inkscape
    keepassxc
    obsidian
    gimp
    safeeyes
  ];
}

