#!/bin/sh
echo '$SHELL'
echo "$SHELL"
echo $0



npm install -g sass-lint 


cd wp-content/themes/
cd "$(dirname "$(find . -type f -name "".scss-lint.yml | head -1)")"

OUTPUT="$(sass-lint --config .scss-lint.yml **/*.scss  --verbose --no-exit)"

echo "${OUTPUT}"

echo '----';

single="$(echo $OUTPUT  | tr '\n' ',')"

echo '$single'
echo $single

echo '----2';

# if [[ $single =~ "warning" ]]
# then
# 	echo "SCSS Linting Failed."
# 	exit 1
# fi
echo '----3';

echo grep -q warning <<<"$single"

echo '----4';

if grep -q warning <<<"$single"; then
    echo "SCSS Linting Failed."
	exit 1
fi