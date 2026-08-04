{ pkgs, ... }:

{
  imports = [
    ../applications/base.nix
    ../apps/browser.nix
    ../apps/office.nix
    ../apps/comms.nix
    ../apps/pdf.nix
  ];

  environment.systemPackages = with pkgs; [
    file
    unzip
    zip
  ];

  programs.bash.completion.enable = true;
}
