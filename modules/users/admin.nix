{ ... }:

{
  users.users.admin = {
    isNormalUser = true;
    description = "ESN Administrator";
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
    ];


    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGDzqMR62EIXP5qL6HZ8JdFnucum1xcwL9Z7ZuuuXSGu admin@DAWO-NixOS"
    ];
  };
}
