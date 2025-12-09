{
  programs.nixvim.plugins.neo-tree = {
    enable = true;
    settings = {
      closeIfLastWindow = true;
      source_selector = {
            winbar = true;
            statusline = false;
        };
      filesystem.bindToCwd = false;
      filesystem.followCurrentFile.enabled = true;
      window.position = "left";
      window.width = 50;
    };
  };

}
