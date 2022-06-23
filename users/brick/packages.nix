{ config, pkgs, inputs, lib, ... }:

{
  home.packages = with pkgs; [
    # wm utils
    gnome.nautilus
    obs-studio
    bottom
    brightnessctl
    flameshot
    libinput-gestures
    xdotool
    # inputs.eww.packages."x86_64-linux".eww
    acpid # for acpi_listen used by `refresh` script in ~/.config/scripts
    pavucontrol
    vlc

    # utils
    neofetch
    pfetch
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
    libsForQt5.okular
    inkscape
    spotify
    zoom-us
    keepassxc
    obsidian
    gimp
    safeeyes
  ];
}

