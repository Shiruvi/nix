{ pkgs, ... }: {
  home.packages = with pkgs; [
    bibata-cursors
  ];
  home.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "16";
  };
}
