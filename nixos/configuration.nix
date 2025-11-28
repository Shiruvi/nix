{
  #WARN: Don't touch this preset and create custom one please
  imports = [
    ./packages.nix
    ./config/modules.nix
    ./pkgs/modules.nix
  ];
  nixpkgs.config = {
    allowUnfree = true;
    allowUnsupportedSystem = true;
  };
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  networking.networkmanager.enable = true;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  system.stateVersion = "25.05";
}
