
{ config, pkgs, ... }:


{ 
  imports = [
	../../modules/desktop/kde.nix
	../../modules/network/networking.nix
	../../modules/packages.nix

       ];
		

	networking.hostName = "DAWO-User";


	system.stateVersion = "26.05";

}
