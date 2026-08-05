{ ... }:

{
  networking.firewall = {
    enable = true;
    allowPing = true;
  };

  services.openssh = {
    enable = true;

    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };

  security.sudo.wheelNeedsPassword = true;

  nix.settings = {
    auto-optimise-store = true;
    trusted-users = [
      "root"
      "@wheel"
    ];
  };

  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    flake = "/home/admin/Projects/ESN-Workspace";
    flags = [
      "--update-input"
      "nixpkgs"
    ];
  };
}
