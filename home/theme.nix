{ config, ... }: 

let 
  unstable = import <unstable> {};
in {
  gtk = {
    enable = true;

    theme = {
      name = "Graphite-dark";

      # https://nixos.org/manual/nixpkgs/unstable/#sec-pkg-override
      package = unstable.graphite-gtk-theme.override { 
        tweaks = [ "rimless" ]; 
        themeVariants = [ "default" ]; 
        colorVariants = [ "dark" ];
      };
    };

    iconTheme = {
      name = "papirus";
      package = unstable.papirus-icon-theme;
    }; 
  }; 
}
