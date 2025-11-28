{
  imports = [
    ./config/MeoW/modules.nix
    ./pkgs/MeoW/modules.nix
    ./hardware/MeoW.nix
  ];
  networking.hostName = "MeoW";
  time.timeZone = "Europe/Moscow";
}
