{config, ...}: {
  networking = {
    hostName = "dhruv";
    networkmanager = {
      enable = true;
    };
    firewall = {
      enable = true;
    };
  };
}
