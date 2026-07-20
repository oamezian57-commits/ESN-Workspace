
/*

----------------------------------------------------------

DAWO-NixOS Enterprise



Module:

Firewall



Version:

0.1.0


Description:

Configures the default firewall policy

for DAWO-NixOS.



Author:

Omar Amezian

----------------------------------------------------------

*/


{ ... }:



{ 

 networking.firewall = {
    enable = true;


    allowedTCPPorts = [

       22 
    ];




    allowedUDPPorts = [ ];

  };

} 

