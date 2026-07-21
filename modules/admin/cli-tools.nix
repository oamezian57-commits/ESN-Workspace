
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
	dnsutils
	nmap
	traceroute

      ];
}
