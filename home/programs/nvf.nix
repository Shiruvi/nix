{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "tokyonight";
          style = "night";
        };
        filetree.neo-tree = {
           enable = true;
           setupOpts.enable_cursor_hijack = true;
        };
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
      };
    };
  };
}
