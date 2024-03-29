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
      upgrade = "sudo nix flake update --commit-lock-file .#nix-lap switch";
      upgrade-lock = "sudo nix flake lock --update-input nixpkgs";
      op = "xdg-open";
      # bt sony xm4 connect 88:C9:E8:B1:17:D9
    };
  };
}
