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
          setupOpts.options = {
            separator_style = null;
            indicator.style = "icon";
            numbers = "none";
          };
          mappings = {
            closeCurrent = "<leader>c";
            cycleNext = "]b";
            cyclePrevious = "[b";
          };
        };
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        snippets.luasnip.enable = true;
        lsp = {
          enable = true;
          formatOnSave = true;
          lspconfig.enable = true;
        };
        languages = {
          enableTreesitter = true;
          enableFormat = true;
          nix.enable = true;
          html.enable = true;
          css.enable = true;
        };
      };
    };
  };
}
