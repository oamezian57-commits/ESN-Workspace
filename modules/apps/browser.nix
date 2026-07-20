
{ config, lib,  pkgs, ... }:


let 
	cfg = config.esn.app.browser;

in
{
	options.esn.apps.browser.enable =
	  lib.mkEnableOption "ESN standaardbrowsers: Microsoft Edge en Google Chrome";


	comfig = lib.mkIf cfg.enable {
	  environment.systemPackages = with pkgs; [
	    microsoft-edge
	    google-chrome
	  ];
	};
}
