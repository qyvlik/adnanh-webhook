#!/usr/bin/env bash

./apk-add-from-dir.sh /adnanh-webhook/pkgs

/usr/bin/webhook $@
