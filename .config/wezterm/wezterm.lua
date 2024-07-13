local wezterm = require("wezterm")
local act = wezterm.action;

function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local function spread(template)
  local result = {}
  for key, value in pairs(template) do
    result[key] = value
  end

  return function(table)
    for key, value in pairs(table) do
      result[key] = value
    end
    return result
  end
end

local kernel = os.capture("uname -s")

local linux_config = {
  -- font = wezterm.font("SauceCodePro Nerd Font Mono"),
  font = wezterm.font("JetBrains Mono"),
  font_size = 10,
  command_palette_font_size = 12,
  -- color_scheme = "Gruvbox dark, medium (base16)",
  color_scheme = "tokyonight_night",
  -- color_scheme = "rose-pine",
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
    {
      key = "q",
      mods = "CMD",
      action = act.CloseCurrentPane({ confirm = true }),
    }
  }
}

if kernel == "Darwin" then
  return spread(linux_config) {
    default_prog = { "/opt/homebrew/bin/fish" },
    font_size = 14,
    command_palette_font_size = 14
  }
end

return linux_config
