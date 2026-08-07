hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = "1.0",
})

hl.monitor({
    output = "HEADLESS-1",
    mode = "1366x768@60",
    position = "-1366x0",
    scale = "1.0",
})

hl.workspace_rule({ workspace = "1", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "", persistent = true })
-- hl.workspace_rule({ workspace = "6", monitor = "", persistent = true })
-- hl.workspace_rule({ workspace = "7", monitor = "", persistent = true })
-- hl.workspace_rule({ workspace = "8", monitor = "", persistent = true })
-- hl.workspace_rule({ workspace = "9", monitor = "", persistent = true })
-- hl.workspace_rule({ workspace = "10", monitor = "", persistent = true })
