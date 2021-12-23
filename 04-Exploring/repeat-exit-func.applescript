tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		set success to my waitFor(it, "ASUS PB278 (1)")
		log success
		click radio button "Scaled" of tab group 1 of window 1
	end tell
end tell


on waitFor(target, windowName)
	set MAX_COUNT to 100
	set counter to 0
	try
		tell target
			repeat until exists window windowName
				set counter to counter + 1
				delay 0.02
				if (counter > MAX_COUNT) then
					exit repeat
				end if
			end repeat
		end tell
		return counter ² MAX_COUNT
		
	on error errorMessage
		log errorMessage
		return false
	end try
end waitFor