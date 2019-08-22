#!/bin/sh

npm install -g sass-lint 


pwd
cd wp-content/themes/
pwd
latest_modified_theme_file=$(find . -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -f2- -d" ")
IFS='/' read -ra latest_modified_theme_file <<< "$latest_modified_theme_file"
echo ${latest_modified_theme_file[1]}
cd ${latest_modified_theme_file[1]}
pwd
# sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit


# sass-lint --config .scss-lint.yml wp-content/themes/**/*.scss  --verbose --no-exit

OUTPUT="$(sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit)"
echo "${OUTPUT}"

MULTILINE=$(ls \
   -1)
echo "${MULTILINE}"


if [[ $string == *"warning"* ]]; then
	echo "SCSS Linting Failed";
	exit 1
fi