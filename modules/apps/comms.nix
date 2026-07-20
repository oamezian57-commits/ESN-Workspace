
{ cofig, lib, pkfs, ... };



let 
	cfg = config.esn.apps.comms;
in
{
	options.esn.apps.comms.enable = 
	   lib.mkEnableOption "ESN communicatiesofware";
	

	config = lib.mkIf cfg.enable {

	  environment.systemPackages = with pkgs; [

	    teams-for-linux
	    slack
	  ];
	};
}
