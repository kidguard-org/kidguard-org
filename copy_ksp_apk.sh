#!/bin/bash
# Publish student APK for OTA + parent-web activation.
# Download URLs use branch **main** (see ConstVar.DEFAULT_KSP_DOWNLOAD / parent-web activation.ts).
# Pushing only to master leaves main on an old APK — activation will keep installing the old build.
set -euo pipefail
cp -rf ../ksp/ksp/release/*   ./ksp/
git add ksp/*
git commit -sm "v$(head -n1 ksp/ksp.version)"
git push -u origin HEAD:main
