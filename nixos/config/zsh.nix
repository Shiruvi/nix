{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableBashCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    setOptions = {
        "sourse $HOME/nix/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
    };
  };
  programs.zsh.ohMyZsh = {
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
}
