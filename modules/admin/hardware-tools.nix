
{ pkgs, ... }:


{ 
  environment.systemPackages = with pkgs; [
	smartmontools
	nvme-cli
	dmidecode
	pciutils
	usbutils
	lshw
	hwinfo
	parted
	gparted
      ];
}
