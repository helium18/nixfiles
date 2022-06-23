inputs: final: prev:

{
  picom-ibhagwan = prev.picom.overrideAttrs (oldAttrs: {
    src = inputs.picom;
  });
}
