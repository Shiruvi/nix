{
  programs.nixvim = {
    enable = true;
    colorschemes.dracula.enable = true;
    clipboard.providers.wl-copy.enable = true;
    waylandSupport = true;
    opts = {
		number = true;
		relativenumber = true;
	    };

  };
}
