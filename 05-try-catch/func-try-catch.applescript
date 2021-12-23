tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of current pane
end tell

tell application "System Events"
	tell process "System Preferences"
		
		set success to my waitFor(it, "ASUS PB279 (FRED)")
		log success
		click radio button "Scaled" of tab group 1 of window 1
	end tell
end tell


on waitFor(target, windowName)
	set MAX_COUNT to 100
	set counter to 0
	try
		log windowName
    tell application "System Events"
      --your code

		tell process "System Preferences"
			log "Inside target"
			repeat until exists windowName
				log "Inside repeat"
				log counter
				set counter to counter + 1
				delay 0.02
				if (counter > MAX_COUNT) then
					log "Exiting early"
					exit repeat
				end if
			end repeat
		end tell
        end tell
	on error errorMessage
		log "In my custom error handler"
		log errorMessage
	end try
	log "RETURNING"
	return counter ² MAX_COUNT
	
	
	
end waitFor