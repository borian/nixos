

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    acpid
    xfce.xfce4-whiskermenu-plugin

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
    xfce.catfish
    xfce.gigolo
    xfce.xfce4-appfinder
    xfce.xfce4-clipman-plugin
    xfce.xfce4-dict
    xfce.xfce4-fsguard-plugin
    xfce.xfce4-genmon-plugin
    xfce.xfce4-panel
    xfce.xfce4-pulseaudio-plugin
    xfce.xfce4-systemload-plugin
    xfce.xfce4-whiskermenu-plugin
    xfce.xfce4-xkb-plugin
    xorg.xev
    xsel
    xwinmosaic

  ];

  programs.thunar.plugins = with pkgs.xfce; [
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
