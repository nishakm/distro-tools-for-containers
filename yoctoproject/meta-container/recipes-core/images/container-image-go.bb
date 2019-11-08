SUMMARY = "A Go container image"

require recipes-core/images/container-image-base.bb

IMAGE_INSTALL_append += "
              go \
"
