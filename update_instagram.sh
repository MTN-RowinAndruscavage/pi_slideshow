#!/bin/bash

ACCOUNTS=(
  oomyungdoe.nw
)


pushd oyd > /dev/null

for ACCOUNT in "${ACCOUNTS[@]}"; do
  instaLooter -v -N $ACCOUNT
done

popd oyd
