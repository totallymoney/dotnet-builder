# dotnet-builder

Docker image for .netcore >= 8.0 with nodejs, yarn, jq and more.

```sh
$ docker pull totallymoney/dotnet-builder:net8-node20
```

[dotnet-build docker Hub image page](https://hub.docker.com/repository/docker/totallymoney/dotnet-builder/general)

The intention is to track new [dotnet-sdk images](https://hub.docker.com/_/microsoft-dotnet-sdk/). When a new version of dotnet is available we can make release a new version of this image.

## Make a Release

To publish a new docker image tag you must tag the repo after you commit.

For example,
if we want to update nodejs, edit the Dockerfile,
commit, tag the repo then push including the tag.

```bash
$ git commit -am "Use nodejs version 18"
$ git push
$ git tag net6-node18
$ git push --tags
```

Docker Hub will automatically detect the new tag and begin building a new
image named after the tag. i.e. `totallymoney/dotnet-builder:net6-node18`

The build will soon be visible on the
[builds page](https://hub.docker.com/repository/docker/totallymoney/dotnet-builder/builds).


## Make a Multi-Arch Release

The automatic docker-hub image builder will only build amd64 images. To build a multi arch release you will need to do that manually.

On a mac M1 the following will do it:

First you'll have to remove `openjdk-11-jdk` from the docker file. It's a very old version of openjdk, and not supported on arm.

Now we'll need to create a container to build images within. I believe you need this for qemu to kick in and build the different archs. It's slow, but it works.

```bash
docker buildx create --name container --driver=docker-container
```

Then following will build a multiarch image, and push that change to docker-hub.

```bash
docker buildx build --platform linux/arm64,linux/amd64 --tag totallymoney/dotnet-builder-multiarch:net8-node20 --builder=container --push .
```