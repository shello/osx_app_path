# `osx_app_path.sh`

Get the path of an application bundle in OS X.

This function *won't launch* the application, and will return an exit exit code
greater than zero if an error is encountered.

Applescript code based on an answer found in Stack Exchange:
"[AppleScript -Get the path to an application without opening it](http://apple.stackexchange.com/a/132394)".

# Example

    $ osx_app_path Preview
    /Applications/Preview.app
    
    $ osx_app_path -b com.apple.preview
    /Applications/Preview.app

