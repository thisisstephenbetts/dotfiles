on run argv
set dir to item 1 of argv
  tell application "iTerm2"
    set newWindow to (create window with profile "development")
    tell current session of current window
      write text "cd " & dir & "; nvim ."
      set commandSession to (split horizontally with default profile)
--      repeat 20 times
--        tell commandSession 
--	  keystroke "f" using {shift down}
--	end tell
--      end repeat
      tell commandSession
        write text "cd " & dir
      end tell
    end tell
  end tell
end run
