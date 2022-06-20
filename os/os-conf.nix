{ lib, inputs, system, ... }:

{
  hp-omen = lib.nixosSystem {
    inherit system;
    modules = [ ./configuration.nix ];
  };
}
