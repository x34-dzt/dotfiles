{
  config,
  lib,
  pkgs,
  ...
}: {
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    audio.enable = true;
    wireplumber.enable = true;
  };

  services = {
    xserver = {
      enable = true;
      xkb.layout = "us";
    };
    displayManager = {
      sddm.enable = true;
      defaultSession = "hyprland";
    };
  };

  virtualisation.docker = {
    enable = true;
    autoPrune.enable = true;
  };

  services.openssh.enable = true;
}
