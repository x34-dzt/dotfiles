{config, ...}: {
  networking = {
    hostName = "username";
    wireless = {enable = false;};
    networkmanager = {enable = true;};
    firewall = {
      enable = false;
      # allowedUDPPorts = [ ... ];
      # allowedTCPPorts = [ ... ];
    };
  };

  # boot.extraModulePackages = with config.boot.kernelPackages; [
  #   rtl8821au  # Alternative Realtek driver
  # ];
}
