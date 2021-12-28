tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		
		set windowName to "ASUS PB278 (1)"
		set MAX_TIMEOUT to 5
		
		with timeout of MAX_TIMEOUT seconds
			repeat until exists tab group 1 of window windowName
			end repeat
		end timeout
		
		tell tab group 1 of window windowName
			click radio button "Scaled"
			select row 2 of table 1 of scroll area 1
		end tell
		
		with timeout of MAX_TIMEOUT seconds
			repeat until exists group 1 of window windowName
			end repeat
		end timeout
		
		tell tab group 1 of group 1 of window windowName
			click radio button "Default for display"
		end tell
		
		tell window windowName
			with timeout of MAX_TIMEOUT seconds
				repeat until exists toolbar 1
				end repeat
			end timeout
			click button 1 of group 1 of group 1 of toolbar 1
		end tell
		
	end tell
end tell

tell application "System Preferences"
	quit
end tell