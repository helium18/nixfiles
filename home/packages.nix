{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # wm utils
    gnome.nautilus
    obs-studio
    bottom
    brightnessctl
    eww
    flameshot
    libinput-gestures
    xdotool
    acpid # for acpi_listen used by `refresh` script in ~/.config/scripts
    feh # bg
    maim # ss
    autotiling # tiling for i3wm
    pavucontrol
    vlc

    # utils
    neofetch
    pfetch
    envycontrol
    playerctl
    exa
    ripgrep
    cava
    powertop
    xclip
    unzip
    pciutils
    acpi
    gparted
    fsearch
    glxinfo

    # ricing
    ## fonts
    (nerdfonts.override { fonts = [ "JetBrainsMono" "RobotoMono" ]; })
    ## icons
    arc-icon-theme
    papirus-icon-theme
    lxappearance

    # dev
    gh # github cli
    rnix-lsp # nix-lsp
    vscode
    jq # json cli parsing
    qalculate-gtk
    bc
    gitui
    jdk
    sumneko-lua-language-server

    # daily
    chromium
    tdesktop
    libsForQt5.okular
    inkscape
    spotify
    zoom-us
    keepassxc
    grapejuice
    obsidian
    gimp
    safeeyes
  ];
}

