hl.on("hyprland.start", function()
	hl.exec_cmd("noctalia --daemon")
end)

-- Variables
local shell = {}

shell.launcher = "noctalia msg panel-toggle launcher"
shell.clipboard = "noctalia msg panel-toggle clipboard"
shell.windowSwitcher = "noctalia msg window-switcher"

return shell
