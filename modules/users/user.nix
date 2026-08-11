{ ... }:

{
  users.users.user = {
    isNormalUser = true;
    description = "ESN User";

    extraGroups = [
      "networkmanager"
      "audio"
      "video"
    ];

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGDzqMR62EiXP5qL6HZ8JdFnucumlxcwL9Z7ZuuuXSGu admin@DAWO-NixOS"
    ];
  };
}
