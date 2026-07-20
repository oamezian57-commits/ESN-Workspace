{ config, lib, pkgs, ... }:

let
  cfg = config.esn.apps.comms;
in
{
  options.esn.apps.comms.enable =
    lib.mkEnableOption "ESN communicatiesoftware";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      teams-for-linux
      slack
    ];
  };
}
