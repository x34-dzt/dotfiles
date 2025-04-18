{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    gcc13
    docker
    docker-compose
    vim
    pavucontrol

    home-manager
    wireplumber

    # My stuff
    stdenv.cc.cc.lib

    # KDE applications
    kdePackages.dolphin
  ];
}
