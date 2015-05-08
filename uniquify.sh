#!/bin/bash

# uniquify and sort the Xcode projct files
python -mxUnique -u -s "${PROJECT_FILE_PATH}/project.pbxproj"
