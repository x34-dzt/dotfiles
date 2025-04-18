{pkgs, ...}: let
  androidSdkPath = "$HOME/Android/Sdk";
in {
  imports = [
    ./hardware-configuration.nix
    ./modules/index.nix
  ];
  system.stateVersion = "24.11";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  security.rtkit.enable = true;

  environment.sessionVariables = {
    ANDROID_HOME = androidSdkPath;
    ANDROID_SDK_ROOT = androidSdkPath;
    NIXOS_OZONE_WL = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  environment.variables.PATH = with builtins;
    concatStringsSep ":" [
      "${androidSdkPath}/platform-tools"
      "${androidSdkPath}/emulator"
      "${androidSdkPath}/tools"
      "$PATH"
    ];

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-hyprland];
  };

  nixpkgs.config.allowUnfree = true;
}
