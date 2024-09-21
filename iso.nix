{ config, ... }:
{
  imports = [ ./nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix ];
  
  boot.initrd.kernelModules = [ "wl" ];
  
  boot.kernelModules = [ "kvm-intel" "wl" ];
  boot.extraModulePackages = [ config.boot.kernelPackages.broadcom_sta ];
  nixpkgs.config.allowUnfree = true;
  hardware.enableAllFirmware = true;
  boot.blacklistedKernelModules = [ "b43" "ssb" "brcmfmac" "brcmsmac" "bcma" ];

  networking.wireless = {
    enable = true;
	driver = "wext"; # Make sure this is only wext, when it is nl80211 wifi does not work!
    networks."nixos123" = {
      auth = ''
        key_mgmt=NONE
	  '';
    };
  };
  
}
