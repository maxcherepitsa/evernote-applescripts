# Evernote 2 Things
#
# This script takes selected Evernote note and creates Things app task with the same name
# and link to that note (will be opened at desktop client, not in browser)
# Task is created at 'Inbox' and has tag 'evernote-todo'


tell application "Evernote"
	set _sel to selection
	if _sel is not equal to {} then
		set aNote to first item of _sel
		set aNoteName to title of aNote
		set aNoteClassicLink to note link of aNote
		set aNoteClassicLinkUrl to "[url=" & aNoteClassicLink & "]" & "Watch in Evernote" & "[/url]"
	end if
	
end tell

tell application "Things"
	
	set newToDo to make new to do with properties {name:aNoteName, notes:aNoteClassicLinkUrl}
	set tag names of newToDo to "evernote-todo"
end tell