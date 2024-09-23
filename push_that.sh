#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Error: No commit message provided."
  exit 1
fi

git add .
git commit -m "$1"

if [ $? -eq 0 ]; then
  git push
else
  echo "Error during commit. Aborting push."
  exit 1
fi
