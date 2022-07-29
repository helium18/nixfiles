{ system, inputs, overlays, ... }:

let
  pkgs = import inputs.nixpkgs {
    inherit system overlays;
    config.allowUnfree = true;
  };

  nur = import inputs.nurpkgs {
    inherit pkgs;
    nurpkgs = pkgs;
  };
in
{
  inherit pkgs;

  modules = [
    ./home.nix
    {
      home = {
        username = "brick";
        homeDirectory = "/home/helium";
        stateVersion = "22.05";
      };
    }
  ];
}


