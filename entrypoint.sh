#!/bin/sh

set -e

echo "test entryopint"



node --version

# apt-get update 

npm --version

npm install -g sass-lint 

pwd

ls -la

# sass-lint --config .scss-lint.yml wp-content/themes/**/*.scss  --verbose --no-exit

OUTPUT="$(sass-lint --config .scss-lint.yml wp-content/themes/**/*.scss  --verbose --no-exit)"
echo "${OUTPUT}"

MULTILINE=$(ls \
   -1)
echo "${MULTILINE}"


if [[ $string == *"warning"* ]]; then
	echo "SCSS Linting Failed";
	exit 1
fi