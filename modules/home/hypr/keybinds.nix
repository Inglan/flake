{...}: {
  wayland.windowManager.hyprland.settings = {
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
}
