{
  #WARN: Don't touch this preset and create custom one please
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./config/Modules.nix
    ./pkgs/Modules.nix
  ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  networking.networkmanager.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
}
