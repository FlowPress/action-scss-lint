#!/bin/sh

npm install -g sass-lint 


cd wp-content/themes/
cd "$(dirname "$(find . -type f -name "".scss-lint.yml | head -1)")"

OUTPUT="$(sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit)"

# echo "${OUTPUT}"

single="$(echo $OUTPUT  | tr '\n' ',')"

echo '$single'
echo $single

if [[ $single == *"warning"* ]]; then
	echo "SCSS Linting Failed."
	exit 1
else 
	echo "SCSS Passed."
fi

