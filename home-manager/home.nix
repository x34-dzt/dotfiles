{pkgs, ...}: {
  imports = [
    ./programs/modules
    ./programs/shell
  ];

  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}/lib/openjdk";
  };
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
