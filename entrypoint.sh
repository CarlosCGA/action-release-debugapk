#!/bin/bash

sh -c "git config --global --add safe.directory $PWD"

VERSION_NAME=`cat ./${APP_FOLDER}/versionName.txt`
#VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/versionName.txt`

hub release create -a ./${APP_FOLDER}/build/outputs/apk/free/debug/*.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
#hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
