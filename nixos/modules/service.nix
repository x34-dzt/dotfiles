{
  config,
  lib,
  pkgs,
  ...
}: {
  services = {
    udev.packages = [
      pkgs.android-udev-rules
    ];
    xserver = {
      enable = true;
      xkb.layout = "us";
    };
    displayManager = {
      sddm.enable = true;
      defaultSession = "hyprland";
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      audio.enable = true;
      wireplumber.enable = true;
    };
    pulseaudio = {enable = false;};
    openssh = {enable = true;};
    libinput = {
      enable = true;
      mouse = {accelProfile = "flat";};
      touchpad = {accelProfile = "flat";};
    };
  };

  environment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
    };

    variables = {EDITOR = "nvim";};
  };

  virtualisation.docker = {
    enable = true;
    autoPrune.enable = true;
  };
}
