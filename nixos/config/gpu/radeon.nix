{
boot.initrd.kernelModules = [ "amdgpu" ];
services.lm_sensors.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];
}
