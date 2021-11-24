tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		get UI elements of window 1
	end tell
end tell
   