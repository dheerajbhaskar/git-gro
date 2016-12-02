#!/bin/bash

# TODO: rename the file; gro = git rename origin

# Utility functions
pause() { read -n1 -rsp "Press a key to continue..."; }
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111;  }
try() { "$@" || die "cannot $*"; }

# COMMANDS: bash commands to execute
cmdNumberOfRemotes=$(git remote | wc -l)
cmdNumberOfRemotesNamedOrigin=$(git remote | grep origin | wc -l)
cmdOriginUrlLength=$(git remote get-url origin | wc -c)

# COMMANDS: non-origin remote
cmdNonOriginRemote=$(git remote | sed '/origin/d')
cmdNonOriginRemoteLength=$(echo $cmdNonOriginRemote | wc -c)
cmdNonOriginUrlLength=$(git remote get-url $cmdNonOriginRemote | wc -c)

# CONSTANTS
ORIGIN_CHAR_LENGTH=7

# Check there are only 2 remotes
if [ "$cmdNumberOfRemotes" -ne "2" ]; then
    die "error: more than two remotes found"
fi

# Check the name of one remote is origin
if [ "$cmdNumberOfRemotesNamedOrigin" -ne "1" ]; then
    die "error: remote named 'origin' not found"
fi

# Check that origin has no url
if [ "$cmdOriginUrlLength" -ne "$ORIGIN_CHAR_LENGTH" ]; then
    die "error: remote 'origin' already has a url"
fi

# Check that other remote has url
if [ "$cmdNonOriginRemoteLength" -eq "$cmdNonOriginUrlLength" ]; then
    die "error: remote '$cmdNonOriginRemote' has no url"
fi

# TODO: display error messages if above checks fail

# TODO: set url to origin
# TODO: delete the other remote
echo "\"$cmdNumberOfRemotes\""
pause