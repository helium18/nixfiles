{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    nativeOnly = true;
  };

  home.packages = with pkgs; [
    # utils
    rofi
    kitty
    xclip
    flameshot
    maim
    pfetch

    # libs

    # fonts
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })

    # dev
    gh # github cli
    rnix-lsp # nix-lsb
    vscode
    sumneko-lua-language-server

    # daily
    chromium
    spotify
  ];
}

