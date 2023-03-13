{ config, pkgs, ... }:

{
    
   environment.systemPackages = with pkgs; [
     vim 
     wget
     firefox
     vscode
     rofi
     guake
     git
     zsh
   ];


}