{ config, pkgs, ... } : {
  programs.git = {
    enable = true;
    userName = "Ingo Wolf";
    userEmail = "me@ingowolf.au";
  };
}
