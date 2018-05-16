#!/bin/bash

grunt
git add -u
git commit -m "minify css & js"
git push
