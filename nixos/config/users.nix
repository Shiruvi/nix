{ pkgs, ... }:{ 
  users.users.Shiruvi = {
    isNormalUser = true;
    extraGroups = [ 
      "audio"
      "wheel"
      "input"
      "networkmanager"
      "storage"
      "plugdev"
      "disk"
      "uinput"
    ];
    shell = pkgs.zsh;
  };
}
