{
  description = "My machines";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    tauriDev = {
     src =  "./dev/tauri.nix"; 
    #  inputs.nixpkgs.follows = "nixpkgs";
   };
    
    # nix flake lock --update-input home-manager
    # home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, nixpkgs, tauriDev,  ... }: {

    # Use nixpkgs-fmt for 'nix fmt'
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;

    # NixOS hosts. Apply with:
    # nixos-rebuild switch --flake '.#nix-lap'                   # Inside this repository, or
    # nixos-rebuild switch --flake '/path/to/this/repo#nix-lap'  # From anywhere else

    nixosConfigurations = {

      # Currently only one host. Add others here when needed.
      nix-lap = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
      };
    };

    tauriDevOutput = tauriDev;

  };
}
