{
  programs.nvf = {
    enable = true;
    theme = {
      enable = true;
      name = "tokyonight";
    };
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "tokyonight";
          style = "night";
        };
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
      };
    };
  };
}
