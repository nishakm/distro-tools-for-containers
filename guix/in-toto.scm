(use-modules (guix packages)
	     (guix download)
	     (guix build-system python)
	     (guix licenses))

(package
  (name "python-in-toto")
  (version "0.4.1")
  (source
    (origin
      (method url-fetch)
      (uri (pypi-uri "in-toto" version))
      (sha256
        (base32
          "1rkqf05vjf04fc5ghivcw7pkx9mip7i7xmilkzm69apgi931hmm6"))))
  (build-system python-build-system)
  (propagated-inputs
    `(("python-attrs" ,python-attrs)
      ("python-dateutil" ,python-dateutil)
      ("python-iso8601" ,python-iso8601)
      ("python-pathspec" ,python-pathspec)
      ("python-securesystemslib"
       ,python-securesystemslib)
      ("python-six" ,python-six)
      ("python-subprocess32" ,python-subprocess32)))
  (home-page "https://in-toto.io")
  (synopsis
    "A framework to define and secure the integrity of software supply chains")
  (description
    "A framework to define and secure the integrity of software supply chains")
  (license #f))
