
{ ... }:


{ 

   imports = [
      
      ../modules/desktop/kde.nix
      ../modules/network/networking.nix 
      ../modules/services/default.nix
      ../modules/packages.nix
     
     ];



	nixpkgs.config.allowUnfree = true;
}
