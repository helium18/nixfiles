{
  description = "Helium's nixfiles";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    nurpkgs = {
      url = github:nix-community/NUR;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs @ { self, nixpkgs, nurpkgs, flake-utils, home-manager, ... }:
    let
      system = "x86_64-linux";
    in
    {
      homeConfigurations = (
        import ./outputs/hm-conf.nix {
          inherit system nixpkgs nurpkgs home-manager;
        }
      );

      nixosConfigurations = (
        import ./outputs/os-conf.nix {
          inherit (nixpkgs) lib;
          inherit inputs system;
        }
      );
    };
}
