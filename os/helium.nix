{ config, pkgs, ... }:

{
  users.users.helium = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; 
  };
}
