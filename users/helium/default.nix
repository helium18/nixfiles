{ system, inputs, overlays, ... }:

let
  pkgs = import inputs.nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };

  nur = import inputs.nurpkgs {
    inherit pkgs;
    nurpkgs = pkgs;
  };
in
{
  inherit pkgs system;

  username = "helium";
  homeDirectory = "/home/helium";
  stateVersion = "22.05";
  extraSpecialArgs = { inherit inputs; };

  configuration = {
    nixpkgs.overlays = overlays;
    imports = [ ./home.nix ];
  };
}

