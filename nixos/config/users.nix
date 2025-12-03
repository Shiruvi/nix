{ pkgs, ... }:
{
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
    shell = pkgs.fish;
  };
  system.activationScripts.script.text = ''
    mkdir -p /var/lib/AccountsService/{icons,users}
    cp /home/Shiruvi/Pictures/.face /var/lib/AccountsService/icons/Shiruvi
    echo -e "[User]\nIcon=/var/lib/AccountsService/icons/Shiruvi\n" > /var/lib/AccountsService/users/Shiruvi
  '';
}
