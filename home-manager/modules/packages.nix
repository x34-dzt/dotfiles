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
    fd
    zsh-autosuggestions
    cbonsai

    # ───── Terminal Emulators ─────
    tmux

    # ───── Editors & IDEs ─────
    neovim
    code-cursor
    android-studio
    (prismlauncher.override {jdks = [jdk21];})
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

    # ───── Hyprland Ecosystem ─────
    waybar
    rofi-wayland
    hyprshot
    hyprlock
    swaynotificationcenter
    libnotify
    pavucontrol
    hyprpaper
    ghostty
    kitty

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
    discord
  ];
}
