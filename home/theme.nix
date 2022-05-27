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
  }; 
}
