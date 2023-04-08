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
    };
  };
}
