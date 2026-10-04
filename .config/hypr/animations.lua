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