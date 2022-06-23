inputs: prev: final:

{
  flameshot = prev.flameshot.overrideAttrs (old: rec {
    src = inputs.flameshot;
  });
}
