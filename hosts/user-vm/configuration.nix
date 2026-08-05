{ modulesPath, ... }:

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

  system.stateVersion = "26.05";
}
