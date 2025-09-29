#!/bin/sh

set -e

curl -s -L -o /tmp/full.zip https://github.com/iDvel/rime-ice/releases/download/nightly/full.zip
unzip -q /tmp/full.zip
mv default.yaml rime_ice_suggestion.yaml
sed -i '/^  - schema:/{/double_pinyin_flypy/!s/^/#/g}' rime_ice_suggestion.yaml
rime_deployer --build . /usr/share/rime-data
