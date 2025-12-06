{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    # Browser
    firefox
    chromium

    #graphics apps
    ayugram-desktop
    vesktop
    keepassxc
    obs-studio
    lunar-client
	pavucontrol

    # CLI Utils
    btop
    fastfetch
    git
    zip
    unzip
    rar
    nftables
    wl-clipboard
    eza

    # graphics
    cliphist
    nautilus
    niri
    xwayland-satellite
    swww

    #disks
    ntfs3g
    exfat
    fuse
    gvfs
  ];
}
