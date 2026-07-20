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
  };
}
