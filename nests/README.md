"nest" container images
=======================

This directory contains subirectories for building different container images.
These container images are for different Linux distros that can serve as
reference platforms with dependencies installed for tskit-dev project
development.

These container images are enhanced to be conveniently used as "nest
containers" as used by the
[`cnest` and `create-nest` scripts](https://github.com/castedo/cnest).
These are helper scripts for calling
[`podman` and `buildah`](https://podman.io/).

You will also want to be familiar with basic [`podman`](https://podman.io/)
usage to list and remove containers and images, etc... `podman` is the
replacement for `docker` in RHEL 8 and Fedora. One of its benefits is it
can be run without root privilege.

Loosely speaking, using `cnest` and `create-nest`, enables workflows
similar to `virtualenv` and `conda`, but with near total isolation of the
development environment.

The image [ubuntu-20.04-mspdev](ubuntu-20.04-mspdev) has been built and pushed
to
[docker.io/castedo/tskit-nests](https://hub.docker.com/r/castedo/tskit-nests/tags).

`create-nest` uses profile files to determine what home directoties and other
features of the host will be shared with the container. Here's an example for
basic development:
```
REPOSITORY=docker.io/castedo/tskit-nests
CREATE_OPTIONS="
    --volume $HOME/.ssh:$HOME/.ssh
    --volume $HOME/shr:$HOME/shr
    --volume $HOME/Dropbox:$HOME/Dropbox
    --volume $HOME/.vim:$HOME/.vim
    --volume $HOME/.vimrc:$HOME/.vimrc
    --volume $HOME/.gitconfig:$HOME/.gitconfig
    --volume $HOME/.sudo_as_admin_successful:$HOME/.sudo_as_admin_successful
    $CNEST_SHARE_NETWORK
    $CNEST_X11
    $CNEST_SESSION_BUS
    --security-opt=label=disable
    --pid=host
    --cap-add=SYS_PTRACE
"
```
which you save as `~/.config/cnest/profiles/dev`.

Here's an example workflow. You do this once:
```
create-nest dev ubuntu-20.04-mspdev msp
```
which is analogous to creating an environment in `virtualenv` or `conda`.
Then when ever you want to use that container run
```
cnest msp
```
which is analogous to activating an environment in `virtualenv` or `conda`
named `msp`.

