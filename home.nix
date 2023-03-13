{ config, pkgs, ... }:
{

  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
    
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "docker" ];
      theme = "clean";
    };
  };

}