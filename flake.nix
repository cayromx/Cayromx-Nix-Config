{
  description = "My flake";

  inputs = {
    nixpkgs.url          = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    cachy-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plasma-manager = { 
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
     };
    catppuccin.url = "github:catppuccin/nix/release-25.11";
  };

  outputs = { self, nixpkgs, home-manager, plasma-manager, catppuccin, nixpkgs-unstable, cachy-kernel, ... }@inputs:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.przemyslaw = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = { inherit inputs; };
    
        modules = [
          ./configuration.nix
          ({ config, pkgs, inputs, ... }: {
          nixpkgs.overlays = [
            inputs.cachy-kernel.overlays.pinned
           ];
          nix.settings.substituters = [
            "https://attic.xuyh0120.win/lantian"
            "https://cache.garnix.io"
           ];
          nix.settings.trusted-public-keys = [
            "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
            "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
           ];
          })
          home-manager.nixosModules.home-manager 
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "hm-backup"; 
            home-manager.sharedModules = [
              plasma-manager.homeManagerModules.plasma-manager
            ];
          home-manager.users = {
            przemyslaw = {
              imports = [
                ./home.nix
                catppuccin.homeModules.catppuccin
               ];
              };
          };
          }
          {
            nixpkgs.overlays = [
              (final: prev: {
                unstable = import inputs.nixpkgs-unstable {
                  inherit system;
                  config = prev.config;
                };
              })
            ];
          }

        ];
      };
    };
  }  
