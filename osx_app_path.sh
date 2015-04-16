# Get the path of an application bundle
# Based on http://apple.stackexchange.com/a/132394
osx_app_path() {
  local usage app_name bundle_id app_path exitcode
 
  usage="Usage: $0 <[-a] <app name>|-b <bundle identifier>>"
 
  while getopts "a:b:h" opt; do
    case $opt in
      a ) app_name="$OPTARG" ;;
      b ) bundle_id="$OPTARG" ;;
      h ) echo "$usage"; return 0 ;;
      ? ) echo "$usage" >&2; return 1 ;;
    esac
  done
 
  # Shift the parsed options from getopts, leaving the rest starting at $1
  shift "$((OPTIND-1))"
  if [[ -z "$bundle_id" && -n "$1" ]]; then
    app_name="$1"
  fi
 
  if [[ -z "$bundle_id" && -n "$app_name" ]]; then
    bundle_id="$(osascript -e "id of app \"$app_name\"")"
  fi

  if [[ -z "$bundle_id" ]]; then
    echo "$usage" >&2
    return 1
  fi
 
  app_path="$(
    osascript -e 'tell application "Finder"' \
              -e "POSIX path of (application file id \"$bundle_id\" as alias)" \
              -e 'end tell')"
  exitcode=$?
 
  if [[ $exitcode -eq 0 ]]; then
    echo "${app_path%/}"
  fi
 
  return $exitcode
}

# Examples:
#   $ osx_app_path Preview
#   /Applications/Preview.app
#   $ osx_app_path -b com.apple.preview
#   /Applications/Preview.app