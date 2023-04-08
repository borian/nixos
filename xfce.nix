

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    acpid
    xfce.xfce4-whiskermenu-plugin
    xarchiver
  ];

  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];

}
