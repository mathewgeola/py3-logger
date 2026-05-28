#!/bin/bash

read -r VERSION < ../VERSION

VERSION=$(echo "$VERSION" | xargs)

uv version "$VERSION" --project .. --no-sync

BASE=$(git merge-base HEAD origin/main)

git reset "$BASE"

git add -A

git commit -m "version = \"v$VERSION\""