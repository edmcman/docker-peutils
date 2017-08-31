#!/bin/bash

set -ex

FILE="$1"
test -f "$FILE"

TMP="$(mktemp -d)"

cp "$FILE" "$TMP/foo.pdb"

docker run --rm -v $TMP:/stuff eschwartz/docker-peutils wine /root/cvdump.exe z:\\stuff\\foo.pdb || true

rm -rf "$TMP"
