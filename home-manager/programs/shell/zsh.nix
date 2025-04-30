{
  config,
  lib,
  pkgs,
  ...
}: let
  alias = {
    icat = "kitty icat";
    wpset = "swww img";
    tmux = "tmux -u";
    cls = "clear";
    bt = "bluetoothctl";
    gp = "git push";
    gc = "git commit";
    gl = "git pull";
    gm = "git merge";
    ga = "git add";
    nv = "nvim .";
    home-switch = "home-manager switch";
    nix-switch = "sudo nixos-rebuild switch";
    btop = "btop --utf-force";
  };
in {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = alias;

    history.size = 10000;
    initExtra = ''
      eval "$(starship init zsh)"
      export "ANDROID_HOME=/home/username/Android/Sdk"
    '';
  };
}
