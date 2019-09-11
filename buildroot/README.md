# buildroot: https://buildroot.org/

Typically used to build embedded systems, so tutorial will mostly talk about obtaining a kernel first. We don't need this.

Blog article circa 2013: https://blog.docker.com/2013/06/create-light-weight-docker-containers-buildroot/

## Environment
Ubuntu 18.04

### Dependencies
sudo apt install sed make binutils gcc g++ bash patch gzip bzip2 perl tar cpio python unzip rsync wget libncurses-dev

patch --> buildroot distributes patches on top of required projects needed to build a rootfs
libncurses-dev --> make menuconfig

The menuconfig may put off a regular app developer but if there was a recipe for "container" that would be useful.



### Installing buildroot
1. download tar archive from https://buildroot.org/download.html and untar
2. make menuconfig (I only changed the architecture)
3. make --> crashed my laptop

- Not really sure how to make this declarative. The .config file seems to have all the information.
- Buildroot does have a way of obtaining sources using make legal-info, but only for the projects it depends on. 

### Setting up for python development

