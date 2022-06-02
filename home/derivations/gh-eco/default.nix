{ lib
, go
, fetchFromGitHub
, buildGoPackage
}:

buildGoPackage rec {
  pname = "gh-eco";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "coloradocolby";
    repo = "gh-eco";
    rev = "v${version}";
    sha256 = "sha256-rJG1k8lOyXQSP3FgyyHZvVrQkn2yEtAcgg9CpbPvCwY=";
  };

  goPackagePath = "github.com/coloradocolby/gh-eco";
  goDeps = ./deps.nix;

  # No tests
  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/coloradocolby/gh-eco";
    description = "gh extension to explore the ecosystem";
    license = licenses.mit;
    platforms = go.meta.platforms or lib.platforms.all;
    maintainers = with maintainers; [ helium18 ];
  };
}

