# `osx_app_path.sh`

Get the path of an application bundle in OS X.

This function *won't launch* the application, and will return an exit exit code
greater than zero if an error is encountered.

Applescript code based on an answer found in Stack Exchange:
"[AppleScript -Get the path to an application without opening it](http://apple.stackexchange.com/a/132394)".

# Installation

Source the script, copy it to your functions file, or run it directly. Your choice!

If sourced, the `osx_app_path` function will become available.

# Usage / Example

    $ osx_app_path Preview
    /Applications/Preview.app
    
    $ osx_app_path -b com.apple.preview
    /Applications/Preview.app

The `-a` switch is optional. If a bundle identifier (via `-b`) is given, it
takes precedence over any `-a`. If multiple options are given, only the last one
will be used.

# Notes

Tested on OS X 10.9.5, using Bash 3.2 and Zsh 5.0.7.
