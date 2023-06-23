{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    nixfmt

    wget
    rofi
    guake
    tmux
    vim
    git
    zsh

    # dev
    vscode
    jdk
    nodejs
    dig

    # Apps
    firefox
    discord
    signal-desktop
    keepassxc
  ];

}
