{
  description = "Helium's nixfiles";

  inputs = {
    # -- Package sources --
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nurpkgs = { url = github:nix-community/NUR; inputs.nixpkgs.follows = "nixpkgs"; };

    # -- Utils --
    home-manager = { url = github:nix-community/home-manager; inputs.nixpkgs.follows = "nixpkgs"; };

    # -- Programs --
    envycontrol = { url = github:geminis3/envycontrol; flake = false; };
    picom = { url = github:ibhagwan/picom; flake = false; };
    flameshot = { url = github:flameshot-org/flameshot; flake = false; };
    neovim = { url = github:neovim/neovim; flake = false; };

    ## -- Vim Plugins --
    coc-nvim = { url = github:neoclide/coc.nvim/release; flake = false; };
    shrimp-vim = { url = github:helium18/tender.vim; flake = false; };
    yuck-vim = { url = github:elkowar/yuck.vim; flake = false; };
  };

  outputs = inputs @ { self, ... }:
    let
      inherit (inputs.home-manager.lib) homeManagerConfiguration;
      inherit (inputs.nixpkgs.lib) nixosSystem;
      inherit (inputs.nixpkgs) lib;

      system = "x86_64-linux";

      overlays = [
        (import ./overlays/coc-nvim inputs)
        (import ./overlays/envycontrol inputs)
        (import ./overlays/picom inputs)
        (import ./overlays/shrimp-vim inputs)
        (import ./overlays/yuck-vim inputs)
        (import ./overlays/flameshot inputs)
        (import ./overlays/neovim inputs)
      ];
    in
    {
      # -- Hosts --
      nixosConfigurations.hp-omen = nixosSystem
        (import ./hosts/hp-omen { inherit lib system inputs; });
      hp-omen = self.nixosConfigurations.hp-omen.config.system.build.toplevel;

      nixosConfigurations.lenovo-c200 = nixosSystem
        (import ./hosts/lenovo-c200 { inherit lib system inputs; });
      lenovo-c200 = self.nixosConfigurations.lenovo-c200.config.system.build.toplevel;

      # -- Users --
      homeConfigurations.helium = homeManagerConfiguration
        (import ./users/helium { inherit system inputs overlays; });
      helium = self.homeConfigurations.helium.activationPackage;

      homeConfigurations.brick = homeManagerConfiguration
        (import ./users/brick { inherit system inputs overlays; });
      brick = self.homeConfigurations.brick.activationPackage;
    };
}
