hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0.0
})


-- LAYER RULES
-- Enable blur and ignore_alpha for rofi
hl.layer_rule({
    match        = { namespace = "wofi" },
    blur         = true,
    ignore_alpha = 0.0,
    dim_around   = true
})


hl.layer_rule({
    match = { namespace = "notifications" },
    blur = true,
    ignore_alpha = 0.0, -- Replaces 'ignorealpha' / 'ignorezero'
})


hl.layer_rule({
    name = "wofi-blur", -- Optional identifier
    match = { namespace = "wofi" },
    blur = true,
    ignore_alpha = 0.0, -- Replaces 'ignorezero' by specifying transparency threshold
})
