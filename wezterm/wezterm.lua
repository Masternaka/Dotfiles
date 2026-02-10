-- WezTerm configuration - Gruvbox Dark theme
local wezterm = require "wezterm"
local act = wezterm.action
local config = wezterm.config_builder()

-- Gruvbox Dark color palette
local colors = {
    bg = "#282828",
    fg = "#ebdbb2",
    comment = "#928374",
    red = "#fb4934",
    green = "#b8bb26",
    yellow = "#fabd2f",
    blue = "#83a598",
    magenta = "#d3869b",
    cyan = "#8ec07c",
    selection = "#3c3836",
    caret = "#fe8019",
    invisibles = "#3c3836"
}

-- Keybindings
config.keys = {}
-- Pane management
for _, v in ipairs({
    { "Enter",      act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { "w",          act.CloseCurrentPane { confirm = true } },
    { "LeftArrow",  act.ActivatePaneDirection 'Left' },
    { "RightArrow", act.ActivatePaneDirection 'Right' },
    { "UpArrow",    act.ActivatePaneDirection 'Up' },
    { "DownArrow",  act.ActivatePaneDirection 'Down' },
    { "t",          act.SpawnTab 'CurrentPaneDomain' },
    { "q",          act.CloseCurrentTab { confirm = true } },
    { "c",          act.CopyTo 'ClipboardAndPrimarySelection' },
    { "v",          act.PasteFrom 'Clipboard' },
    { "=",          act.IncreaseFontSize },
    { "-",          act.DecreaseFontSize },
    { "0",          act.ResetFontSize }
}) do table.insert(config.keys, { mods = "ALT", key = v[1], action = v[2] }) end

-- ALT+SHIFT combinations
table.insert(config.keys, { mods = "ALT|SHIFT", key = "Enter", action = act.SplitVertical { domain = 'CurrentPaneDomain' } })

-- Tab navigation (ALT+1-8)
for i = 0, 7 do table.insert(config.keys, { mods = "ALT", key = tostring(i + 1), action = act.ActivateTab(i) }) end

-- Tab movement and last tab (CTRL+ALT)
for _, v in ipairs({
    { "UpArrow",   act.ActivateLastTab }, { "DownArrow", act.ActivateLastTab },
    { "LeftArrow", act.MoveTabRelative(-1) }, { "RightArrow", act.MoveTabRelative(1) }
}) do table.insert(config.keys, { mods = "CTRL|ALT", key = v[1], action = v[2] }) end
for i = 0, 7 do table.insert(config.keys, { mods = "CTRL|ALT", key = tostring(i + 1), action = act.MoveTab(i) }) end

-- Font configuration
config.font = wezterm.font_with_fallback({
    { family = 'Lilex Nerd Font Mono',      weight = 'Regular' },
    { family = 'SauceCodePro Nerd Font Mono', weight = 'Regular' },
    { family = 'FiraCode Nerd Font Mono',   weight = 'Regular' },
    { family = 'Symbols Nerd Font Mono',    weight = 'Regular' }
})
config.font_size = 16
config.line_height = 1.1
config.window_frame = {
    font = wezterm.font { family = 'Lilex Nerd Font Mono', weight = 'Regular', style = 'Italic' },
    font_size = 12.0,
    active_titlebar_bg = colors.bg
}

-- Performance settings
config.max_fps = 120
config.animation_fps = 1
config.window_background_opacity = 0.98
config.enable_scroll_bar = false
config.use_fancy_tab_bar = true
config.term = "xterm-256color"
config.warn_about_missing_glyphs = false
-- Auto-detect Wayland based on environment
local is_wayland = os.getenv("WAYLAND_DISPLAY") ~= nil or
    os.getenv("XDG_SESSION_TYPE") == "wayland"
config.enable_wayland = is_wayland
config.front_end = "OpenGL"
config.webgpu_power_preference = "HighPerformance"
config.prefer_egl = true
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.hide_tab_bar_if_only_one_tab = true

-- Color scheme (Gruvbox Dark)
config.colors = {
    foreground = colors.fg,
    background = colors.bg,
    cursor_bg = colors.caret,
    cursor_fg = colors.bg,
    cursor_border = colors.caret,
    selection_fg = colors.fg,
    selection_bg = colors.selection,
    scrollbar_thumb = colors.invisibles,
    split = colors.invisibles,
    ansi = {
        colors.invisibles, -- black
        colors.red,
        colors.green,
        colors.yellow,
        colors.blue,
        colors.magenta,
        colors.cyan,
        colors.fg,         -- white
    },
    brights = {
        "#504945", -- bright black
        "#fb4934", -- bright red
        "#b8bb26", -- bright green
        "#fabd2f", -- bright yellow
        "#83a598", -- bright blue
        "#d3869b", -- bright magenta
        "#8ec07c", -- bright cyan
        "#fbf1c7", -- bright white
    },
    tab_bar = {
        background = colors.bg,
        inactive_tab_edge = colors.invisibles,
        active_tab = { bg_color = colors.blue, fg_color = colors.bg, intensity = "Bold" },
        inactive_tab = { bg_color = colors.bg, fg_color = colors.comment },
        inactive_tab_hover = { bg_color = "#3c3836", fg_color = colors.caret },
        new_tab = { bg_color = colors.bg, fg_color = colors.caret, intensity = "Bold" },
        new_tab_hover = { bg_color = "#3c3836", fg_color = colors.red }
    }
}

-- Mouse bindings
config.mouse_bindings = {
    { event = { Down = { streak = 1, button = "Right" } }, mods = "NONE", action = act.CopyTo("Clipboard") },
    { event = { Down = { streak = 1, button = "Middle" } }, mods = "NONE", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { event = { Down = { streak = 1, button = "Middle" } }, mods = "SHIFT", action = act.CloseCurrentPane { confirm = false } }
}

return config
