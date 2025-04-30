{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    settings = {
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Medium";
        };
        size = 12;
      };
      window = {
        decorations = "none";
        padding = {
          x = 4;
          y = 4;
        };
        dynamic_title = true;
        opacity = 0.65;
      };
      cursor = {
        style = "Underline";
        unfocused_hollow = false;
      };
      mouse = {
        hide_when_typing = true;
      };
      selection.save_to_clipboard = true;
      colors = {
        primary = {
          background = "#000000"; # Dark blue-purple background
          foreground = "#D0D0F0"; # Light blue-purple text
        };
        normal = {
          black = "#171631"; # Darker blue-purple
          red = "#FF5C8F"; # Pink-red
          green = "#88AAFF"; # Light blue
          yellow = "#C78FFF"; # Light purple
          blue = "#6D9CFF"; # Medium blue
          magenta = "#CF78E6"; # Medium magenta
          cyan = "#78D2FF"; # Light cyan
          white = "#AABAE8"; # Light blue-white
        };
        bright = {
          black = "#515173"; # Medium blue-gray
          red = "#FF8FB3"; # Bright pink
          green = "#AAC2FF"; # Brighter light blue
          yellow = "#DCB1FF"; # Bright light purple
          blue = "#90B8FF"; # Bright medium blue
          magenta = "#E5A0F0"; # Bright magenta
          cyan = "#A0E2FF"; # Bright cyan
          white = "#D0D0F0"; # Bright blue-white
        };
        draw_bold_text_with_bright_colors = true;
      };
      general.live_config_reload = true;
    };
  };
}
