inputs: prev: final:

{
  flameshot = final.flameshot.overrideAttrs (old: rec {
    src = inputs.flameshot;
  });
}
