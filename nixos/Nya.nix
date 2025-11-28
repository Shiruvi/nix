{
  imports = [
    ./config/Nya/modules.nix
    ./pkgs/Nya/modules.nix
    ./hardware/Nya.nix
  ];
  networking.hostName = "Nya";
  time.timeZone = "Europe/Moscow";
}
