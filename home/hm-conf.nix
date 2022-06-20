{ system, inputs, nixpkgs, nurpkgs, home-manager, ... }:

let
  overlays = [
    (import ./overlays/coc-nvim inputs)
    (import ./overlays/envycontrol inputs)
    (import ./overlays/picom inputs)
    (import ./overlays/shrimp-vim inputs)
    (import ./overlays/yuck-vim inputs)
  ];

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };

  nur = import nurpkgs {
    inherit pkgs;
    nurpkgs = pkgs;
  };

  mkHome = user: home-manager.lib.homeManagerConfiguration rec {
    inherit pkgs system;

    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = "22.05";

    configuration = {
      nixpkgs.overlays = overlays;
      imports = [ ../home/home.nix ];
    };
  };
in
{
  helium = mkHome "helium";
}

