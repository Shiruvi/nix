{ pkgs, ... }:{
  #AstroNvim
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    # Установка AstroNvim
    withNodeJs = true; # Для LSP и некоторых плагинов
    withPython3 = true;

    # Базовые зависимости для работы
    extraPackages = with pkgs; [
      gcc
      ripgrep
      fd
      lazygit
      nodejs
      python3
      lua
      stylua
      shellcheck
    ];
  };
}
