{pkgs, ...}: {
  imports = [
    ./modules/index.nix
    ./programs/index.nix
  ];

  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}/lib/openjdk";
  };
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
