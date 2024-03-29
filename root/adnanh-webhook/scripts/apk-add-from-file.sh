#!/usr/bin/env bash

function main() {
    local PKGS_FILE=$1
    echo "apk add from $PKGS_FILE"
    while read -r pkg
    do
    if [ -n "$pkg" ] && [[ "$pkg" != "#"* ]];
    then
      apk add --no-cache $pkg
    fi
    done < "$PKGS_FILE"
}

main $@
