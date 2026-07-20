
{ pkgs, ... }:


{ 
   environment.systemPackages = with pkgs; [
	
	openssl
	gnupg
	age
	clamav
	lynis
      ];
}
