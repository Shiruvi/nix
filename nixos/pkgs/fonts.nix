{ pkgs, ... }:
{
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

}
