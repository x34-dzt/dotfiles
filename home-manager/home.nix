{...}: {
  imports = [
    ./modules/index.nix
  ];

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
