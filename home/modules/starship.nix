{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;

    settings = {
      format = "[$directory](fg:cyan) $git_branch[](bg: green) ";

      package.disabled = true;

      directory.format = "[⯁ $path](bg:cyan fg:#2c2c2c bold)";

      git_branch = {
        format = "[](bg: green)[on $symbol$branch](bg:green fg:black bold)[](bg: green) ";
        symbol = " ";
      };
    };
  };
}

