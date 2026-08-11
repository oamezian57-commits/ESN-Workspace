{
  description = "ESN Workspace NixOS configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs = { nixpkgs, ... }: {
    nixosConfigurations = {
      admin-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/admin-laptop/configuration.nix
        ];
      };

      user-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/user-laptop/configuration.nix
        ];
      };

      esn-test-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
         modules = [
           ./hosts/esn-test-laptop/configuration.nix
        ];
      };

      user-vm = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/user-vm/configuration.nix
          ./modules/roles/standard-user.nix
          ./modules/policies/security.nix
        ];
      };


      finance-vm = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/user-vm/configuration.nix
          ./modules/roles/finance.nix
          ./modules/policies/security.nix
        ];
      };

      hr-vm = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/user-vm/configuration.nix
          ./modules/roles/hr.nix
          ./modules/policies/security.nix
        ];
      };

      management-vm = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/user-vm/configuration.nix
          ./modules/roles/management.nix
          ./modules/policies/security.nix
        ];
      };
    };
  };
}
