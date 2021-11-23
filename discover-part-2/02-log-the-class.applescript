tell application "System Preferences"
	set nameList to the name of every window
	set theClass to class of nameList
	log theClass
end tell