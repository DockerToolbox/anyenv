<p align="center">
    <a href="https://github.com/DockerToolbox/">
        <img src="https://cdn.wolfsoftware.com/assets/images/github/organisations/dockertoolbox/black-and-white-circle-256.png" alt="DockerToolbox logo" />
    </a>
    <br />
    <a href="https://github.com/DockerToolbox/anyenv/actions/workflows/pipeline.yml">
        <img src="https://img.shields.io/github/workflow/status/DockerToolbox/anyenv/pipeline/master?style=for-the-badge" alt="Github Build Status">
    </a>
    <a href="https://github.com/DockerToolbox/anyenv/releases/latest">
        <img src="https://img.shields.io/github/v/release/DockerToolbox/anyenv?color=blue&label=Latest%20Release&style=for-the-badge" alt="Release">
    </a>
    <a href="https://github.com/DockerToolbox/anyenv/releases/latest">
        <img src="https://img.shields.io/github/commits-since/DockerToolbox/anyenv/latest.svg?color=blue&style=for-the-badge" alt="Commits since release">
    </a>
    <br />
    <a href=".github/CODE_OF_CONDUCT.md">
        <img src="https://img.shields.io/badge/Code%20of%20Conduct-blue?style=for-the-badge" />
    </a>
    <a href=".github/CONTRIBUTING.md">
        <img src="https://img.shields.io/badge/Contributing-blue?style=for-the-badge" />
    </a>
    <a href=".github/SECURITY.md">
        <img src="https://img.shields.io/badge/Report%20Security%20Concern-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DockerToolbox/anyenv/issues">
        <img src="https://img.shields.io/badge/Get%20Support-blue?style=for-the-badge" />
    </a>
    <br />
    <a href="https://wolfsoftware.com/">
        <img src="https://img.shields.io/badge/Created%20by%20Wolf%20Software-blue?style=for-the-badge" />
    </a>
</p>

## Overview

This is a selection of docker containers pre-installed with [anyenv](https://github.com/anyenv/anyenv). This allows for the simple installation of a large number of **env type environments. 

These containers are also used as the base layer for many other containers that we publish.

* [goenv](https://github.com/DockerToolbox/goenv)
* [pyenv](https://github.com/DockerToolbox/pyenv)
* [rbenv](https://github.com/DockerToolbox/rbenv)
* [tfenv](https://github.com/DockerToolbox/tfenv)

For more information relating to what it included within the containers please refer to the individual Dockerfiles or the [packages](Packages/packages.cfg) configuration file.

## Supported Operating Systems

| Operating System Version       | Dockerfile                                           | Docker Hub Repo                                                                                   | Docker Hub Tags        |
| ------------------------------ | ---------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ---------------------- |
| Alpine 3.11                    | [Dockerfile](Dockerfiles/alpine/3.11/Dockerfile)     | [wolfsoftwareltd/anyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/anyenv-alpine)           | 3.11                   |
| Alpine 3.12                    | [Dockerfile](Dockerfiles/alpine/3.12/Dockerfile)     | [wolfsoftwareltd/anyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/anyenv-alpine)           | 3.12                   |
| Alpine 3.13                    | [Dockerfile](Dockerfiles/alpine/3.13/Dockerfile)     | [wolfsoftwareltd/anyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/anyenv-alpine)           | 3.13                   |
| Alpine 3.14                    | [Dockerfile](Dockerfiles/alpine/3.14/Dockerfile)     | [wolfsoftwareltd/anyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/anyenv-alpine)           | 3.14, latest           |
| Amazon Linux 1                 | [Dockerfile](Dockerfiles/amazonlinux/1/Dockerfile)   | [wolfsoftwareltd/anyenv-amazonlinux](https://hub.docker.com/r/wolfsoftwareltd/anyenv-amazonlinux) | 1                      |
| Amazon Linux 2                 | [Dockerfile](Dockerfiles/amazonlinux/2/Dockerfile)   | [wolfsoftwareltd/anyenv-amazonlinux](https://hub.docker.com/r/wolfsoftwareltd/anyenv-amazonlinux) | 2, latest              |
| Centos 7                       | [Dockerfile](Dockerfiles/centos/7/Dockerfile)        | [wolfsoftwareltd/anyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/anyenv-centos)           | 7,                     |
| Centos 8                       | [Dockerfile](Dockerfiles/centos/8/Dockerfile)        | [wolfsoftwareltd/anyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/anyenv-centos)           | 8, latest              |
| Debian 9 (Stretch)             | [Dockerfile](Dockerfiles/debian/9/Dockerfile)        | [wolfsoftwareltd/anyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/anyenv-debian)           | 9, stretch             |
| Debian 9 Slim (Stretch Slim)   | [Dockerfile](Dockerfiles/debian/9-slim/Dockerfile)   | [wolfsoftwareltd/anyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/anyenv-debian)           | 9-slim, stretch-slim   |
| Debian 10 (Buster)             | [Dockerfile](Dockerfiles/debian/10/Dockerfile)       | [wolfsoftwareltd/anyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/anyenv-debian)           | 10, buster             |
| Debian 10 Slim (Buster Slim)   | [Dockerfile](Dockerfiles/debian/10-slim/Dockerfile)  | [wolfsoftwareltd/anyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/anyenv-debian)           | 10-slim, buster-slim   |
| Debian 11 (Bullseye)           | [Dockerfile](Dockerfiles/debian/11/Dockerfile)       | [wolfsoftwareltd/anyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/anyenv-centos)           | 11, bullseye, latest   |
| Debian 11 Slim (Bullseye Slim) | [Dockerfile](Dockerfiles/debian/11-slim/Dockerfile)  | [wolfsoftwareltd/anyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/anyenv-debian)           | 11-slim, bullseye-slim |
| Debian 12 (Bookworm)           | [Dockerfile](Dockerfiles/debian/12/Dockerfile)       | [wolfsoftwareltd/anyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/anyenv-centos)           | 12, bookworm           |
| Debian 12 Slim (Bookworm Slim) | [Dockerfile](Dockerfiles/debian/12-slim/Dockerfile)  | [wolfsoftwareltd/anyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/anyenv-debian)           | 12-slim, bookworm-slim |
| Ubuntu 14.04 (Trusty Tahr)     | [Dockerfile](Dockerfiles/ubuntu/14.04/Dockerfile)    | [wolfsoftwareltd/anyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/anyenv-ubuntu)           | 14.04, trusty          |
| Ubuntu 16.04 (Xenial Xerus)    | [Dockerfile](Dockerfiles/ubuntu/16.04/Dockerfile)    | [wolfsoftwareltd/anyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/anyenv-ubuntu)           | 16.04, xenial          |
| Ubuntu 18.04 (Bionic Beaver)   | [Dockerfile](Dockerfiles/ubuntu/18.04/Dockerfile)    | [wolfsoftwareltd/anyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/anyenv-ubuntu)           | 18.04, bionic          |
| Ubuntu 20.04 (Focal Fossa)     | [Dockerfile](Dockerfiles/ubuntu/20.04/Dockerfile)    | [wolfsoftwareltd/anyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/anyenv-ubuntu)           | 20.04, focal, latest   |

## Automated Builds

The containers are automatically generated, built and published to DockerHub weekly (Mondays 2am) so the above Dockerfiles might not 100% reflect what has been published as they are only correct at the point of publishing to GitHub.

## Naming convention

### Local containers

```
anyenv-<os>-<version> e.g. anyenv-debian-10
```

### Published containers

```
wolfsoftwareltd/anyenv-<os>:<version> e.g. wolfsoftwareltd/anyenv-debian:10
```

## Development

We do include Dockerfiles with the repository but these are only correct at the point of publishing to GitHub, they can regenerated dynamically when required. We supply a helper script to do a lot of the heavy listing. The helper script is called `manage-all.sh` and can be from any level of the directory tree and is recursive.

> If you are in the top level directory you will need to use `manage.sh` instead of `manage-all.sh`

### Generate Dockerfiles

```
./manage-all.sh generate
```

### Build Containers

```
./manage-all.sh build [clean]
```

### Scan Containers

```
./manage-all.sh scan         
```

### Publish Containers

```
./manage-all.sh publish
```

If you want to publish the containers you will need to update the [utils.sh](Scripts/utils.sh#L5) script and change the following line.

```
DOCKER_HUB_ORG='wolfsoftwareltd'
```
