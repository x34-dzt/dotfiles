{pkgs, ...}: {
  home.packages = with pkgs; [
    # ───── Essential CLI tools ─────
    wget
    unzip
    tree
    htop
    neofetch
    fastfetch
    cmatrix
    btop
    wl-clipboard
    starship
    brightnessctl

    # ───── Terminal Emulators ─────
    kitty
    alacritty
    ghostty
    tmux

    # ───── Editors & IDEs ─────
    neovim
    zed-editor
    code-cursor
    android-studio

    # ───── Dev Tools ─────
    git
    fzf
    ripgrep
    lazygit

    # ───── Node & Rust Ecosystem ─────
    nodejs
    nodePackages.pnpm
    bun
    cargo

    # ───── Lsp & Formatter ─────
    rust-analyzer
    alejandra
    rustfmt

    # ───── Fonts & Icons ─────
    font-awesome_5
    bibata-cursors

    # ───── File Managers ─────
    pcmanfm
    nautilus

    # ───── Hyprland Ecosystem ─────
    waybar
    eww
    swww
    rofi-wayland
    hyprshot
    hyprlock
    swaynotificationcenter
    libnotify
    pavucontrol
    wev

    # ───── Media ─────
    mpv
    spotify
    cava
    obs-studio

    # ───── Fun / Aesthetic ─────
    unimatrix
    neo-cowsay

    # ───── Browsers & Apps ─────
    brave
    google-chrome
    discord
  ];
}
