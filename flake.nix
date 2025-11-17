{
  description = "SysConf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dgop = {
      url = "github:AvengeMedia/dgop";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dms-cli = {
      url = "github:AvengeMedia/danklinux";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.dgop.follows = "dgop";
      inputs.dms-cli.follows = "dms-cli";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    solaar = {
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz"; # For latest stable version
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.3.tar.gz"; # uncomment line for solaar version 1.1.15
      url = "github:Svenum/Solaar-Flake/main"; # Uncomment line for latest unstable version
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs
    , home-manager
    , dgop
    , dms-cli
    , dankMaterialShell
    , niri
    , solaar
    , ...
    } @ inputs: {
      nixosConfigurations = {
        MeoW = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./nixos/configuration.nix
            ./nixos/MeoW.nix
          ];
          specialArgs = { inherit inputs; };
        };
        Nya = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./nixos/configuration.nix
            ./nixos/Nya.nix
            solaar.nixosModules.default
          ];
          specialArgs = { inherit inputs; };
        };
      };
      homeConfigurations.Shiruvi = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [
          ./home/home.nix
          dankMaterialShell.homeModules.dankMaterialShell.default
          dankMaterialShell.homeModules.dankMaterialShell.niri
          inputs.niri.homeModules.niri
        ];
      };
    };
}
