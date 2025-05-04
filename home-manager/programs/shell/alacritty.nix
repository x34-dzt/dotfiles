{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    settings = {
      font = {
        normal = {
          family = "0xProto Nerd Font";
          style = "Regular";
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
        opacity = 0.83;
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
          background = "#1d261a"; # Preserved custom background
          foreground = "#ebdbb2"; # Gruvbox light foreground
        };
        normal = {
          black = "#282828"; # Gruvbox dark0
          red = "#cc241d"; # Gruvbox red
          green = "#98971a"; # Gruvbox green
          yellow = "#d79921"; # Gruvbox yellow
          blue = "#458588"; # Gruvbox blue
          magenta = "#b16286"; # Gruvbox purple
          cyan = "#689d6a"; # Gruvbox aqua
          white = "#a89984"; # Gruvbox light gray
        };
        bright = {
          black = "#928374"; # Gruvbox dark gray
          red = "#fb4934"; # Gruvbox bright red
          green = "#b8bb26"; # Gruvbox bright green
          yellow = "#fabd2f"; # Gruvbox bright yellow
          blue = "#83a598"; # Gruvbox bright blue
          magenta = "#d3869b"; # Gruvbox bright purple
          cyan = "#8ec07c"; # Gruvbox bright aqua
          white = "#ebdbb2"; # Gruvbox bright white (matches foreground)
        };
        draw_bold_text_with_bright_colors = true;
      };
      general.live_config_reload = true;
    };
  };
}
