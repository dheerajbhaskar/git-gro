#!/bin/bash

# TODO: rename the file; gro = git rename origin

remoteToRename=$(git remote | wc -l)
# TODO: check there are only 2 remotes
# TODO: check the name of one remote is origin
# TODO: check that origin has no url and that other remote has url
# TODO: display error messages if above checks fail

# TODO: set url to origin
# TODO: delete the other remote
echo "$remoteToRename"
read -n1 -rsp "Press a key to continue..."