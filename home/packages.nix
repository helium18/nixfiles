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
    powertop
    xclip
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
    vscode
    sumneko-lua-language-server

    # daily
    chromium
    spotify
    safeeyes
  ];
}

