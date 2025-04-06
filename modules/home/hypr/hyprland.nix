{...}: {
  imports = [
    ./keybinds.nix
    ./autostart.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$terminal" = "foot";
      "$browser" = "firefox";
      "$filemanager" = "dolphin";
      "$menu" = "rofi -show drun";
      source = [
        "~/.config/hypr/monitors.conf"
        "~/.config/hypr/staging.conf"
      ];
      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"
      ];
      general = {
        gaps_in = 10;
        gaps_out = 10;
      };
    };
  };
}
