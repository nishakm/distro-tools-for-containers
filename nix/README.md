Pro: can run on macOS and Linux host


## Go image

`$ nix-build go-container.nix`
`$ docker-load < result`
`$ docker run -it go-image:latest /bin/go version`
`go: creating work dir: stat /tmp: no such file or directory`

369M tarball, but not ready to use...

## References

* [Using Nix to build Docker images](https://yann.hodique.info/blog/using-nix-to-build-docker-images/)
* [Cheap Docker images with Nix](http://lethalman.blogspot.com/2016/04/cheap-docker-images-with-nix_15.html)
