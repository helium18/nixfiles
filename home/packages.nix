{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # utils
    rofi
    kitty
    maim

    # dev
    gh

    # daily
    chromium
  ];
}

