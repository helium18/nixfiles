{ config, pkgs, ... }:

{
  home.file = {
    "awesome" = {
      source = ./config/awesome;
      target = "./.config/awesome";
    };
    "kitty" = {
      source = ./config/kitty;
      target = "./.config/kitty";
    };
  };
}


