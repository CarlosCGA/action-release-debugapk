#!/bin/bash

sh -c "git config --global --add safe.directory $PWD"

VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle.kts`
#VERSION_NAME=`grep -oP 'versionName.txt' ./${APP_FOLDER}/build.gradle.kts`

hub release create -a ./${APP_FOLDER}/build/outputs/apk/free/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
#hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
