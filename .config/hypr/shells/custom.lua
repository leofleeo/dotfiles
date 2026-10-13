hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("mako")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hypridle")
	--	hl.exec_cmd("nwg-drawer -r -ovl") -- Disable me for lower memory usage, I will still work, just with a slight delay!
end)

hl.layer_rule({ match = { namespace = "waybar" }, blur = true, ignore_alpha = 0.2 })
hl.layer_rule({ match = { namespace = "nwg-drawer" }, blur = true })
hl.layer_rule({ match = { namespace = "notifications" }, blur = true, ignore_alpha = 0.2 })
--hl.bind("ALT + SPACE", hl.dsp.exec_cmd("nwg-drawer -ovl"))
-- Variables
local shell = {}

shell.launcher = "rofi -show drun"
shell.clipboard = "rofi -modi clipboard:~/.config/rofi/modes/cliphist-rofi-img -show clipboard"
shell.windowSwitcher = "rofi -show window"
shell.media = "rofi -modi playerctl:~/.config/rofi/modes/playerctl.sh -show playerctl"

return shell
