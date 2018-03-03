#!/bin/bash

VIDOPTS=""
PHOTOPTS="--autozoom -F --cycle-once -D 2"

FEATUREDVIDS=(
  OYD.m4v
  OYD2.m4v
)

mkdir -p instagram

while true; do
for F in "${FEATUREDVIDS[@]}"; do
  omxplayer $VIDOPTS $F
done

pushd instagram > /dev/null

for F in `ls -1 *.mp4`; do
  omxplayer $VIDOPTS $F
done

feh $PHOTOPTS

popd > /dev/null

done # while true
