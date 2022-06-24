inputs: final: prev:

{
  neovim = prev.neovim.overrideAttrs (oldAttrs: rec {
    src = inputs.neovim;
  });
}
