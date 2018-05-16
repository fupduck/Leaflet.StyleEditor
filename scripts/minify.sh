#!/bin/bash

npm install -g grunt

grunt

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git remote add origin https://${GITHUB_TOKEN}@github.com/fupduck/Leaflet.StyleEditor.git > /dev/null 2>&1

git add -u
git commit -m "minify css & js"

git push --quiet --set-upstream origin master
