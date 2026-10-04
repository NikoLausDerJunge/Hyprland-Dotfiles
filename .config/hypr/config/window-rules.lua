local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland Run
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Rofi Blur
hl.layer_rule({
    name = "rofi-blur",
    match = {
        namespace = "^rofi$",
    },

    blur = true,
    ignore_alpha = 0.0,
})

-- Dunst Notification Blur
hl.layer_rule({
    name = "dunst-blur",
    match = {
        namespace = "^notifications$",
    },

    blur = true,
    ignore_alpha = 0.0,
})

-- VSCode Blur
hl.window_rule({
    name = "vscode-transparent",
    match = {
        class = "^code-oss$",
    },

    opacity = 0.9,
})

-- Firefox Blur
hl.window_rule({
    name = "firefox-transparent",
    match = {
        class = "^firefox$",
    },

    opacity = 0.95,
})

-- Discord Blur
hl.window_rule({
    name = "discord-transparent",
    match = {
        class = "^discord$",
    },

    opacity = 0.97,
})

-- Spotify Blur
hl.window_rule({
    name = "spotify-transparent",
    match = {
        class = "^Spotify$",
    },

    opacity = 0.95,
})

-- Explorer Blur
hl.window_rule({
    name = "nautilus-transparent",
    match = {
        class = "^org.gnome.Nautilus$",
    },

    opacity = 0.86,
})

-- Telegram Blur
hl.window_rule({
    name = "telegram-transparent",
    match = {
        class = "^org.telegram.desktop$",
    },

    opacity = 0.88,
})