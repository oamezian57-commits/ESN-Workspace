{ ... }:

{
  users.users.admin = {
    isNormalUser = true;
    description = "DAWO Administrator";

    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
    ];
  };
}
