{ pkgs, ... }:


{ 
   environment.systemPackages = with pkgs; [ 
	
	tcpdump
	iperf3
	whois
	mtr
	netcat-openbsd
	ethtool
	iw
       ];
}
