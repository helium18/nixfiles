{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim 
    wget
  ];

  # make neovim the default editor
  programs.neovim.defaultEditor = true;

  # make fish the default shell
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

  nix = {
    package = pkgs.nixFlakes; # or versioned attributes like nixVersions.nix_2_8
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
}
