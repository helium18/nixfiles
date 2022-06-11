{ pkgs, config, ... }: 

{
  gtk = {
    enable = true;

    theme = {
      name = "Graphite-dark";

      # https://nixos.org/manual/nixpkgs/unstable/#sec-pkg-override
      package = pkgs.graphite-gtk-theme.override { 
        tweaks = [ "rimless" ]; 
        themeVariants = [ "default" ]; 
        colorVariants = [ "dark" ];
      };
    };

    iconTheme = {
      name = "papirus";
      package = pkgs.papirus-icon-theme;
    }; 

    font = {
      name = "Sans 10";
    };

    cursorTheme = {
      name = "elementary";
      size = 0;
    };

    gtk3 = {
      extraConfig = {
        gtk-toolbar-style = "GTK_TOOLBAR_BOTH_HORIZ";
        gtk-toolbar-icon-size = "GTK_ICON_SIZE_LARGE_TOOLBAR";
        gtk-button-images = 0;
        gtk-menu-images = 0;
        gtk-enable-event-sounds = 1;
        gtk-enable-input-feedback-sounds = 1;
        gtk-xft-antialias = 1;
        gtk-xft-hinting = 1;
        gtk-xft-hintstyle = "hintslight";
        gtk-xft-rgba = "rgb";
      };
    };
      
    gtk2 = {
      extraConfig = ''
        gtk-cursor-theme-size=0
        gtk-toolbar-style=GTK_TOOLBAR_BOTH_HORIZ
        gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
        gtk-button-images=0
        gtk-menu-images=0
        gtk-enable-event-sounds=1
        gtk-enable-input-feedback-sounds=1
        gtk-xft-antialias=1
        gtk-xft-hinting=1
        gtk-xft-hintstyle=hintslight
        gtk-xft-rgba=rgb
      '';
    };
  }; 

  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}

