# dotnet-builder

Docker image for .netcore >= 3.1 with nodejs, yarn, jq and more.

```sh
$ docker pull totallymoney/dotnet-builder:3.1
```

[dotnet-build docker Hub image page](https://hub.docker.com/repository/docker/totallymoney/dotnet-builder/general)

The intention is to track new [dotnetcore-sdk images](https://hub.docker.com/_/microsoft-dotnet-core-sdk/). When a new version of dotnet-core is available we can make release a new version of this image.

## Make a Release

To publish a new docker image tag you must tag the repo after you commit.

For example,
if we want to add a new utility, edit the Dockerfile,
commit, tag the repo then push including the tag.

```bash
$ git commit -am "Add new thing"
$ git tag 3.1.1
$ git push --tags
```

Docker Hub will automatically detect the new tag and begin building a new
image named after the tag. i.e. `totallymoney/dotnet-builder:3.1.1`

The build will soon be visible on the
[builds page](https://hub.docker.com/repository/docker/totallymoney/dotnet-builder/builds).
