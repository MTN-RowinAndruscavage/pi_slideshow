#!/bin/bash

ACCOUNTS=(
  oomyungdoe.nw
  oomyungdoe.ne
  mindbodyharmony8
)

mkdir -p instagram
pushd instagram > /dev/null

for ACCOUNT in "${ACCOUNTS[@]}"; do
  echo "Updating instagram/$ACCOUNT ..."
  instaLooter -v -N $ACCOUNT
done

popd > /dev/null
