{ ... }:
{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            esc = "capslock";
            capslock = "overload(directional, esc)";
  	      };
          directional = {
            h = "left";
            j = "down";
            k = "up";
            l = "right";
            f = "C-tab";
            d = "C-S-tab";
          };
        };
      };
    };
  };
}
