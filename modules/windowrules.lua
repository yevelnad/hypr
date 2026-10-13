--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
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

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)
-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "move-firefox",
    match = { class = "^(firefox)$" },
    workspace = "1",
})

hl.window_rule({
    name = "move-google",
    match = { class = "^(google-chrome)$" },
    workspace = "1",
})

hl.window_rule({
    name = "move-zed",
    match = { class = "^(dev.zed.Zed)$" },
    workspace = "2",
})

hl.window_rule({
    name = "move-steam",
    match = { class = "^(steam)$" },
    workspace = "4",
})

hl.window_rule({
    name = "move-faugus",
    match = { class = "^(io.github.Faugus.faugus-launcher)$" },
    workspace = "4",
})

hl.window_rule({
    name = "move-nautilus",
    match = { class = "^(org.gnome.Nautilus)$" },
    workspace = "3",
    float = true,
})

hl.window_rule({
    name = "move-bazaar",
    match = { class = "^(io.github.kolunmi.Bazaar)$" },
    workspace = "3",
})

hl.window_rule({
    name = "move-resources",
    match = { class = "^(org.gnome.Resources)$" },
    float = true,
})
