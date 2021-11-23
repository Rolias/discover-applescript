tell application "System Preferences"
	activate
	set savedDelimiter to AppleScript's text item delimiters
	set AppleScript's text item delimiters to linefeed
	set the current pane to pane "Displays"
	set anchorNames to name of every anchor of current pane
	log anchorNames as text
	reveal anchor "displaysArrangementTab" of current pane
	set AppleScript's text item delimiters to savedDelimiter
end tell