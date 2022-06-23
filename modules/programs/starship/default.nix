{ config, pkgs, ... }:

let 
  d1 = "#4a4a4a";
  d2 = "#2c2c2c";
  w1 = "#cccccc";
  cyan = "#baeaff";
  green = "green";
in {
  programs.starship = {
    enable = true;

    settings = {
      format = "[$directory](fg:${d1}) $git_branch[](bg: ${green}) ";

      package.disabled = true;

      directory.format = "[⯁ $path](bg:${d1} fg:${cyan} bold)";

      git_branch = {
        format = "[](bg: ${green})[on $symbol$branch](bg:${green} fg:${d2} bold)[](bg: ${green}) ";
        symbol = " ";
      };
    };
  };
}

