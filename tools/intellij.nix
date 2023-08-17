

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

    (pkgs.runCommand "idea.sh" {} ''
      mkdir -p $out/bin
      cp -a ${../usr-bin/idea.sh} $out/bin/idea
    '')
  ];

}

