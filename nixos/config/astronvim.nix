{ config, pkgs, ... }:

let
  # FHS environment for AstroNvim
  astronvimFHS = pkgs.buildFHSEnv {
    name = "astronvim-fhs";

    targetPkgs = pkgs: with pkgs; [
      neovim

      # C++ Tooling
      gcc
      gdb
      cmake
      ninja

      llvmPackages.clang
      llvmPackages.lldb
      clang-tools   # содержит clangd

      pkg-config
    ];

    # Entry point
    runScript = "nvim";
  };

in {
  # FHS environment available system-wi

  # Your manually installed AstroNvim config
  # Just place files yourself into /etc/astronvim/config/nvim/
  environment.systemPackages = [
    astronvimFHS

    (pkgs.writeShellScriptBin "avn" ''
      exec ${astronvimFHS}/bin/astronvim-fhs "$@"
    '')
];
}
