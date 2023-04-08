{ config, pkgs, ... }:

{
  environment.variables = { EDITOR = "vim"; };

  programs.vim = {
    defaultEditor = true;
    #  plugins = with pkgs.vimPlugins; [ vim-airline ];
    # settings = { ignorecase = true; };


    # extraConfig = ''
    # #     set encoding=utf-8
    # #     set nocompatible               " Be improved
    #      set mouse=a                    " Enable mouse
    # #     set hidden                     " Quick buffer switching
    # #     set ruler                      " Show cursor position
    #      set clipboard=unnamedplus
    # #     set term=xterm-256color
    # #     ca w!! w !sudo tee >/dev/null "%"
    # #     colorscheme molokai
    # #     set gfn=inconsolata
    # #     set number   
    # '';
  };
}
