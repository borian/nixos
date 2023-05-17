

{ config, pkgs,  ... }:

{
  # add user BoBrueck
  users.users.BoBrueck = {
    isNormalUser = true;
    home = "/home/intellij";
    extraGroups = [ "users" ]; # "wheel" "networkmanager"
  };



  environment.systemPackages = with pkgs; [
    xorg.xhost
  ];

}

