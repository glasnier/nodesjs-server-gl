#!/bin/bash

set -e

DIR=$(pwd)

mkdir -p ${DIR} api/{views,models,controllers} bin/www documenation encryption public/{images,javascripts,stylesheets}

touch .gitignore app_server.js INSTALL LICENSE Makefile  package.json README.md

exit $?
