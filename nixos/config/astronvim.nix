# NixOS configuration with packaged AstroNvim + FHS environment
# This replaces Home Manager entirely.

{ config, pkgs, ... }:

let

  # FHS environment using pkgs.buildFHSEnv
  fhsEnv = pkgs.buildFHSEnv {
    name = "astronvim-fhs";
    targetPkgs = pkgs: with pkgs; [
      neovim
      gcc
      gdb
      cmake
      ninja
      llvmPackages.clang
      llvmPackages.lldb
      clang-tools
      # clangd
      pkg-config
    ];
    runScript = "nvim";
  };

in
{
  # Make FHS env + AstroNvim available to the system
  environment.systemPackages = [ fhsEnv ];


  # Wrapper script
  # Wrapper script for astronvim-fhs
  environment.etc."astronvim-fhs" = {
    text = ''
      #!/usr/bin/env bash
      exec ${fhsEnv}/bin/astronvim-fhs "$@"
    '';
    mode = "0555";
  };

  # Short command: avn
  environment.etc."avn" = {
    text = ''
      #!/usr/bin/env bash
      exec ${fhsEnv}/bin/astronvim-fhs "$@"
    '';
    mode = "0555";
  };

}
