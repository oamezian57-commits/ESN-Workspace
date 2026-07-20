{ config, lib, pkgs, ... }:

let
  cfg = config.esn.apps.office;
in
{
  options.esn.apps.office.enable =
    lib.mkEnableOption "ESN kantoorsoftware";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      onlyoffice-desktopeditors
    ];
  };
}
