{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    ohMyZsh = {
        enable = true;
        plugins = [
                "git"
                "sudo"
                "web-search"
                "copyfile"
      "copybuffer"
      "dirhistory"
    ];
    custom = "$HOME/.oh-my-zsh/custom/";
    theme = "powerlevel10k/powerlevel10k";
  };
};
  }
