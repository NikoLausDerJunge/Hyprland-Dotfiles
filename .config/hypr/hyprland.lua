local terminal    = "kitty"
local browser = "firefox"
local fileManager = "nautilus"
local menu = "rofi -show drun -show-icons"

------------------
---- MONITORS ----
------------------

hl.monitor({
    output = "DP-1",
    mode = "1920x1080@240",
    position = auto,
    scale = 1
})

hl.monitor({
    output = "DP-3",
    mode = "1920x1080@165", 
    position = "0x0", 
    scale = 1
})

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function () 
  hl.exec_cmd("swaybg -i ~/Downloads/alps-autumn-alps-mountains-forest-wilderness-landscape-1920x1080-1265.jpg -m fill") -- Background
  hl.exec_cmd("waybar") -- Bar on Top
  hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Clipboard
  hl.exec_cmd("cliphist wipe") -- Clear clipboard history
end)

-------------------------------
---- WORKSPACE CONFIGURATION --
-------------------------------


-- DP-1
for i = 1, 4 do
    hl.workspace_rule({
        workspace = i,
        monitor = "DP-1",
        persistent = true,
    })
end

-- DP-3
for i = 5, 8 do
    hl.workspace_rule({
        workspace = i,
        monitor = "DP-3",
        persistent = true,
    })
end

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,
        border_size = 2,

        col = {
            active_border   = "rgba(f5f5f5ff)",
            inactive_border = "rgba(9e9e9e99)",
        },

        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding       = 15,
        rounding_power = 4,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = false,
        },

        blur = {
            enabled   = true,
            size      = 8,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.22, 1}, {0.36, 1} } })
hl.curve("smooth",         { type = "bezier", points = { {0.25, 0.1}, {0.25, 1} } })
hl.curve("quick",          { type = "bezier", points = { {0.16, 1}, {0.3, 1} } })
hl.curve("linear",         { type = "bezier", points = { {0, 0}, {1, 1} } })

-- Spring
hl.curve("smoothSpring", {
    type = "spring", mass = 1, stiffness = 190, dampening = 25
})
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- Animations
hl.animation({ leaf = "global",        enabled = true, speed = 8,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true, speed = 5,   bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true, speed = 4.5, spring = "smoothSpring" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 4,   spring = "smoothSpring", style = "popin 85%" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 3,   bezier = "easeOutQuint", style = "popin 85%" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 2,   bezier = "smooth" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 2,   bezier = "smooth" })
hl.animation({ leaf = "fade",          enabled = true, speed = 3,   bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true, speed = 4,   bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 4,   bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 3,   bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 2,   bezier = "smooth" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2,   bezier = "smooth" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 2.5, bezier = "smooth", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 2.5, bezier = "smooth", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.5, bezier = "smooth", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true, speed = 6,   bezier = "quick" })

-- https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- https://wiki.hypr.land/Configuring/Layouts/Master-Layout/
hl.config({
    master = {
        new_status = "master",
    },
})

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "de",
        kb_variant = "",
        kb_model   = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
    },
})

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Applications Keybinds
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

-- Grim + Slurp + Wayfreeze
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("wayfreeze & sleep 0.2; grim -g \"$(slurp)\" ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png; pkill wayfreeze"))

hl.bind("numbersign", hl.dsp.exec_cmd("wpctl set-mute 63 toggle")) -- Mute

-- Close Application Keybind
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- CLipboard Keybind
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("sh -c 'cliphist list | rofi -dmenu -p \" \" -no-show-icons | cliphist decode | wl-copy'"))

-- Hyprlock Keybind
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("command -v hyprlock >/dev/null 2>&1 && hyprlock"))

-- Window Modes Keybinds
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Workspaces Keybinds
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = "m~" .. i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = "m~" .. i }))
end

-- Scroll through workspaces on current monitor
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "m-1" }))

hl.bind(mainMod .. " + N", hl.dsp.focus({ workspace = "empty" }))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


-------------------------------- 
---- WINDOWS AND WORKSPACES ----
--------------------------------

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

-------------------------------- 
-------- WINDOWS RUles ---------
--------------------------------

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

    opacity = 0.85,
})

-- Telegram Blur
hl.window_rule({
    name = "telegram-transparent",
    match = {
        class = "^org.telegram.desktop$",
    },

    opacity = 0.85,
})
