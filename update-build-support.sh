#!/bin/sh
#
# Updates the platform update site in hale-build-support with the
# built update site in build/updatesite.
#
# Assumes the hale-build-repository is present next to hale-platform.

#./gradlew && rm -R ../hale-build-support/updatesites/platform/* && cp -R ./build/updatesite/* ../hale-build-support/updatesites/platform/
rm -R -v ../hale-build-support/updatesites/platform/* && cp -R -v ./build/updatesite/* ../hale-build-support/updatesites/platform/
