self: super: {
  vimPlugins = super.vimPlugins // {
    shrimp-vim = super.vimUtils.buildVimPluginFrom2Nix {
      pname = "shrimp-vim";
      version = "2022-06-20";
      src = super.fetchFromGitHub {
        owner = "helium18";
        repo = "tender.vim";
        rev = "b4e802ca58226e89647f140caf0f94432816daa2";
        sha256 = "sha256-hbpAJvouBjOv/myh+djA8rUZG+EOPm5Hti3BF3eFbFQ=";
      };
    };
  };
}
