{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.zsh.enable = true;
  programs.firefox.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
