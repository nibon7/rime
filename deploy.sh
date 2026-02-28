#!/bin/sh

set -e

curl -s -L -o /tmp/rime-wanxiang-base.zip https://github.com/amzxyz/rime_wanxiang/releases/download/v14.8.6/rime-wanxiang-base.zip
curl -s -L -O https://github.com/amzxyz/RIME-LMDG/releases/download/LTS/wanxiang-lts-zh-hans.gram
unzip -q /tmp/rime-wanxiang-base.zip -x README.md
mv default.yaml wanxiang_suggestion.yaml
rime_deployer --build . /usr/share/rime-data
