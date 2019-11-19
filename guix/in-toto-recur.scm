(use-modules (guix packages)
	     (guix download)
	     (guix build-system python)
	     (guix licenses))

(define-public python-subprocess32
  (package
    (name "python-subprocess32")
    (version "3.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "subprocess32" version))
        (sha256
          (base32
            "17f7mvwx2271s1wrl0qac3wjqqnrqag866zs3qc8v5wp0k43fagb"))))
    (build-system python-build-system)
    (home-page
      "https://github.com/google/python-subprocess32")
    (synopsis
      "A backport of the subprocess module from Python 3 for use on 2.x.")
    (description
      "A backport of the subprocess module from Python 3 for use on 2.x.")
    (license #f)))

(define-public python-pathspec
  (package
    (name "python-pathspec")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "pathspec" version))
        (sha256
          (base32
            "0p7ab7jx3wgg7xdj2q8yk99cz3xv2a5p1r8q9kfylnvqn34cr1g2"))))
    (build-system python-build-system)
    (home-page
      "https://github.com/cpburnz/python-path-specification")
    (synopsis
      "Utility library for gitignore style pattern matching of file paths.")
    (description
      "Utility library for gitignore style pattern matching of file paths.")
    (license #f)))

(define-public python-securesystemslib
  (package
    (name "python-securesystemslib")
    (version "0.12.1")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "securesystemslib" version))
        (sha256
          (base32
            "0w7fkwx34s0spf3wzg4r1l3i0dn3jvfa8jrxbxa66mzjdj53l5by"))))
    (build-system python-build-system)
    (propagated-inputs
      `(("python-colorama" ,python-colorama)
        ("python-dateutil" ,python-dateutil)
        ("python-six" ,python-six)
        ("python-subprocess32" ,python-subprocess32)))
    (home-page
      "https://github.com/secure-systems-lab/securesystemslib")
    (synopsis
      "A library that provides cryptographic and general-purpose routines for Secure Systems Lab projects at NYU")
    (description
      "A library that provides cryptographic and general-purpose routines for Secure Systems Lab projects at NYU")
    (license #f)))

(define-public python-in-toto
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
    (license #f)))

