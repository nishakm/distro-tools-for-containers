;; build with $ guix system docker-image container.scm
;; then load into docker with $ image_id=`docker load < guix-system-docker-image.tar.gz`
;; create a container from the image with $ docker create $image_id
(use-modules (gnu)
             (guix packages))
(use-package-modules golang)

(operating-system
 (host-name "contained")
 (timezone "Europe/London")
 (locale "en_GB.utf8")
 ;; FIXME: this is unused, can we remove?
 (bootloader (bootloader-configuration
             (bootloader grub-efi-bootloader)
             (target "/boot/efi")))
 ;; dummy fs
 (file-systems (cons (file-system
                      (mount-point "/")
                      (device "dummy")
                      (type "dummy"))
                     %base-file-systems))

 (packages (append
            (list
             go
             )
            %base-packages))
 )
