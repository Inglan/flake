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
            f = "C-pagedown";
            d = "C-pageup";
            p = "nextsong";
            o = "playpause";
            i = "previoussong";
            w = "C-w";
          };
        };
      };
    };
  };
}
