{ config, pkgs, ... }:
{
  # Enable Neovim
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    # Все инструменты, которые нужны AstroNvim, LSP, Treesitter, formatters
    extraPackages = with pkgs; [
      gcc
      gnumake
      cmake
      pkg-config

      nodejs
      python3
      python3Packages.pip

      ripgrep
      fd
      tree-sitter
      unzip

      # LSP servers — через NixOS, НЕ Mason
      lua-language-server
      clang-tools
      gopls
      vscode-langservers-extracted
      yaml-language-server
      taplo # TOML LSP
    ];
  };

  # Позволяем Mason добавлять свои bin если нужно
  home.sessionVariables = {
    PATH = "$HOME/.local/share/nvim/mason/bin:$PATH";
  };

  # Дополнительно — чтобы Mason мог скачивать (не обязательно)
  programs.git.enable = true;

  # Утилиты, которые AstroNvim любит использовать
  home.packages = with pkgs; [
    bat
    fzf
    ripgrep
  ];
}
