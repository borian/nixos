{ config, pkgs, ... }: {

  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;
    # shellInit = ''[ -z "$TMUX"  ] && { exec tmux new-session && exit;};'';
    ohMyZsh = {
      enable = true;
      plugins = [ "git" "docker" "tmux" ];
      theme = "clean";
    };

    shellAliases = {
      ll = "ls -l";
      gs = "gss";
      update = "sudo nixos-rebuild --flake .#nix-lap switch";
      upgrade = "nix flake update --commit-lock-file";
      op = "xdg-open";
      dc = "docker compose";
      # bt sony xm4 connect 88:C9:E8:B1:17:D9
    };
  };

  programs.tmux = {
    enable = true;
    extraConfig = ''
      set -g status-bg black
      set -g status-fg white
      set -g status-left ' '
      set -g status-right '#[fg=white,bg=grey,bold] %d/%m #[fg=white,bg=colour8,bold] %H:%M:%S '
      set -g status-right-length 50
      set -g status-left-length 20

      setw -g window-status-current-format ' #I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249] #{?window_zoomed_flag,#[fg=yellow],}#F '

      bind-key v copy-mode

    '';
  };

  # dev
  programs.java = {
    enable = true;
  };

}
