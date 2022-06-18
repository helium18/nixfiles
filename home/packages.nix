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
    (callPackage ./derivations/envycontrol.nix { })
    # (callPackage ./derivations/gh-eco/default.nix { })
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
    # rustup
    jdk
    sumneko-lua-language-server

    # daily
    chromium
    spotify
    # (callPackage ./derivations/spotify-adblock.nix { })
    tdesktop
    libsForQt5.okular
    inkscape
    zoom-us
    keepassxc
    grapejuice
    obsidian
    gimp
    safeeyes
  ];
}

