# NixOS manual ‘nixos-help’
# ascii https://patorjk.com/software/taag/#p=display&f=miniwi&t=nix
{
  config,
  pkgs,
  ...
}:

{
#   ▘  
# ▛▌▌▚▘
# ▌▌▌▞▖
  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./xfce.nix
    ./apps.nix
    ./home.nix
    ./vim.nix
    # ./tools/intellij.nix
  ];

# ▌     ▗ 
# ▛▌▛▌▛▌▜▘
# ▙▌▙▌▙▌▐▖

  # Use the systemd-boot EFI boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  # boot.loader.grub.useOSProber = true; # needed on multi os
  boot.loader.efi.canTouchEfiVariables = true;
  boot.tmp.cleanOnBoot = true;

  boot.initrd.luks.devices = {
    root = {
      # Get UUID from blkid /dev/sda2
      device = "/dev/disk/by-uuid/861e8b28-33da-494d-abb8-b80c75557076";
      preLVM = true;
      allowDiscards = true;
    };
  };



  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
  };
  services.displayManager.defaultSession = "xfce";





#       ▗      
# ▛▘▌▌▛▘▜▘█▌▛▛▌
# ▄▌▙▌▄▌▐▖▙▖▌▌▌
#   ▄▌         

  networking.hostName = "nix-lap"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # network discovery 
  services.avahi.enable = true;
  # Set your time zone.
  time.timeZone = "Europe/Amsterdam";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    #     keyMap = "de";
    useXkbConfig = true; # use xkbOptions in tty.
  };

  fonts.packages = with pkgs; [ noto-fonts ];

  services.xserver.xkb.layout = "de";
  # services.xserver.xkbOptions = {
  #   "eurosign:e";
  #   "caps:escape" # map caps to escape.
  # };

  # services.printing.enable = true;  # Enable CUPS to print documents.

  # sound.enable = true;

  
  users.users.bo = { # set password with ‘passwd’ on install
    isNormalUser = true;
    extraGroups = [
      "wheel" # Enable ‘sudo’
      "users"
      "docker"
      "adbusers"
      "dialout"
    ];
  };

#   ▘  ▗ 
# ▌▌▌▛▘▜▘
# ▚▘▌▌ ▐▖
  virtualisation.docker.enable = true;

  virtualisation.virtualbox.host.enable = true;
  #virtualisation.virtualbox.host.enableKvm = true;
  #virtualisation.virtualbox.guest.enable = true;
  #virtualisation.virtualbox.guest.x11 = true;
  users.extraGroups.vboxusers.members = [ "bo" ];


#     ▗        ▌ 
# ▛▌█▌▜▘▌▌▌▛▌▛▘▙▘
# ▌▌▙▖▐▖▚▚▘▙▌▌ ▛▖
  networking.networkmanager.enable = true; 
  networking.firewall.enable = true;

  services.tailscale.enable = true;

  programs.mtr.enable = true;
  programs.adb.enable = true;

  programs.steam.enable = true;



  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?
}
