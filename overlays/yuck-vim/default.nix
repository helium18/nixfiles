input: final: prev:
{
  vimPlugins = prev.vimPlugins // {
    yuck-vim = final.vimUtils.buildVimPluginFrom2Nix {
      pname = "yuck-vim";
      version = "2022-06-20";
      src = input.yuck-vim;
      meta.homepage = "https://github.com/elkowar/yuck.vim";
    };
  };
}
