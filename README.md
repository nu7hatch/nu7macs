# Emacs configuration for nu7s :)

Here's my awesome emacs configuration. Feel free to use it if you want to 
play with ruby, python, c/c++ or haskell stuff without messing up with the
emacs.

## Installation

Attention! This way of installation will overwrite your current configuration:

    wget http://github.com/nu7hatch/nu7macs/raw/master/install.sh
    chmod u+x install.sh
    ./install.sh

### Manual installation

Clone or download the nu7macs sources:

    cd ~/.emacs.d
    git clone git://github.com/nu7hatch/nu7macs.git
    
... and add following code to your `~/.emacs` config file: 

    (setq nu7macs-path "~/.emacs.d/nu7macs")
    (load-file (concat nu7macs-path "/init.el"))

## Features

* ELPA package manager
* YASnippet bundles
* Ruby mode
* RSpec mode
* CSS mode
* Git diff mode
* Github's gists integration
* Style guessing
* HAML mode
* JavaScript (JS2) mode
* JSON mode
* YAML mode
* Continuous search
* Smart tabs
* Git support with magit
* Sass mode
* Less mode
* RVM support
* EProject

## Custom shortcuts

Redo and undo:

    undo    C-/    Undo changes
    redo    C-?    Redo changes

Text manipulation:

    backward-delete-char       C-h      Deletes char backward
    move-text-up               M-n      Moves selected region or current line up
    move-text-down             M-p      Moves selected region or current line down
    backward-kill-word         C-c b    Kills single word backward
    kill-word                  C-c f    Kills single word
    kill-whole-line            C-c k    Kills current selected line
    duplicate-current-line     C-c d    Duplicates current selected line
    
Dired shortcuts (in dired mode):

    find-in-workspace            s          Searches for file in current workspace
    dired-do-delete              DEL        Deletes selected file
    find-alternate-file ".."     ^          Go to parent directory
    dired-find-alternate-file    RET        Opens selected file
    dired                        C-x C-d    Opens dired (this shortcut eliminates annoying directory brief)
    dired-details-show           )          Shows full details about dired files
    dired-details-hide           (          Hides dired files details
    
Buffers:

    refresh-file    C-S-r      Refreshes currently edited buffer
    buffer-menu     C-x C-b    Display menu with list of opened buffers

Window resizing:

    shrink-window-horizontally     C-s-<left>     Shrinks buffer window horizontally
    enlarge-window-horizontally    C-s-<right>    Englarges buffer window horizontally
    shrink-window                  C-s-<down>     Shrinks buffer window vertically
    englarge-window                C-s-<up>       Englarges buffer window vertically

Magit:

    magit-status                   C-S-g          Enters into Magit mode