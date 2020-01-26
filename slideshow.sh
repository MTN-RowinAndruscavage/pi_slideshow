#!/bin/bash

VIDOPTS=""
PHOTOPTS="--autozoom -F --cycle-once -D 2"

mkdir -p instagram

while true; do
for F in `ls -1t Videos/*`; do
  omxplayer $VIDOPTS $F
done

pushd instagram > /dev/null

for F in `ls -1t *.mp4`; do
  omxplayer $VIDOPTS $F
done

feh $PHOTOPTS

popd > /dev/null

done # while true
