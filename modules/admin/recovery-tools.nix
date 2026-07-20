
{ pkgs, ... }:


{ 
  environment.systemPackages = with pkgs; [
   
    testdisk
    ddrescue
    rsync
    partclone
   ];
}
