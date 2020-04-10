# dotnet-builder

Docker image for .netcore >= 3.1 with nodejs, yarn, jq and more.

[Docker Hub image page](https://hub.docker.com/repository/docker/totallymoney/dotnet-builder/general)

## Make a Release

Edit the Dockerfile as required and commit changes to master.

To publish a new docker image tag you must tag the repo after your commit.

For example, if/when .netcore 3.2 is released and we wish to use it,
after updating the source image in the dockerfile, commit changes, then
tag the repo:

`$ git tag 3.2`

Then push the commit including the tag.

`$ git push --tags`

Docker Hub will automatically detect the new tag and begin building a new
image named after the tag.

The build will soon be visible on the
[builds page](https://hub.docker.com/repository/docker/totallymoney/dotnet-builder/builds).
