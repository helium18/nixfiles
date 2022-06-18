{ system, nixpkgs, nurpkgs, home-manager, ... }:

let
  username = "helium";
  homeDirectory = "/home/${username}";
  configHome = "${homeDirectory}/.config";

  pkgs = import nixpkgs {
    inherit system;

    config.allowUnfree = true;
    config.xdg.configHome = configHome;
  };

  nur = import nurpkgs {
    inherit pkgs;
    nurpkgs = pkgs;
  };
in
{
  main = home-manager.lib.homeManagerConfiguration rec {
    inherit pkgs system username homeDirectory;

    stateVersion = "22.05";
    configuration = import ../home/home.nix {
      inherit (pkgs) config;
      inherit nur pkgs;
    };
  };
}

