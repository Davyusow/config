local mainMod = "SUPER"
local ipc = "noctalia msg "

-- Execução de programas (usa as variáveis globais carregadas do programs.lua)
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("hyprctl dispatch 'hl.dsp.window.close()' && mpv ~/.local/share/sounds/MIUI/stereo/window-close.ogg"))
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("ALT + F2", hl.dsp.exec_cmd("rofi -show run"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Foco de janelas com teclas de seta
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Alternar entre os workspaces (1 ao 10)
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll e alternância dinâmica de workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + ALT + left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + ALT + right", hl.dsp.focus({ workspace = "e+1" }))

-- Mover e redimensionar janelas com o mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Controles de áudio e microfone
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { locked = true, repeating = true })


-- Controles de Player de Mídia
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Screenshots
hl.bind("Print", hl.dsp.exec_cmd(ipc .. 'screenshot-fullscreen && mpv .local/share/sounds/MIUI/stereo/screen-capture.ogg'))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(ipc .. ' screenshot-region && mpv .local/share/sounds/MIUI/stereo/screen-capture.ogg'))

-- Lockscreen e Fullscreen
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(ipc .. "session lock && mpv ~/.local/share/sounds/MIUI/stereo/desktop-screen-lock.ogg"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

-- Noctalia
hl.bind("ALT + SPACE", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+S", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mainMod .. "+comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))
