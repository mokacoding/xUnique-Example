#!/bin/sh

red="\033[31m"
reset="\033[m"

# uniquify and sort the Xcode projct files
python -mxUnique -u -s -c "xUnique.xcodeproj/project.pbxproj" &> /dev/null

if [ $? -ne 0 ]; then
  printf "$red"
  cat <<EOF
This commit has been aborted because the project file needed to be uniquified.
You can add those changes and commit again.
EOF
  printf "$reset"
  exit 1
fi
