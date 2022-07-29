{ config, pkgs, inputs, lib, ... }:

{
  home.packages = with pkgs; [
    # wm utils
    gnome.nautilus
    obs-studio
    peek
    bottom
    brightnessctl
    flameshot
    libinput-gestures
    xdotool
    eww
    # inputs.eww.packages."x86_64-linux".eww
    acpid # for acpi_listen used by `refresh` script in ~/.config/scripts
    feh # bg
    maim # ss
    autotiling # tiling for i3wm
    pavucontrol
    vlc

    # utils
    neofetch
    thunderbird
    pfetch
    envycontrol
    syncthing
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
    # spotify-adblock
    spotify
    zoom-us
    onlyoffice-bin
    keepassxc
    grapejuice
    obsidian
    gimp
    safeeyes
  ];
}

