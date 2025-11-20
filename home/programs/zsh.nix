{ pkgs, ... }: {
home.packages = with pkgs; [
    fzf
    fzf-tab
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = false;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
        initExtra = ''
       source ${pkgs.fzf}/share/fzf/completion.zsh
       source ${pkgs.fzf}/share/fzf/key-bindings.zsh
       source ${pkgs.fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh
    #'';
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
