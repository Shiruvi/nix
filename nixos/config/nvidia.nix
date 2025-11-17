{ pkgs, config, ... }: {
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.graphics.enable = true;
  hardware.opentabletdriver.enable = true;
  hardware.opentabletdriver.daemon.enable = true;
  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    powerManagement.enable = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  # boot.blacklistedKernelModules = [ "nouveau" ];
  boot.extraModulePackages = [ 
  config.boot.kernelPackages.nvidiaPackages.stable
  config.boot.kernelPackages.rtl8852au
  ];
  environment.sessionVariables = {
    GDM_BACKEND = "nvidia_drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    WLR_NO_HARDWARE_CURSORS = "1";
  };
}
