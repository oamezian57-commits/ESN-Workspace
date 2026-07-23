
 { ... }:






{ 
  imports = [

	./common.nix
     ../modules/services/ssh.nix
     ../modules/apps/browser.nix
     ../modules/admin/cli-tools.nix
     ../modules/admin/networking-tools.nix
     ../modules/admin/hardware-tools.nix
     ../modules/admin/security-tools.nix
     ../modules/admin/recovery-tools.nix


     ../modules/users/admin.nix
   ];

	esn.apps.browser.enable = true;

}

