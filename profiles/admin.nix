
 { ... }:






{ 
  imports = [

	./common.nix

	 
     ../modules/admin/cli-tools.nix
     ../modules/admin/networking-tools.nix
     ../modules/admin/hardware-tools.nix
     ../modules/admin/security-tools.nix
     ../modules/admin/recovery-tools.nix


     ../modules/users/admin.nix
   ];

}

