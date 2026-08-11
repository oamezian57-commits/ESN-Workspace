{ config, lib, pkgs, ... }:

let
  cfg = config.esn.apps.tools;
in
{
  options.esn.apps.tools.enable = lib.mkEnableOption "ESN tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      htop
    ];
  };
}
