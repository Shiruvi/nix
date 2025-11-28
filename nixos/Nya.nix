{
  imports = [
    ./config/Nya/modules.nix
    ./pkgs/Nya.nix
    ./hardware/Nya.nix
  ];
  networking.hostName = "Nya";
  time.timeZone = "Europe/Moscow";
}
