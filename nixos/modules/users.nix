{pkgs, ...}: {
  users.users.dhruv = {
    isNormalUser = true;
    description = "I just ship man fuck everything";
    extraGroups = ["networkmanager" "wheel" "input" "docker" "audio"];
    shell = pkgs.zsh;
  };
}
