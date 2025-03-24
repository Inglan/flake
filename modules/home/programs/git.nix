{ config, lib, pkgs, ... } : {
  programs.git = {
    enable = true;
    userName = "Ingo Wolf";
    userEmail = "me@ingowolf.au";
    extraConfig = {
      gpg = {
        format = "ssh";
      };
      "gpg \"ssh\"" = {
        program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      };
      commit = {
        gpgsign = true;
      };

      user = {
        signingKey = "...";
      };
    };
  };
}
