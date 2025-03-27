{...}: {
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
      exec-once = [
        "systemctl --user start hyprpolkitagent"
      ];
      bind =
        [
          "$mod, Return, exec, foot"
          "$mod, B, exec, firefox"
          ", Print, exec, grimblast copy area"
          "$mod, Super_L, exec, $menu"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
          builtins.concatLists (builtins.genList (i:
              let ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
        bindm = [
          "$mod, mouse:272, movewindow"
          "$mod, mouse:273, resizewindow"
        ];
    };
  };
}
