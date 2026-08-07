hl.config({
    input = {
        kb_layout = "br",
        kb_variant = "",
        kb_model = "pc105",
        repeat_rate = 50,
        repeat_delay = 300,
        follow_mouse = 1,
        touchpad = {
            natural_scroll = true,
            disable_while_typing = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
