{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        globals.mapleader = " ";
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
           lspconfig.enable = true;
           formatOnSave = true;
        };
        languages = {
           enableTreesitter = true;
           enableFormat = true;
           bash = {
                enable = true;
                format.enable = true;
                lsp.enable = true;
                treesitter.enable = true;
           };
           nix = {
                enable = true;
                format.enable = true;
                lsp.enable = true;
                treesitter.enable = true;
           };
        };
      };
    };
  };
}
