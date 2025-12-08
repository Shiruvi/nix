{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obs-studio
    lunar-client
    ];

}
