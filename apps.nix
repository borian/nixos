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
    docker
    wireshark

    # Apps
    firefox
    chromium
    vlc
    discord
    signal-desktop
    keepassxc
  ];

}
