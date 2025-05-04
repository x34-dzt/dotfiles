{
  pkgs,
  config,
  ...
}: {
  hardware.graphics = {
    enable = true;
  };
  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    powerManagement = {
      enable = false;
      finegrained = false;
    };

    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.production;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
