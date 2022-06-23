{ packages, ... }:

{
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  # -- Packages --
  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    networkmanager
  ];
}
