{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    withNodeJs = true;

    plugins = with pkgs.vimPlugins; [
      auto-pairs
      vim-nix
      vim-airline
      vim-airline-themes
      nerdtree
      tabular
      vim-css-color
      vim-parinfer 
      vim-closetag
      tender-vim
      indentLine
      vim-devicons
      vim-toml
      jsonc-vim
      vim-smoothie
    ]; 

    extraConfig = builtins.readFile ../config/neovim/init.vim;

    # coc
    coc = {
      enable = true;

      settings = builtins.readFile ../config/neovim/coc-settings.json;
    };
  };
}


