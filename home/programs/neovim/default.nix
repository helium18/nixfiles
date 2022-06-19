{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    withNodeJs = true; # coc needs js

    plugins = with pkgs.vimPlugins; [
      auto-pairs
      vim-nix
      vim-airline
      editorconfig-vim
      vim-airline-themes
      nerdtree
      tabular
      vim-css-color
      vim-parinfer
      vim-closetag
      indentLine
      vim-devicons
      vim-toml
      jsonc-vim
      vim-smoothie
      yuck-vim
      shrimp-vim

      # coc plugins
      coc-pyright
      coc-rust-analyzer
      coc-tsserver
      coc-html
      coc-json
      coc-css
      coc-lua
    ];

    extraConfig = builtins.readFile ./config/init.vim;

    # coc
    coc = {
      enable = true;

      package = pkgs.vimPlugins.coc-nvim-overlay;

      settings = {
        "rust-analyzer.checkOnSave.command" = "clippy";
        "rust-analyzer.hoverActions.linksInHover" = true;
        "typescript.inlayHints.enumMemberValues.enabled" = true;
        "typescript.inlayHints.functionLikeReturnTypes.enabled" = true;
        "typescript.inlayHints.parameterNames.enabled" = "all";
        "typescript.inlayHints.parameterNames.suppressWhenArgumentMatchesName" = true;
        "typescript.inlayHints.parameterTypes.enabled" = true;
        "typescript.inlayHints.propertyDeclarationTypes.enabled" = true;
        "typescript.inlayHints.variableTypes.enabled" = true;
        "coc.preferences.formatOnSaveFiletypes" = [ "*" ];
        "eslint.filetypes" = [
          "javascript"
          "typescript"
          "typescriptreact"
          "javascriptreact"
          "json"
        ];
        "languageserver" = {
          "nix" = {
            "command" = "rnix-lsp";
            "filetypes" = [
              "nix"
            ];
          };
        };
      };
    };

  };
}


