#!/bin/bash
USAGE=$(cat << EOF
Usage:
cheatsheet PROGRAM

PROGRAM := { firefox | chrome | i3 }

EOF
)

CHROME_SHORTCUTS=$(cat << EOF

Action                                         Shortcut
-----------------------------------------------------------
Open a new window                               Ctrl+n
Close the current window                        Ctrl+Shift+w

Open a new tab and jump to it                   Ctrl+t
Jump to the next open tab                       Ctrl+PgDn
Jump to the previous open tab                   Ctrl+PgUp
Jump to a specific tab                          Ctrl+[1-8]
Move tabs left/right                            Ctrl+Shift+PgUp/Dn
Close the current tab                           Ctrl+w

Open the Chrome menu                            Alt+f
Back                                            Alt+←
Forward                                         Alt+→

Open the Find Bar to search the current page    Ctrl+f
Jump to the next match to your Find Bar search  Ctrl+g
Jump to the prev match to your Find Bar search  Ctrl+Shift+g

Jump to the address bar                         F6

Reload the current page                         F5
Scroll horizontally on the page                 Shift+scroll wheel

EOF
)

FIREFOX_SHORTCUTS=$(cat << EOF

Action                              Shortcut
--------------------------------------------
Back                                Alt+←
Forward                             Alt+→
Reload                              <F5>

Find in This Page                   Ctrl+f
Find Next                           Ctrl+g
Find Prev                           Ctrl+Shift+g
Quick Find                          /

Focus Address Bar                   <F6> or Alt+D
Switch Search Engine                Alt+↓ or Alt+↑
Open Address or Search in
New Background Tab                  Alt+Shift+Enter (from address bar)
Open Focused Bookmark in New
Foreground Tab                      Ctrl+Enter
Open Focused Bookmark in New
Background Tab                      Ctrl+Shift+Enter

New Window                          Ctrl+N
New Private Window                  Ctrl+Shift+P
Close Window                        Ctrl+Shift+W
New Tab                             Ctrl+T
Close Tab                           Ctrl+W

Jump to Next Open Tab               Ctrl+PgDn
Jump to Prev Open Tab               Ctrl+PgUp
Go to Tab 1-8                       Alt+[1-8]
Move Tabs Left/Right                Ctrl+Shift+PgUp/Dn

History Sidebar                     Ctrl+H
Bookmarks Sidebar                   Ctrl+B

Mute/Unmute Audio                   Ctrl+M

EOF
)

I3_SHORTCUTS=$(cat << EOF

Action                                  Shortcut
-------------------------------------------------
Open a new Terminal                     mod+Enter

Reload the config file                  mod+Shift+c
Restart i3 in place                     mod+Shift+r
Exit i3                                 mod+Shift+e

Tile layout (default)                   mod+e
Stack Layout                            mod+s
Tabbed Layout                           mod+w
Vertical Split                          mod+v
Horizontal Split                        mod+shift+v

Interactive PrtSc                       Fn+PrtSc
Select-Area PrtSc                       mod+Fn+PrtSc


Resize Mode                             mod+r (then hjkl)

App Launcher (dmenu)                    mod+d

To move window                          mod+Shift+<arrow key>

Switch to another workspace             mod+[0-9]
Move a window to another workspace      mod+Shift+[0-9]

EOF
)

case "$1" in
    chrome)
        echo "$CHROME_SHORTCUTS"
        ;;
    firefox)
        echo "$FIREFOX_SHORTCUTS"
        ;;
    i3)
        echo "$I3_SHORTCUTS"
        ;;
    *)
        echo "$USAGE"
        ;;
esac
