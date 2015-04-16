# `osx_app_path.sh`

Function to get the path of an application bundle in OS X.

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

# License

Is this really needed for a simple script? Just in case...

    Copyright (c) 2015, Filipe 'shello' Rodrigues

    Permission to use, copy, modify, and/or distribute this software for any
    purpose with or without fee is hereby granted, provided that the above
    copyright notice and this permission notice appear in all copies.

    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
    WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
    MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
    SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
    WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
    ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR
    IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
