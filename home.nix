{ config, pkgs, ... }: {

  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;

    ohMyZsh = {
      enable = true;
      plugins = [ "git" "docker" ];
      theme = "clean";
    };

    shellAliases = {
      ll = "ls -l";
      gs = "gss";
      update = "sudo nixos-rebuild --flake .#nix-lap switch";
      op = "xdg-open";
      # bt sony xm4 connect 88:C9:E8:B1:17:D9
    };
  };
}
