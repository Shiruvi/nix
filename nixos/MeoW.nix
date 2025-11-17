{
  imports = [
    ./config/MeoW.nix
    ./pkgs/MeoW.nix
    ./hardware/MeoW.nix
  ];
  networking.hostName = "MeoW";
  time.timeZone = "Europe/Moscow";
}
