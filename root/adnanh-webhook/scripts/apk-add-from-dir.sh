#!/usr/bin/env bash

function main() {
    local PKGS_DIR=$1
    for pkgs_file in "$PKGS_DIR"/*.txt
    do
      /adnanh-webhook/scripts/apk-add-from-file.sh $pkgs_file
    done
}

main $@
