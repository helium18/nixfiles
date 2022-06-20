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

    # -- Programs --
    coc-nvim = {
      url = github:neoclide/coc.nvim/release;
      flake = false;
    };

    envycontrol = {
      url = github:geminis3/envycontrol;
      flake = false;
    };

    picom = {
      url = github:ibhagwan/picom;
      flake = false;
    };

    shrimp-vim = {
      url = github:helium18/tender.vim;
      flake = false;
    };

    yuck-vim = {
      url = github:elkowar/yuck.vim;
      flake = false;
    };
  };

  outputs = inputs @ { self, nixpkgs, nurpkgs, flake-utils, home-manager, ... }:
    let
      system = "x86_64-linux";
    in
    {
      homeConfigurations = (
        import ./outputs/hm-conf.nix {
          inherit system nixpkgs nurpkgs home-manager inputs;
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
