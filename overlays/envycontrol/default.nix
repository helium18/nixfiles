inputs: final: prev:  {
  envycontrol = prev.callPackage ./envycontrol.nix { envycontrol = inputs.envycontrol; };
}
