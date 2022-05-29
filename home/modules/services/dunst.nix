{ pkgs, config, ... }:

{
  services.dunst = {
    enable = true;

    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
      size = "16x16";
    };

    settings = {
      global = { 
        # icon
        font = "JetbrainsMono Nerd Font 10";
        show_indicators = false;
        allow_markup = "yes";
        icon_position = "left";
        min_icon_size = "0";
        max_icon_size = "40";

        # global
        format = "<b>%s</b>\n%b\"#\"<b>%a:</b> %s\n%b";
        shrink = "no";
        sort = "yes";
        indicate_hidden = "yes";
        alignment = "left";
        show_age_threshold = 120;
        word_wrap = "yes";
        ignore_newline = "no";
        transparency = 0;
        idle_threshold = 60;
        monitor = 0;
        follow = "mouse";
        sticky_history = "yes";

        # appearance 
        line_height = 0;
        padding = 20;
        separator_height = 2;
        horizontal_padding = 15;
        separator_color = "frame";
        frame_color = "#333333";
        frame_width = 7;
        width = 250;
        height = 100;
        origin = "top-right";
        offset = "20x70";
      };

      urgency_low = {
        background = "#333333";
        foreground = "#FFFFFF";
        timeout = 10;
      };

      urgency_normal = {
        background = "#333333";
        foreground = "#FFFFFF";
        timeout = 10;
      };

      urgency_critical = {
        background = "#f06c75";
        foreground = "#FFFFFF";
        timeout = 0;
      };
    };
  };
}
