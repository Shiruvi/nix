{ config, pkgs, ... }:

let
  # Загружаем AstroNvim прямо с GitHub
  astronvim = pkgs.fetchFromGitHub {
    owner = "AstroNvim";
    repo = "AstroNvim";
    rev = "v4";  # Укажи нужную версию или commit
    sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };
in
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
      pyright
      clang-tools
      gopls
      rust-analyzer
      vscode-langservers-extracted
      yaml-language-server
      taplo # TOML LSP
    ];
  };

  # Устанавливаем AstroNvim как конфиг Neovim
  home.file.".config/nvim".source = astronvim;

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
