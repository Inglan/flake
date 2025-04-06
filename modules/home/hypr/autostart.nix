{...}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "systemctl --user start hyprpolkitagent"
      "ags run -d ~/.config/ags"
      "swww-daemon"
      "1password --silent"
      "zen"
    ];
  };
}
