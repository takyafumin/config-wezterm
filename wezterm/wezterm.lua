local wezterm = require("wezterm")
local act = wezterm.action

return {
    window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
    use_fancy_tab_bar = false,
    color_scheme = 'dracula',
    font         = wezterm.font("HackGen Console NFJ", {weight="Regular", stretch="Normal", style="Normal"}),
    font_size    = 13.5,
    colors = {
        background = '#000000',
    },
    window_background_opacity = 0.80,
    -- key mappings
    leader = { key = 'k', mods = 'CTRL', timeout_milliseconds = 1000 },
    keys = {
        -- tab new
        { key = "t", mods = "CTRL",        action = act{SpawnTab = "CurrentPaneDomain"}, },
        { key = "-", mods = "LEADER",      action = act{SplitVertical={domain="CurrentPaneDomain"}} }, -- ctrl+'-'で上下に分割
        { key = "\\", mods = "LEADER",     action = act{SplitHorizontal={domain="CurrentPaneDomain"}}, }, -- ctrl+'\'で左右に分割
        { key = 'z', mods = 'LEADER',      action = act.TogglePaneZoomState, }, -- Toggle Pane Zoom
        { key = 'p', mods = 'LEADER',      action = act.PaneSelect, },
        { key = 'P', mods = 'LEADER',      action = act.ActivateKeyTable { name = 'resize_pane', one_shot = false } },
        { key = 'h', mods = 'LEADER',      action = act.ActivatePaneDirection 'Left', },
        { key = 'l', mods = 'LEADER',      action = act.ActivatePaneDirection 'Right', },
        { key = 'k', mods = 'LEADER',      action = act.ActivatePaneDirection 'Up', },
        { key = 'j', mods = 'LEADER',      action = act.ActivatePaneDirection 'Down', },
        { key = 't', mods = 'LEADER',      action = act.SpawnTab 'CurrentPaneDomain', },
        { key = "1", mods = "CTRL",        action = wezterm.action({ ActivateTab = 0 }) },
        { key = "2", mods = "CTRL",        action = wezterm.action({ ActivateTab = 1 }) },
        { key = "3", mods = "CTRL",        action = wezterm.action({ ActivateTab = 2 }) },
        { key = "4", mods = "CTRL",        action = wezterm.action({ ActivateTab = 3 }) },
        { key = "5", mods = "CTRL",        action = wezterm.action({ ActivateTab = 4 }) },
        { key = "6", mods = "CTRL",        action = wezterm.action({ ActivateTab = 5 }) },
        { key = "7", mods = "CTRL",        action = wezterm.action({ ActivateTab = 6 }) },
        { key = "8", mods = "CTRL",        action = wezterm.action({ ActivateTab = 7 }) },
        { key = "9", mods = "CTRL",        action = wezterm.action({ ActivateTab = 8 }) },
    },
    key_tables = {
        resize_pane = {
            { key = 'h',      action = act.AdjustPaneSize {"Left", 1} },
            { key = 'j',      action = act.AdjustPaneSize {"Down", 1} },
            { key = 'k',      action = act.AdjustPaneSize {"Up", 1} },
            { key = 'l',      action = act.AdjustPaneSize {"Right", 1} },
            { key = 'Escape', action = 'PopKeyTable' },
        },
    },
}
