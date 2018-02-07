#!/bin/bash

VIDOPTS=""
PHOTOPTS="--autozoom -F --cycle-once -D 2"

FEATUREDVIDS=(
  OYD.m4v
  OYD2.m4v
)

while true; do
for F in "${FEATUREDVIDS[@]}"; do
  omxplayer $VIDOPTS $F
done

pushd oyd > /dev/null

for F in `ls -1 *.mp4`; do
  omxplayer $VIDOPTS $F
done

feh $PHOTOPTS

popd > /dev/null

done # while true
