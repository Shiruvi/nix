{ pkgs, ... }:{
  fileSystems."/media/HDD" = {
    device = "/dev/disk/by-uuid/9c351aa9-2a86-4b3b-8be8-b084a0892d9b";
    fsType = "btrfs";
  };
  fileSystems."/media/GameSSD" = {
    device = "/dev/disk/by-uuid/fad9cbc9-a5b3-4587-bab7-b8412130af2e";
    fsType = "btrfs";
  };
  systemd.tmpfiles.rules = [
    "d /media/HDD      0755 Shiruvi users - -"
    "d /media/GameSSD  0755 Shiruvi users - -"
  ];
}
