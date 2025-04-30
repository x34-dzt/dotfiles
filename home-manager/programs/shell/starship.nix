{pkgs, ...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;

      "$schema" = "https://starship.rs/config-schema.json";

      bun = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      c = {
        format = "\\[[$symbol($version(-$name))]($style)\\]";
      };

      cmake = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      cmd_duration = {
        format = "\\[[$duration]($style)\\]";
      };

      conda = {
        format = "\\[[$symbol$environment]($style)\\]";
      };

      deno = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      docker_context = {
        format = "\\[[$symbol$context]($style)\\]";
      };

      gcloud = {
        format = "\\[[$symbol$account(@$domain)(\($region\))]($style)\\]";
      };

      git_branch = {
        format = "\\[[$symbol$branch]($style)\\]";
      };

      git_status = {
        format = "(\\[[$all_status$ahead_behind\\]]($style))";
      };

      golang = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      lua = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      nix_shell = {
        format = "\\[[$symbol$state( \($name\))]($style)\\]";
      };

      nodejs = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      ocaml = {
        format = "\\[[$symbol($version)(\($switch_indicator$switch_name\))]($style)\\]";
      };

      os = {
        format = "\\[[$symbol]($style)\\]";
      };

      package = {
        format = "\\[[$symbol$version]($style)\\]";
      };

      perl = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      php = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      purescript = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      python = {
        format = "\\[[$symbol\${pyenv_prefix}(\${version})(\(\$virtualenv\))]($style)\\]";
      };

      red = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      rust = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      sudo = {
        format = "\\[[$symbol]($style)\\]";
      };

      username = {
        format = "\\[[$user]($style)\\]";
      };

      vagrant = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      zig = {
        format = "\\[[$symbol($version)]($style)\\]";
      };

      solidity = {
        format = "\\[[$symbol($version)]($style)\\]";
      };
    };
  };
}
