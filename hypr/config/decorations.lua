-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { CACHYLRED, CACHYDRED },
                angle = 45,
            },
            inactive_border = CACHYBLANK,
        },
    },
    group = {
        col = {
            border_active = CACHYLBLUE,
            border_inactive = CACHYBLANK,
            border_locked_active = CACHYDYELLOW,
            border_locked_inactive = CACHYBLANK,
        },
        groupbar = {
            col = {
                active = CACHYLRED,
                inactive = CACHYBLANK,
                locked_active = CACHYDYELLOW,
                locked_inactive = CACHYBLANK,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 10,
        active_opacity = 1,
        inactive_opacity = 1,
        fullscreen_opacity = 1,
        blur = {
            enabled = false,
        },
    },
})
