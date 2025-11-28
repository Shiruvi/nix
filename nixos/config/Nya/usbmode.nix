{ config, ... }:
{
  hardware.usb-modeswitch.enable = true; # turn off usb cd drivers and expose real devices
  boot.kernelModules = [ "8852au" ];
  boot.extraModulePackages = [
    config.boot.kernelPackages.rtl8852au
  ];
}
