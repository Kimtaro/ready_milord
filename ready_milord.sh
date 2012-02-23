# Uses growlnotify to let you know when the Terminal is done working.

# AppleScript from http://www.devdaily.com/mac-os-x/applescript-unix-mac-osx-foreground-application-result

function ready_milord {
  APP=`osascript -e 'tell application "System Events"' -e 'set frontApp to name of first application process whose frontmost is true' -e 'end tell' 2>/dev/null`
  if [ "$APP" != 'Terminal' ]; then
    growlnotify -m "Sayeth the Terminal: I'm ready for your next command, milord."
  fi
}

PS1='$(ready_milord)'$PS1

