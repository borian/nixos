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
    ncdu
    htop
    avahi
    usbutils

    # dev
    jetbrains.idea
    vscode
    jdk
    nodejs
    bun
    uv
    dig
    docker
    kubectl
    kubectx
    kubernetes-helm
    k9s
    android-tools
    keystore-explorer
    wireshark
    iotop
    ansible
    openssl
    difftastic
    tailscale
    aider-chat
    claude-code
    opencode

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
    obs-studio
    signal-desktop
    keepassxc
    spotify
    obsidian
    wgnord
    gnome-network-displays
  ];

}
