# Yocto Project: https://www.yoctoproject.org

## Environment
Fedora on a VM with 4 cpu cores

## Dependencies

Install per the [reference manual](https://www.yoctoproject.org/docs/2.7.1/ref-manual/ref-manual.html#required-packages-for-the-build-host)

## Installing Yocto Project

OpenEmbedded/Yocto Project is isolated from the host system. So long as the dependencies are installed it will run from any filesystem location as a non-root user.

The easiest way to get OE + BitBake is to clone the Yocto Project's poky repository:

`$ git clone https://git.yoctoproject.org/git/poky.git`

Working from a release is recommended, at the time of writing the 2.7.1 release of the warrior branch is the latest:

```$ cd poky
$ git checkout yocto-2.7.1 -b tag-yocto-2.7.1```

We can now enter the OE/YP environment by sourcing the initialisation script:
`$ source oe-init-build-env`

Each time we want to re-enter the build environment we re-source the same script.


## Post-install configuration

All commands are run from the initialised environment in the build directory (which the script changes into during its work).

Add the meta-container layer from this repo:

`$ bitbake-layers add-layer /path/to/linux-distro-tools/yoctoproject/meta-container`

Edit the file `conf/local.conf` and add the following lines to the end:

```DISTRO = "poky-container"
MACHINE = "genericx86-64"
PACKAGE_CLASSES = "package-ipk"```

Furthermore it's _highly_ recommended, though optional, to configure your build to use the public mirror of [shared state]() objects to speed up the builds by downloading intermediate artefacts from the shared state mirror.

`SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.7.1/PATH;downloadfilename=PATH"`

## First build

Now we can build a minimal container image:

`$ bitbake container-image-base`

and load that into Docker with:

```#FIXME: deleting files is bad?
$ bunzip2 -d -f tmp/deploy/images/genericx86-64/container-image-base-genericx86-64-20191010085529.rootfs.tar.bz2
$ docker load -i tmp/deploy/images/genericx86-64/container-image-base-genericx86-64-20191010085529.rootfs.tar```
