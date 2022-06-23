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

  username = "brick";
  homeDirectory = "/home/helium";
  stateVersion = "21.11";
  extraSpecialArgs = { inherit inputs; };

  configuration = {
    nixpkgs.overlays = overlays;
    imports = [ ./home.nix ];
  };
}

