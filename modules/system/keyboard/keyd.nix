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
            capslock = "esc";
  	  };
        };
      };
    };
  };
}

