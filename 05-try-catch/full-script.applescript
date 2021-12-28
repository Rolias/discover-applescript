tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		set windowName to "ASUS PB278 (1)"
		set success to my waitFor(it, windowName)
		log success
		tell tab group 1 of window windowName
			click radio button "Scaled"
			select row 2 of table 1 of scroll area 1
		end tell
		repeat until exists tab group 1 of group 1 of window windowName
		end repeat
		
		tell tab group 1 of group 1 of window windowName
			click radio button "Default for display"
		end tell
		
		tell window windowName
			repeat until exists group 1 of group 1 of toolbar 1
			end repeat
			click button 1 of group 1 of group 1 of toolbar 1
		end tell
		
	end tell
end tell

tell application "System Preferences"
	quit
end tell



on waitFor(target, windowName)
	set MAX_COUNT to 100
	set counter to 0
	try
		log windowName
		tell target
			repeat until exists windowName
				set counter to counter + 1
				delay 0.02
				if (counter > MAX_COUNT) then
					log "Exiting early"
					exit repeat
				end if
			end repeat
		end tell
	on error errorMessage
		log errorMessage
		return false
	end try
	return counter ≤ MAX_COUNT
end waitFor
