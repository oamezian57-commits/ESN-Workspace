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
  };
}
