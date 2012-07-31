# Uses growlnotify to let you know when the Terminal is done working.

# AppleScript from http://www.devdaily.com/mac-os-x/applescript-unix-mac-osx-foreground-application-result

# TODO: Put osascript part in actual executable and & it to make it run in background and avoid osascript slowness

function ready_milord {
  APP=`osascript -e 'tell application "System Events"' -e 'set frontApp to name of first application process whose frontmost is true' -e 'end tell' 2>/dev/null`
  if [ "$APP" != 'Terminal' ]; then
    message="Sayeth the Terminal: I'm ready for your next command, milord."
    if [ -d "/Applications/terminal-notifier.app/" ]; then
      /Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -message "$message" 1>/dev/null
    else
      growlnotify -m "$message"
    fi
  fi
}

PS1='$(ready_milord)'$PS1

