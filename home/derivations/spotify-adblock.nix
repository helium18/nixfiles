{ pkgs
, rustPlatform
, stdenv
, lib
, fetchFromGitHub
, spotify
, makeDesktopItem
}:


rustPlatform.buildRustPackage
rec {
  pname = "spotify-adblock";
  version = "1.0.2";

  src = fetchFromGitHub {
    owner = "abba23";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-YGD3ymBZ2yT3vrcPRS9YXcljGNczJ1vCvAXz/k16r9Y=";
  };

  cargoSha256 = "sha256-bYqkCooBfGeHZHl2/9Om+0qbudyOCzpvwMhy8QCsPRE=";

  postInstall = ''
    mkdir -p $out/spotify-adblock/
    mv config.toml $out/spotify-adblock/ 
    mv $out/lib/libspotifyadblock.so $out/lib/spotify-adblock.so
  '';



  meta = with lib; {
    description = "Adblocker for Spotify";
    homepage = "https://github.com/abba23/spotify-adblock";
    license = licenses.gpl3;
    maintainers = with maintainers; [ helium ];
    platforms = platforms.unix;
  };
}

  makeDesktopItem
{
  name = "spotify-adblock";
  desktopName = "spotify-adblock";
  exec = "LD_PRELOAD=$out/lib/spotify-adblock.so ${spotify}/bin/spotify";
  terminal = "false";
}
