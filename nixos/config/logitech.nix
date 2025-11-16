{ pkgs, ... }: {
  boot.kernelModules = [ "hid_logitech_dj" ];
  services.solaar = {
    enable = true; # Enable the service
    package = pkgs.solaar; # The package to use
    window = "hide"; # Show the window on startup (show, *hide*, only [window only])
    batteryIcons = "regular"; # Which battery icons to use (*regular*, symbolic, solaar)
    extraArgs = ""; # Extra arguments to pass to solaar on startup
  };
  services.udev.extraRules = ''
    # Logitech Lightspeed Receiver (G502 X Plus uses c547)
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c547", \
      MODE="0664", GROUP="users", TAG+="uaccess"
  '';
  hardware.logitech.wireless.enable = true;
}
