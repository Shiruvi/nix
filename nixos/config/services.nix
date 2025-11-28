{
  services.udisks2.enable = true;
  security.polkit.enable = true;
  services.gvfs.enable = true;
  services.upower.enable = true;
  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  services.power-profiles-daemon.enable = true;
  programs.niri.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
