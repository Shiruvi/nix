{
  nvf.vim.settings = {
    statusline.lualine = {
      enable = true;
      activeSection.a = [
        ''
          {
            "mode",
            icons_enabled = true,
            separator = {
              right = ''
            },
          }
        ''
        ''
          {
            "",
            draw_empty = true,
            separator = { left = '', right = '' }
          }
        ''
      ];
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

  };
}
