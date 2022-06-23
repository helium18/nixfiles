inputs: prev: final: {
  vimPlugins = final.vimPlugins // {
    coc-nvim-overlay = final.vimUtils.buildVimPluginFrom2Nix {
      pname = "coc-nvim";
      version = "2022-5-27";
      src = inputs.coc-nvim;
    };
  };
}
