#!/usr/bin/env bash

mkdir -p modules

for D in ../x/*; do
  if [ -d "${D}" ]; then
    rm -rf "modules/$(echo $D | awk -F/ '{print $NF}')"
    mkdir -p "modules/$(echo $D | awk -F/ '{print $NF}')" && cp -r $D/spec/* "$_"
  fi
done

cat ../x/README.md | sed 's/\.\/x/\/x/g' | sed 's/spec\/README.md//g'