tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		log "This is it"
		log it
		my waitFor(it, "ASUS PB278 (1)")
		click radio button "Scaled" of tab group 1 of window 1
	end tell
end tell


on waitFor(target, windowName)
	try
		set MAX_COUNT to 100
		set counter to 0
		tell target
			repeat until exists windowName
				set counter to counter + 1
				delay 0.02
				if (counter > MAX_COUNT) then
					exit repeat
				end if
			end repeat
		end tell
	on error errorMessage
		log "In my custom error handler"
		log errorMessage
	end try
	
	
	
end waitFor