{pkgs, ...}: {
  users.users.username = {
    isNormalUser = true;
    description = "I just ship man fuck everything";
    extraGroups = ["networkmanager" "adbusers" "wheel" "input" "docker" "audio"];
    shell = pkgs.zsh;
  };
}
