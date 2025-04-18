{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;

    packages = with pkgs; [
      corefonts
      nerd-fonts.jetbrains-mono
      nerd-fonts.iosevka
      nerd-fonts.fira-code
      nerd-fonts.hack
      nerd-fonts._0xproto
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      font-awesome
    ];
  };
}
