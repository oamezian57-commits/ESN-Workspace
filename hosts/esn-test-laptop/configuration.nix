
{ config, pkgs, ... }:


{ 
  imports = [
	./hardware-configuration.nix
	../../profiles/user.nix
        ../../modules/roles/standard-user.nix
       ];
		

	networking.hostName = "esn-test-laptop";


	system.stateVersion = "26.05";

 	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
}
