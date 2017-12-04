#!/bin/bash

set -e

DIR=$(pwd)

mkdir -p ${DIR} api/{views,models,controllers} bin/www documentation encryption public/{images,javascripts,stylesheets}

touch .gitignore app_server.js INSTALL LICENSE Makefile  package.json README.md

EMPTY_DIRS=$(find . -type d -empty -not -path "./.git/*")
for item in "${EMPTY_DIRS[@]}"
do
    echo ${item}
    curd=$(pwd)
    cd ${item}
    touch .empty
    cd ${curd}
done

tree .

exit $?
