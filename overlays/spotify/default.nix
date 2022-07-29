inputs: prev: final: {
  spotify-adblock = final.callPackage ./spotify.nix {
    curl = final.curl.override { gnutlsSupport = true; opensslSupport = false; };
    adblock = final.callPackage ./adblock.nix { };
  };
}

