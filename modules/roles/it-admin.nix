{ pkgs, ... }:

{
  imports = [
    ../applications/base.nix
    ../admin/cli-tools.nix
    ../admin/hardware-tools.nix
    ../admin/networking-tools.nix
    ../admin/recovery-tools.nix
    ../admin/security-tools.nix
  ];

  environment.systemPackages = with pkgs; [
    git
    vim
    tmux
  ];
}
