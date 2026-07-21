#!/bin/bash
# Publish student APK for OTA + parent-web activation.
# Download URLs use branch **main** (see ConstVar.DEFAULT_KSP_DOWNLOAD / parent-web activation.ts).
# Pushing only to master leaves main on an old APK — activation will keep installing the old build.
set -euo pipefail
cp ../ksp/ksp/app/build/outputs/apk/release/app-release.apk   ./ksp/ksp.apk
cp ../ksp/ksp/ksp.version   ./ksp/ksp.version
cp ../ksp/ksp/parse.server  ./ksp/parse.server
git add ksp/ksp.apk ksp/ksp.version ksp/parse.server
git commit -sm "v$(head -n1 ksp/ksp.version)"
# Update both branches so raw.githubusercontent.com/.../main/... stays current.
#git push -u origin HEAD:master
git push -u origin HEAD:main
