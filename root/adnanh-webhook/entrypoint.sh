#!/usr/bin/env bash

/adnanh-webhook/scripts/apk-add-from-dir.sh /adnanh-webhook/pkgs

webhook $@

