{pkgs, ...}: let
  astronvimFHS = pkgs.buildFHSEnv {
    name = "astronvim-fhs";

    targetPkgs = pkgs:
      with pkgs; [
        neovim

        # Core for Mason
        git
        curl
        wget
        unzip
        xz
        gnutar
        gzip
        coreutils
        findutils
        gnused
        gnugrep
        gnumake
        bash

        # Build tools
        gcc
        libcxx
        gccStdenv
        cmake
        ninja
        pkg-config

        # C++ toolchain
        llvmPackages.clang
        llvmPackages.lldb
        clang-tools # clangd included
        cmake-language-server

        # Node only if you want tsserver / eslint / etc
        nodejs
        nodejs.pkgs.npm

        # Rust (required for many Mason tools: stylua, taplo, etc.)
        rustc
        cargo
        python3
      ];

    runScript = "nvim";
  };
in {
  environment.systemPackages = [
    astronvimFHS

    (pkgs.writeShellScriptBin "avn" ''
      exec ${astronvimFHS}/bin/astronvim-fhs "$@"
    '')
  ];
}
