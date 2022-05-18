{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # utils
    rofi
    kitty
    maim

    # dev
    gh # github cli
    rnix-lsp # nix-lsb

    # daily
    chromium
  ];
}

