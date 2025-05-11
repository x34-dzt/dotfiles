{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "myusername";
    userEmail = "myemail@gmail.com";
  };
}
