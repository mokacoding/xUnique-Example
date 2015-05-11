#!/bin/sh

# uniquify and sort the Xcode projct files
python -mxUnique -u -s -c "xUnique.xcodeproj/project.pbxproj" &> /dev/null

if [ $? -ne 0 ]; then
  cat <<EOF
This commit has been aborted because the project file needed to be uniquified.
You can add those changes and commit again.
EOF
  exit 1
fi
