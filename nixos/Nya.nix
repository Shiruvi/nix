{
  imports = [
    ./config/Nya.nix
    ./pkgs/Nya.nix
  ];
  networking.hostName = "Nya";
  time.timeZone = "Europe/Moscow";
}
