{ config, lib, pkgs, ... }:

let
  cfg = config.esn.apps.browser;
in
{
  options.esn.apps.browser.enable =
    lib.mkEnableOption "ESN standaardbrowsers: Microsoft Edge en Google Chrome";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      microsoft-edge
      google-chrome
    ];
  };
}
