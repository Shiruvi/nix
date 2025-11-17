{pkgs, ...}:
let
  nvimFHS = pkgs.callPackage ({ buildFHSEnv, writeShellScript, neovim }:
    buildFHSEnv {
      name = "nvim";
      targetPkgs = pkgs: with pkgs; [ 
        neovim
        python3
        nodejs
        cargo
      ];
      runScript = writeShellScript "nvim.sh" ''
        exec ${neovim}/bin/nvim "$@"
      '';
    }) {};
in
{
  home.packages = [ nvimFHS ];
}
