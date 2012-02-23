ready_milord
============

Do you often start a long-running command like an import or test suite, switch app to do something else, and promptly forget about the command? I do. This helps me unforget.

This is a shell function for the OS X Terminal that sits in your prompt. It uses AppleScript to check if the Terminal is in the background when the prompt is printed and notifies you with Growl.


Requirements
------------

You must have [Growl](http://growl.info/) and [growlnotify](http://growl.info/extras.php#growlnotify) installed.


Install
-------

Download `ready_milord.sh` and put `source ready_milord.sh` in your .bashrc or equivalent anywhere after you define your prompt (PS1).

Here's the relevant bit from my .bashrc as an example:

    PS1='\[\033[0;36m\].----[\
    \[\033[0;32m\] \u@\[\033[7m\]\h\[\033[0m\]\
    \[\033[0;36m\] ]----[\
    \[\033[0;32m\] \w\
    \[\033[0;36m\] ]\
    $(__git_ps1 "\[\033[0;36m\]----[ \[\033[0;32m\]%s\[\033[0;36m\] ]")\
    \n\
    \[\033[0;36m\]‛-- $\
    \[\033[0m\] '

    source ~/.ready_milord.sh
 

License
-------

Baconright 2012 Kim Ahlström, <kim.ahlstrom@gmail.com>
