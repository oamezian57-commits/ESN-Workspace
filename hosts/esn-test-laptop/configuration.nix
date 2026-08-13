
{ config, pkgs, ... }:


{ 
  imports = [
	./hardware-configuration.nix
	../../profiles/user.nix
        ../../modules/roles/standard-user.nix
       ];
		

	networking.hostName = "esn-test-laptop";
          services.comin = {
              enable = true;
              remotes = [
                {
                  name = "origin";
                  url = "https://github.com/oamezian57-commits/ESN-Workspace.git";
                  branches.main = {
                      name = "main";
                      operation = "boot";
                    };
                  }
                ];
              };
	      system.stateVersion = "26.05";

              boot.loader.systemd-boot.enable = true;
	      boot.loader.efi.canTouchEfiVariables = true;
            }
