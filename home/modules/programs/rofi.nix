{ config, pkgs, ... }:

let 
  # Use `mkLiteral` for string-like values that should show without quotes
  inherit (config.lib.formats.rasi) mkLiteral;

in {

  programs.rofi = {
    enable = true;

    font = "JetBrainsMono Nerd Font 14";

    theme = {
      "*" = {
        background-color = mkLiteral "#2c2c2c";
        text-color = mkLiteral "#cccccc";
      };

      "element-icon" = { 
        size = mkLiteral "2ch"; 
        margin = mkLiteral "0px 10px 0px 7px";
      };
      
      "window" = {
        anchor = mkLiteral "center";
        location = mkLiteral "center";
        width = mkLiteral "40%";
        padding = mkLiteral "50px";
        children = [ "horibox" ];
        border-radius = mkLiteral "20px";
        border = mkLiteral "3px";
        border-color = mkLiteral "#3b3b3b";
      };

      "horibox" = {
        orientation = mkLiteral "vertical";
        children = [ "entry" "listview" ];
      };

      "listview" = {
        layout = mkLiteral "vertical";
        spacing = mkLiteral "8px";
        lines = 5;
      };

      "entry" = {
        border-radius = mkLiteral "14px";
        background-color = mkLiteral "#3c3c3c";
        padding = mkLiteral "13px";
        expand = false;
        width = mkLiteral "10em";
        margin = mkLiteral "0px 0px 40px 0px";
      };

      "element" = {
        padding = mkLiteral "8px 5px";
      };

      "element selected" = {
        # background-color = mkLiteral "#baeaff";
        background-color = mkLiteral "#3d3d3d";
        text-color = mkLiteral "#eeeeee";
        border-radius = mkLiteral "10px";
        padding = mkLiteral "10px 0px";
      };
      
      "element-text, element-icon" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };
    };
  };

}


