{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim 
    wget
  ];

  # make neovim the default editor
  programs.neovim.defaultEditor = true;

  programs.dconf.enable = true;

  # make fish the default shell
  programs.fish.enable = true;
<<<<<<< HEAD
  users.defaultUserShell = pkgs.fish;
=======
  users.defaultUserShell = pkgs.zsh;
>>>>>>> master

  nix = {
    package = pkgs.nixFlakes; # or versioned attributes like nixVersions.nix_2_8
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
}
