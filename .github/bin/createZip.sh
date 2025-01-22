#!/usr/bin/env bash
set -euo pipefail

ID="${1}"
VERSION="${2}"
ZIP_EXCLUDE="${3}"

ZIPNAME=$ID-$VERSION.zip
echo "zipname=$ZIPNAME"
zip -0qry "./$ZIPNAME" * -x .github "$ZIP_EXCLUDE" > /dev/null