tell application "System Preferences"
	set AppleScript's text item delimiters to linefeed
	set nameList to the name of every window
	log "?? list " &linefeed & nameList 
	set firstWindow to the name of window 1
	log "The first ?? is " & firstWindow
end tell