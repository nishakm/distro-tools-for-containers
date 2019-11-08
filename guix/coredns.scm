(use-modules (guix packages)
	     (guix download)
	     (guix build-system go)
	     (guix licenses))

(package
  (name "coredns")
  (version "1.6.4")
  (source
    (origin
      (method url-fetch)
      (uri (string-append
             "https://github.com/coredns/coredns/archive/v"
             version
             ".tar.gz"))
      (sha256
        (base32
          "0xsp4rlbz0kjqi80axzx2q8f1ywk14kx7gg6xzvqz1q5qlv06sh8"))))
  (build-system go-build-system)
  (home-page "https://coredns.io")
  (synopsis "CoreDNS: DNS and Service Discovery")
  (description
    "CoreDNS is a DNS server. It chains plugins. Each plugin performs a DNS function.")
  (license asl2.0))
