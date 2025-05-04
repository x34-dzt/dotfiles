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
    stdenv.cc.cc.lib
    glibc
    zlib
    libglvnd

    home-manager
    wireplumber

    kdePackages.dolphin
  ];
}
