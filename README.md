hale-platform
=============

Build for the main target platform update site of HALE.

[![Dependency Status](https://www.versioneye.com/user/projects/535119fbfe0d07b0330003c5/badge.png)](https://www.versioneye.com/user/projects/535119fbfe0d07b0330003c5)


Notes
-----

* This repsitory is used to generate the official HALE target platform update site, updates to the update site itself are done manually.
* For testing additions or other changes to the target platform, build it locally using `./gradlew` or `gradlew.bat`. In the **hale-platform.target** file in [HALE](https://github.com/halestudio/hale), replace the target platform update site with your locally built update site directory in *build/updatesite* (for updates to the official update site, please create a pull request).
* Do not commit changes to **version-history.json** unless you did an update to the official HALE target platform update site and those changes are reflected in the file (otherwise just revert back to the state before the build: `git checkout version-history.json`).


p2 Repository Mirrors
---------------------

This build also includes the configuration for mirroring p2 repositories.

Repositories to mirror are configured in `p2.json`, each with name and URL.
The name should be compatible to file names and URIs.

The task `download-p2-<name>` fetches a p2 repository.

The task `upload-p2-<name>` uploads the fetched p2 repository to S3, given the corresponding credentials are configured.

The task `mirror-p2-<name>` does both in one after another.

### S3 credentials

Provide the S3 credentials either as Gradle Properties (`builds.aws.key` and `builds.aws.secret`) or as environment variables (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`). The `aws` CLI tool is required for the upload.
