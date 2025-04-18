{...}: let
  alias = ''
    alias icat='kitty icat'
    alias wpset='swww img'
    alias code='tmux -u'
    alias cls='clear'
    alias bt='bluetoothctl'
    alias gp='git push'
    alias gc='git commit'
    alias gl='git pull'
    alias gm='git merge'
  '';
in {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
    };
  };

  programs.bash = {
    enable = true;
    initExtra = alias;
  };
}
