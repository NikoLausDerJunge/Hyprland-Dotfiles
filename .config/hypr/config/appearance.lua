hl.config({
    general = {
        gaps_in  = 10,
        gaps_out = 20,
        border_size = 0,

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
            enabled = true,
            range = 10,
            render_power = 10
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