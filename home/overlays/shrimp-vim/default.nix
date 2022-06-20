inputs: prev: final: {
  vimPlugins = final.vimPlugins // {
    shrimp-vim = prev.vimUtils.buildVimPluginFrom2Nix {
      pname = "shrimp-vim";
      version = "2022-06-20";
      src = inputs.shrimp-vim;
    };
  };
}
