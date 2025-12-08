{
  description = "SysConf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    solaar = {
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz"; # For latest stable version
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.3.tar.gz"; # uncomment line for solaar version 1.1.15
      url = "github:Svenum/Solaar-Flake/main"; # Uncomment line for latest unstable version
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      # url = "github:nix-community/nixvim/nixos-25.05";

#      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      solaar,
      nixvim,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        MeoW = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./nixos/configuration.nix
            ./nixos/MeoW.nix
	    nixvim.nixosModules.nixvim
          ];
          specialArgs = { inherit inputs; };
        };
        Nya = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./nixos/configuration.nix
            ./nixos/Nya.nix
            solaar.nixosModules.default
	    nixvim.nixosModules.nixvim
          ];
          specialArgs = { inherit inputs; };
        };
      };
      homeConfigurations.Shiruvi = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [
          ./home/home.nix
          inputs.niri.homeModules.niri
        ];
      };
    };
}
