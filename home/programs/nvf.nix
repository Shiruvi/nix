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
        filetree.nvimTree = {
          enable = true;
          mappings = {
            findFile = "<leader>f";
            focus = "<leader>o";
            toggle = "<leader>e";
          };
        };
        tabline.nvimBufferline = {
          enable = true;
          setupOpts.options.show_duplicate_prefix = false;
          setupOpts.options.show_tab_indicators = false;
          setupOpts.options.show_close_icon = false;
          mappings = {
            closeCurrent = "<leader>c";
            cycleNext = "]b";
            cyclePrevious = "[b";
          };
        };
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        lsp = {
          enable = true;
          formatOnSave = true;
          lspconfig.enable = true;
        };
        languages = {
          enableTreesitter = true;
          enableFormat = true;
          nix.enable = true;
        };
      };
    };
  };
}
