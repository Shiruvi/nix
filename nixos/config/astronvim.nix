# NixOS configuration with packaged AstroNvim + FHS environment
# This replaces Home Manager entirely.

{ config, pkgs, ... }:

let
  # Full AstroNvim package
  astroNvimPkg = pkgs.stdenv.mkDerivation rec {
    pname = "astronvim-full";
    version = "1.0";

    src = pkgs.fetchFromGitHub {
      owner = "AstroNvim";
      repo = "AstroNvim";
      rev = "v3.36.0";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };

    userConfig = pkgs.writeTextDir "lua/user" ''
      return {
        plugins = {
          "AstroNvim/astrocommunity",
          { import = "astrocommunity.pack.cpp" },
          { import = "astrocommunity.editing-support.copilot-chat" },

          -- Added themes and plugins
          { "folke/tokyonight.nvim" },
          { "vyfor/cord.nvim", build = ":CordUpdate" },
        },

        -- Set theme
        colorscheme = "tokyonight",
      }
    '';

    installPhase = ''
      mkdir -p $out/config/nvim
      cp -r $src/* $out/config/nvim/
      cp -r ${userConfig}/lua $out/config/nvim/lua/user
    '';
  };

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
      clangd
      pkg-config
    ];
    runScript = "nvim";
  };

in
{
  # Make FHS env + AstroNvim available to the system
  environment.systemPackages = [ astroNvimPkg fhsEnv ];

  # Install AstroNvim config into /etc
  environment.etc."nvim" = {
    source = astroNvimPkg + "/config/nvim";
  };

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
