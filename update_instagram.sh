#!/bin/bash

ACCOUNTS=(
  oomyungdoe.nw
  oomyungdoe.ne
  mindbodyharmony8
  oomyungdoefl
  oomyungdoelargo
  oomyungdoemedford
  oydcambridge
  oydmalden
  oydsomerville
  oydwaltham
)

mkdir -p instagram
pushd instagram > /dev/null

for ACCOUNT in "${ACCOUNTS[@]}"; do
  echo "Updating instagram/$ACCOUNT ..."
  instalooter user $ACCOUNT -v -N
done

popd > /dev/null
