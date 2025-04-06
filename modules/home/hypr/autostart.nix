{...}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "systemctl --user start hyprpolkitagent"
      "swww-deamon"
      "1password --silent"
    ];
  };
}
