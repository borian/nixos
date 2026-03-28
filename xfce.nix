

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    acpid
    xfce4-whiskermenu-plugin

    blueman # bluetooth manager

    file-roller
    zip
    zstd
    xz
    lz4
    gnutar

    elementary-xfce-icon-theme
    font-manager
    gparted
    pavucontrol
    qalculate-gtk
    wmctrl
    xclip
    xcolor
    xdo
    xdotool
    catfish
    gigolo
    xfce4-appfinder
    xfce4-clipman-plugin
    xfce4-dict
    xfce4-fsguard-plugin
    xfce4-genmon-plugin
    xfce4-pulseaudio-plugin
    xfce4-systemload-plugin
    xfce4-whiskermenu-plugin
    xfce4-xkb-plugin
    xfce4-panel
    xev
    xkill
    xsel
    xwinmosaic

  ];

  programs.thunar.plugins = with pkgs; [
    thunar-archive-plugin
    thunar-volman
  ];


  # gtk = {
  #   enable = true;
  #     iconTheme = {
  #     name = "elementary-Xfce-dark";
  #     package = pkgs.elementary-xfce-icon-theme;
  #   };
  #   theme = {
  #     name = "zukitre-dark";
  #     package = pkgs.zuki-themes;
  #   };
  #   gtk3.extraConfig = {
  #     Settings = ''
  #       gtk-application-prefer-dark-theme=1
  #     '';
  #   };
  #   gtk4.extraConfig = {
  #     Settings = ''
  #       gtk-application-prefer-dark-theme=1
  #     '';
  #   };
  # };

}
