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
}
