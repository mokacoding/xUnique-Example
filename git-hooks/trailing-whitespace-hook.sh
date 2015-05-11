#!/bin/sh

if git rev-parse --verify HEAD >/dev/null 2>&1
then
	against=HEAD
else
	# Initial commit: diff against an empty tree object
	against=4b825dc642cb6eb9a060e54bf8d69288fbee4904
fi

# If there are whitespace errors, print the offending file names
git diff-index --check --cached $against --
if [ $? -ne 0 ]; then
  cat <<EOF

There are trailing whitespaces in the changes about to be committed.
Please fix them, add the changes, and commit again.
EOF
  exit 1
fi
