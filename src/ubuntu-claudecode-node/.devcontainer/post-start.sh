#!/bin/sh

# コンテナーの起動時処理
# postStartCommand としてコンテナー内で実行

set -e

cd "$(dirname "$0")/.."

# 前回の npm ci からロックファイルか Node.js のバージョンが変わった場合のみ実行
if [ -f package-lock.json ]; then
  checksum=$({ node --version; cat package-lock.json; } | cksum)
  if [ "$checksum" != "$(cat node_modules/.npm-ci-checksum 2>/dev/null)" ]; then
    npm ci
    echo "$checksum" > node_modules/.npm-ci-checksum
  fi
fi
