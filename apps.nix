{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style

    wget
    rofi
    guake
    tmux
    vim
    git
    zsh
    ncdu

    # dev
    jetbrains.idea-ultimate
    vscode
    jdk
    nodejs
    bun
    dig
    docker
    kubectl
    kubectx
    kubernetes-helm
    k9s
    keystore-explorer
    wireshark
    iotop
    ansible
    openssl
    difftastic
    tailscale

    # rust
    rustc
    gcc
    cmake
    cargo

    # Apps
    firefox
    chromium
    vlc
    discord
    signal-desktop
    keepassxc
    # spotify
    obsidian
    wgnord
  ];

}
