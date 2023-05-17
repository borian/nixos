{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    nixfmt

    vim
    wget
    firefox
    vscode
    rofi
    guake
    git
    zsh
    # virtualbox

    jdk
    nodejs

    discord

  ];

}
