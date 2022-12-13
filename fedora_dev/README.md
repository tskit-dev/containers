# A Linux development environment

This Dockerfile sets up a `tskit` development environment
based on Fedora Linux 37.
This is an opinionated choice -- Fedora's packages are more
up-to-date than Ubuntu.

The image installs all required system dependencies plus
a few others for convenience.

## Use

### Build the image locally

```sh
podman build . -t tskit_dev
```

### Create a shell environment

```sh
distrobox create -i localhost/tskit_dev
```

### Enter the enviroment

```sh
distrobox enter tskit_dev
```

### Bootstrap the development environment

Clone tskit, build a virtual environment,
install Python dependencies, and setup pre-commit:

```
sh /bootstrap/bootstrap_devel.sh
```

### Get ready to work

```
source venv/bin/activate
```
