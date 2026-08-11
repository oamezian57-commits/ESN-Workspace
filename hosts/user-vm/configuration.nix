{ modulesPath, lib, pkgs,  ... }:

{
  imports = [
    "${modulesPath}/virtualisation/qemu-vm.nix"
    ../../profiles/user.nix

  ];

  networking.hostName = "ESN-User-VM";

  virtualisation = {
    memorySize = 8192;
    cores = 4;
    diskSize = 20000;
    graphics = true;


    forwardPorts = [
      {
       from = "host";
       host.port = 2222;
       guest.port = 22;
        }
     ];   

    qemu.options = [
      "-audiodev pipewire,id=audio0"
      "-device intel-hda"
      "-device hda-duplex,audiodev=audio0"
      


      "-chardev qemu-vdagent,id=vdagent,name=vdagent,clipboard=on,mouse=off"
      "-device virtio-serial-pci"
      "-device virtserialport,chardev=vdagent,name=com.redhat.spice.0"
    ];
  };

 users.users.user.initialPassword = "esn123";
  
 users.users.user.openssh.authorizedKeys.keys = [
      "ssh-ed25519  AAAAC3NzaC1lZDI1NTE5AAAAIGDzqMR62EiXP5qL6HZ8JdFnucumlxcwL9Z7ZuuuXSGu"
];

  
  users.users.admin.openssh.authorizedKeys.keys = [
      "ssh-ed25519  AAAAC3NzaC1lZDI1NTE5AAAAIGDzqMR62EiXP5qL6HZ8JdFnucumlxcwL9Z7ZuuuXSGu"
];

  environment.etc."esn-deploy-test".text = "Remote deployment vanaf ESN-Admin werkt!";
  
  security.sudo.wheelNeedsPassword = lib.mkForce false;
   
  environment.systemPackages = with pkgs; [
  htop
];

  boot.loader.grub.enable = lib.mkForce false;


  system.stateVersion = "26.05";
}
