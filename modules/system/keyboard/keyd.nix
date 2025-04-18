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
            p = "XF86AudioNext";
            o = "XF86AudioPlay";
            i = "XF86AudioPrev";
          };
        };
      };
    };
  };
}
