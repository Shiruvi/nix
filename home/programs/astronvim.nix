{pkgs, ...}:
let
  nvimFHS = pkgs.callPackage ({ buildFHSEnv, writeShellScript, neovim }:
    buildFHSEnv {
      name = "v";
      targetPkgs = pkgs: with pkgs; [ 
        neovim
        python3
        nodejs
        cargo
      ];
      runScript = writeShellScript "n.sh" ''
        exec ${neovim}/bin/nvim "$@"
      '';
    }) {};
in
{
  home.packages = [ nvimFHS ];
}
