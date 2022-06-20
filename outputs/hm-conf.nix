{ system, inputs, nixpkgs, nurpkgs, home-manager, ... }:

let
  overlays = [
    (import ./../home/overlays/coc-nvim inputs)
    (import ./../home/overlays/envycontrol inputs)
    (import ./../home/overlays/picom inputs)
    (import ./../home/overlays/shrimp-vim inputs)
    (import ./../home/overlays/yuck-vim inputs)
  ];

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };

  nur = import nurpkgs {
    inherit pkgs;
    nurpkgs = pkgs;
  };
in
{
  helium = home-manager.lib.homeManagerConfiguration rec {
    inherit pkgs system;

    username = "helium";
    homeDirectory = "/home/${username}";
    stateVersion = "22.05";

    configuration = {
      nixpkgs.overlays = overlays;
      imports = [ ../home/home.nix ];
    };
  };
}

