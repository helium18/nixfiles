{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "helium18";
    userEmail = "helium.dev@tuta.io";
  };
}

