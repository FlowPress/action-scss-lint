#!/bin/sh

npm install -g sass-lint 


pwd
cd wp-content/themes/
pwd
cd "$(dirname "$(find . -type f -name "".scss-lint.yml | head -1)")"
pwd
# sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit


# sass-lint --config .scss-lint.yml wp-content/themes/**/*.scss  --verbose --no-exit

OUTPUT="$(sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit)"

echo 'output'
echo "${OUTPUT}"

# echo 'multiline'
# MULTILINE=$(ls \	
#    -1)
# echo "${MULTILINE}"


if [[ "$OUTPUT" == *"warning"* ]]; then
	echo "SCSS Linting Failed.";
	exit 1
else 
	echo "SCSS Passed."
fi