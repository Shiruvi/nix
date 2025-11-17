{pkgs, ...}:
let
  nvimFHS = pkgs.callPackage ({ buildFHSEnv, writeShellScript, neovim }:
    buildFHSEnv {
      name = "nvim";
      targetPkgs = pkgs: [ neovim ];
      runScript = writeShellScript "nvim.sh" ''
        exec ${neovim}/bin/nvim "$@"
      '';
    }) {};
in
{
  home.packages = [ nvimFHS ];
}
