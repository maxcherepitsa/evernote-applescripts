tell application "Evernote"
        set _sel to selection
        if _sel � {} then
                set aNote to first item of _sel
                set aNoteName to title of aNote
                set aNoteClassicLink to note link of aNote
                set aNoteClassicLink2 to "[url=" & aNoteClassicLink & "]" & "���������� � ���������" & "[/url]"
                # set the clipboard to (get title of aNote) & return & (get note link of aNote)
        end if
       
end tell
 
tell application "Things"
       
        set newToDo to make new to do with properties {name:aNoteName, notes:aNoteClassicLink2}
        set tag names of newToDo to "evernote-todo"
end tell