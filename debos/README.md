# debos: https://github.com/go-debos/debos

## Environment
Ubuntu 18.04

### Dependencies
sudo apt install golang git libglib2.0-dev libostree-dev qemu-system-x86 qemu-user-static debootstrap systemd-container

libglib2.0-dev should come with build-essential

libostree-dev is for snapshotting maybe

No idea why qemu-system-x86 and qemu-user-static is used

debootstrap <-- needed

systemd-container <-- not sure why this is needed

### Installing debos
Assuming your GOPATH is set:

```
$ go get -d github.com/go-debos/debos/cmd/debos (also gets fakemachine)
$ cd github.com/go-debos/debos/cmd/debos
$ go build
$ ./debos --help

Copied this binary into a bin folder

### Running debos
- Requires root. This leads to a lot of permissions errors. I had to untar as root, chown -R and then tar again.
- Build recipes in yaml
    - has something called 'actions' which are build actions
    - the actions are restricted to debian
    - main ones are debootstrap and apt
- Size of tar.gz with python3.7 deps: 76M. Size of the image is 218MB vs 900MB python image currently on Dockerhub
- No snapshotting. You'll have to do this yourself after building.
- No source collection. You'll have to do this yourself, but this is reasonable as you can provide the exact debian bootstrap image.
- Really fast to get up and running
- See included yaml file for an example of creating a base OS with python3.7

### Extra filesystem fixups to run with Docker
- Untar the resulting tar.gz file as root into a working directory
- `cd workingdir` and chown -R yourusername:yourusername`
- `touch sbin/init` <-- Docker “injects” itself within containers by bind-mounting over /sbin/init
- Tar everything back up
- `docker import - debos < rootfs.tar`
- `docker run -it debos /bin/bash`
