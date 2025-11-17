{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    allowUnsupportedSystem = true;
  };

  fonts.packages = with pkgs; [
    # Nerd fonts
    nerd-fonts.ubuntu-mono
    nerd-fonts.jetbrains-mono
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
    # Office fonts
    corefonts
    # Other fonts
    ubuntu-sans
    texlivePackages.noto-emoji
    cantarell-fonts
  ];

  environment.systemPackages = with pkgs; [
    # NixOS
    home-manager
    accountsservice
    ghostty
    usbutils
    pciutils
    openvpn
    pavucontrol

    # Editors
    vim

    # Browser
    firefox
    chromium

    #graphics apps
    ayugram-desktop
    vesktop
    keepassxc
    osu-lazer-bin
    obs-studio

    # CLI Utils
    btop
    fastfetch
    git
    zip
    unzip
    rar
    nftables
    wl-clipboard

    #Wine
    wineWowPackages.stable
    winetricks
    protontricks

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
