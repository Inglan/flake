{ ... }: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "0xProto Nerd Font:size=12";
      };
      colors = {
        alpha = 0.9;
      };
    };
  };
}
