{ pkgs, ... }:
{
  enviroment.systemPackeges = with pkgs; [
    home-manager
    accountsservice
    kitty
    usbutils
    pciutils
    alsa-utils
  ];
}
