SUMMARY = "A base container image"

IMAGE_FSTYPES = "container"

inherit image

#IMAGE_TYPEDEP_container += "ext4"

IMAGE_FEATURES = ""
IMAGE_LINGUAS = ""
NO_RECOMMENDATIONS = "1"

IMAGE_INSTALL = " \
	      base-files \
	      base-passwd \
	      netbase \
"
