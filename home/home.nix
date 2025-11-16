{
  imports = [
    ./programs/modules.nix
  ];
  programs.dankMaterialShell.enable = true;
  home = {
    username = "Shiruvi";
    homeDirectory = "/home/Shiruvi/";
    stateVersion = "25.05";
  };
}
