
{ config, pkgs, ... }:


{ 
  imports = [
	./hardware-configuration.nix
	../../profiles/user.nix

       ];
		

	networking.hostName = "ESN-User";


	system.stateVersion = "26.05";

 	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
}
