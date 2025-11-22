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
            indicator.style = "icon";
            numbers = "none";
          };
          mappings = {
            closeCurrent = "<leader>c";
            cycleNext = "]b";
            cyclePrevious = "[b";
          };
        };
        statusline.lualine = {
          enable = true;
          activeSection.z = [
            ''
              {
                "",
                draw_empty = true,
                separator = { left = '', right = '' }
              }
            ''
            ''
              {
                "progress",
                separator = {left = ''}
              }
            ''
            ''
              {"location"}
            ''
            ''
              {
                "fileformat",
                color = {fg='black'},
                symbols = {
                  unix = ' ', -- e712
                  dos = '',  -- e70f
                  mac = '',  -- e711
                }
              }
            ''
          ];
        };
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
