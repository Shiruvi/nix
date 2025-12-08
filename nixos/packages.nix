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
    fuzzel
    clipse
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
