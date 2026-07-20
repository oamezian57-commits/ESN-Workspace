
{ pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [

	git
	curl	
	wget
	nano
	vim
	htop
	fastfetch
	tree
	pciutils
	usbutils
	dnsutils
	nmap
	traceroute

      ];
}
