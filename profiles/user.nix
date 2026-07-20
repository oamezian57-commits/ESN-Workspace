{
  imports = [
    ./common.nix
    ../modules/users/user.nix

    ../modules/apps/browser.nix
    ../modules/apps/comms.nix
    ../modules/apps/office.nix
    ../modules/apps/pdf.nix
  ];

  esn.apps.browser.enable = true;
  esn.apps.comms.enable = true;
  esn.apps.office.enable = true;
  esn.apps.pdf.enable = true;
}
