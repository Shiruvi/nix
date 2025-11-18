{
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = [ "Shiruvi" ];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;
}
