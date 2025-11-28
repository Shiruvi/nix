{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    home-manager
    accountsservice
    kitty
    usbutils
    pciutils
    alsa-utils
  ];
}
