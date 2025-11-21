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
          enableLSP = true;
          #           bash.enable = true;
          nix.enable = true;
        };
      };
    };
  };
}
