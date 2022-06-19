self: super:

{
  vimPlugins = super.vimPlugins // {
    yuck-vim = super.vimUtils.buildVimPluginFrom2Nix {
      pname = "yuck-vim";
      version = "2022-06-20";
      src = super.fetchFromGitHub {
        owner = "elkowar";
        repo = "yuck.vim";
        rev = "6dc3da77c53820c32648cf67cbdbdfb6994f4e08";
        sha256 = "sha256-lp7qJWkvelVfoLCyI0aAiajTC+0W1BzDhmtta7tnICE=";
      };
      meta.homepage = "https://github.com/elkowar/yuck.vim";
    };
  };
}
