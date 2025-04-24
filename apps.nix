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
    htop

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
    aider-chat

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
    tidal-hifi
    obsidian
    wgnord
  ];

}
