
{ config, lib , pkgs , ... };


let 
  cfg = config.esn.apps.pdf;
in
{
   option.esn.apps.pdf.enable =
	lib.mkEnableOption "ESN PDF-lezer";

   config = lib.mkIf cfg.enable {
	environment.systemPackages = with pkgs; [
	   kdePackages.okular
	];
      };
}
