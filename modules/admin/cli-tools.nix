
{ pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [

	git
        just
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
