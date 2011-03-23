# Emacs configuration for nu7s :)

Here's my awesome emacs configuration. Feel free to use it if you want to 
play with ruby, python, c/c++ or haskell stuff without messing up with the
emacs.

## Installation

Installation is very, very simple, just copy following code and paste it in
new emacs buffer. Afterwords evaluate it (hold M-x, type eval-buffer and click 
enter). Here's the installation code:

  TODO...

## Features

TODO ...

## Shortcuts

Redo and undo:

    undo    C-x z    Undo changes
    redo    C-x Z    Redo changes

Text manipulation:

    backward-delete-char    C-h           Deletes char backward
    move-text-up            C-S-<up>      Moves selected region or current line up
    move-text-down          C-S-<down>    Moves selected region or current line down

Dired shortcuts (in dired mode):

    find-in-workspace            s         Searches for file in current workspace
    dired-do-delete              del       Deletes selected file
    find-alternate-file ".."     ^         Go to parent directory
    dired-find-alternate-file    return    Opens selected file 

Buffers:

    refresh-file    <f5>       Refreshes currently edited buffer
    buffer-menu     C-x C-b    Display menu with list of opened buffers

Window resizing (s here is <win> or <command> key):

    shrink-window-horizontally     C-s-<left>     Shrinks buffer window horizontally
    enlarge-window-horizontally    C-s-<right>    Englarges buffer window horizontally
    shrink-window                  C-s-<down>     Shrinks buffer window vertically
    englarge-window                C-s-<up>       Englarges buffer window vertically
