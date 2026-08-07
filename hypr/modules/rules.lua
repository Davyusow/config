local function apply_window_rule(rule)
  if hl.window_rule then
    hl.window_rule(rule)
  end
end

apply_window_rule({
    name = "ignore-maximize-requests",
    match = {
        class = ".*",
    },
    suppress_event = "maximize"
})

apply_window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        fullscreen = false,
    },
    no_focus = true
})

apply_window_rule({
    name = "modo-janela-gnome",
    match = {
        class = "^org\\.gnome\\.(Nautilus|Papers|Epiphany|SystemMonitor|clocks|Music|Logs|baobab|Boxes|Calendar|Snapshot|Characters|DiskUtility|Loupe|Evince|seahorse\\.Application|Showtime|Decibels|Notes|Weather|Todo|FileRoller|Maps|Photos|font-viewer|SimpleScan)$",
    },
    float = true,
    size = "1024 576",
    center = true
})

apply_window_rule({
    name = "modo-janela",
    match = {
        class = "nemo",
    },
    float = true,
    size = "1024 576",
    center = true
})

apply_window_rule({
    name = "modo-janela-calculadora",
    match = {
        class = "^org\\.gnome\\.Calculator$",
    },
    float = true,
    size = "380 670",
})

hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

apply_window_rule({
    name = "modo-janela-quadrado",
    match = {

        class = "^org\\.gnome\\.(Notes|Contacts|TextEditor)$",
    },
    float = true,
    size = "600 600",
})
