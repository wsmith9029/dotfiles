-- General --
hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 20,
        border_size      = 2,
        col              = {
            active_border   = {
                colors = { "rgba(33ccffee)", "rgba(00ff99ee)" },
                angle = 45
            },
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = false,
        allow_tearing    = false,
        layout           = "dwindle",
    },
})

-- Decoration --
hl.config({
    decoration = {
        rounding         = 10,
        rounding_power   = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow           = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = 0xee1a1a1a,
            offset       = { 4, 4 }
        },

        blur             = {
            enabled  = true,
            size     = 6,
            passes   = 3,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})


-- Dwindle --
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- Master Layout --
hl.config({
    master = {
        new_status = "master",
    },
})

-- Scrolling --
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

-- Miscellaneous --
hl.config({
    misc = {
        focus_on_activate       = true,
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    }
})

-- XWayland --
hl.config({
    xwayland = {
        force_zero_scaling = true
    }
})

-- Input --
hl.config({
    input = {
        kb_layout    = "gb",
        kb_variant   = "",
        kb_model     = "",
        kb_options   = "",
        kb_rules     = "",

        follow_mouse = 1,

        sensitivity  = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad     = {
            natural_scroll = true,
        },
    },
})
