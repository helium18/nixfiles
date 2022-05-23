{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    font.name = "JetBrainsMono";

    settings = {
      hide_window_decorations = true;
      adjust_line_height = 4;
      window_padding_width = "6 20 20 20";

      # font
      font_size = 15;
      font_family = "JetBrains Mono Regular Nerd Font Complete Mono";
      bold_font = "JetBrains Mono Bold Nerd Font Complete Mono";
      italic_font = "JetBrains Mono Italic Nerd Font Complete Mono";
      bold_italic_font = "JetBrain Mono Bold Italic Nerd Font Complete Mono";

      # theme 
      color0 = "#5c5c5c";
      color1 = "#f06c75";
      color2 = "#c9d05c";
      color3 = "#ffd35c";
      color4 = "#7eceee";
      color5 = "#9091d9";
      color6 = "#baeaff";
      color7 = "#eeeeee";
      color8 = "#4c4c4c";
      color9 = "#f05c75";
      color10 = "#c9d16d";
      color11 = "#ffc24b";
      color12 = "#6fcfef";
      color13 = "#9081d9";
      color14 = "#aaeaff";
      color15 = "#dddddd";
      background = "#2c2c2c";
      foreground = "#EEEEEE";
      cursor = "#EEEEEE";
    };

    keybindings = {
      "ctrl+alt+c" = "copy_ansi_to_clipboard";
    };
  };
}


