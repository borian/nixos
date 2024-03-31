{ pkgs, ... }: {
  environment.systemPackages = with pkgs;  [
    cairo
    curl
    dbus
    gdk-pixbuf
    glib
    gtk3
    librsvg
    libsoup
    openssl_3
    pkg-config
    webkitgtk
    wget
  ];
}
