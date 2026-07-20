
{ config, lib, pkgs, ... };

let 
	cfg = config.esn.profiles.standaard-users;
in
{
	options.esn.profiles.standard-user.enable = 
	  lib.mkEnableOption "ESN standaardgebruikersprofiel";



	config = lib.mkIf cfg.enable {
	 esn.apps.browser.enable = true;
	 esn.apps.office.enable = true;
	 esn.apps.pdf.enable = true;
	 esn.apps.comms.enable = true;

	};
}
