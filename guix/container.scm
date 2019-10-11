;; build with $ guix system docker-image container.scm
;; then load into docker with $ image_id=`docker load < guix-system-docker-image.tar.gz`
;; create a container from the image with $ docker create $image_id
(use-modules (gnu))
(use-service-modules ssh)

(operating-system
 (host-name "contained")
 (timezone "Europe/London")
 (locale "en_GB.utf8")
 ;; unused
 (bootloader (bootloader-configuration
	      (bootloader grub-efi-bootloader)
	      (target "/boot/efi")))
 ;; dummy fs
 (file-systems (cons (file-system
		      (mount-point "/")
		      (device "dummy")
		      (type "dummy"))
		     %base-file-systems))
 (services (cons* (service openssh-service-type)
		  %base-services)))
