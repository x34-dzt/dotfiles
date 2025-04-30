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
    pipes

    # ───── Terminal Emulators ─────
    zsh-autosuggestions

    # ───── Terminal Emulators ─────
    kitty
    ghostty
    vlc
    tmux

    # ───── Editors & IDEs ─────
    neovim
    code-cursor
    android-studio
    (prismlauncher.override {jdks = [jdk8 jdk17 jdk21];})
    jdk21

    # ───── Dev Tools ─────
    git
    fzf
    ripgrep
    lazygit
    npkill

    # ───── Node & Rust Ecosystem ─────
    nodejs
    nodePackages.pnpm
    bun
    cargo

    # ───── Lsp & Formatter ─────
    rust-analyzer
    alejandra
    rustfmt
    stylua
    lua-language-server
    vtsls

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
    hyprpaper

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
    slack
  ];
}
