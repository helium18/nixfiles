self: super: {
  vimPlugins = super.vimPlugins // {
    coc-nvim-overlay = super.vimUtils.buildVimPluginFrom2Nix {
      pname = "coc-nvim";
      version = "2022-5-27";
      src = super.fetchFromGitHub {
        owner = "neoclide";
        repo = "coc.nvim";
        rev = "325fbcec571e00c51546fb743e85be1fca8baf1a";
        sha256 = "sha256-BS/HJE6aBn0yMY7WADQyF61kwGHznekdM33rkUg682I=";
      };
    };
  };
}
