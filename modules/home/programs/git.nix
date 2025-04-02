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
      pull.rebase = false;
      user = {
        signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDFlaUR/043CCjtUXWjsAjjJE/cUeeJKiDtDr22oxcgT";
      };
    };
  };
}
