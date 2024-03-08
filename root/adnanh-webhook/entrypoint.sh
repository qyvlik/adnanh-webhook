#!/usr/bin/env bash

./scripts/apk-add-from-dir.sh /adnanh-webhook/pkgs

webhook $@

