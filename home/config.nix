{ ... }:

{ 
  # hm config
  programs.home-manager.enable = true;
  home = {
    username = "helium";
    homeDirectory = "/home/helium";
    stateVersion = "22.05";
  };

  # wm config
  xsession = {
  enable = true;

    windowManager = {
      awesome = {
        enable = true;
      };
    };

  };
}
