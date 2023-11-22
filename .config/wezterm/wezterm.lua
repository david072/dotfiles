local wezterm = require("wezterm")
local act = wezterm.action;

return {
  -- font = wezterm.font("SauceCodePro Nerd Font Mono"),
  font = wezterm.font("JetBrains Mono"),
  font_size = 10,
  command_palette_font_size = 12,
  color_scheme = "Gruvbox dark, medium (base16)",
  use_fancy_tab_bar = false,
  window_background_opacity = .95,
  default_prog = { "/usr/bin/fish" },
  keys = {
    -- Vim keybindings for pane navigation
    {
      key = "h",
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection("Left"),
    },
    {
      key = "j",
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection("Down"),
    },
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection("Up"),
    },
    {
      key = "l",
      mods = "CTRL|SHIFT",
      action = act.ActivatePaneDirection("Right"),
    },
  }
}
