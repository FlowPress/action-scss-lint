#!/bin/sh

set -e

echo "test entryopint"



node --version

# apt-get update 

npm --version

npm install -g sass-lint 

pwd

ls -la

sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit