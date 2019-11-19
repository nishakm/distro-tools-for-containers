(use-modules (guix packages)
	     (guix download)
	     (guix build-system ruby)
	     (guix licenses))

(define-public ruby-strptime
  (package
    (name "ruby-strptime")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "strptime" version))
        (sha256
          (base32
            "1yj5wwa7wbhgi7w8d9ihpzpf99niw956fhyxddhayj09fgmdcxd8"))))
    (build-system ruby-build-system)
    (synopsis
      "a fast strptime/strftime engine which uses VM.")
    (description
      "a fast strptime/strftime engine which uses VM.")
    (home-page "https://github.com/nurse/strptime")
    (license expat)))

(define-public ruby-sigdump
  (package
    (name "ruby-sigdump")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "sigdump" version))
        (sha256
          (base32
            "1mqf06iw7rymv54y7rgbmfi6ppddgjjmxzi3hrw658n1amp1gwhb"))))
    (build-system ruby-build-system)
    (synopsis
      "Setup signal handler which dumps backtrace of running threads and number of allocated objects per class. Require 'sigdump/setup', send SIGCONT, and see /tmp/sigdump-&lt;pid&gt;.log.")
    (description
      "Setup signal handler which dumps backtrace of running threads and number of allocated objects per class.  Require 'sigdump/setup', send SIGCONT, and see /tmp/sigdump-&lt;pid&gt;.log.")
    (home-page "https://github.com/frsyuki/sigdump")
    (license expat)))

(define-public ruby-serverengine
  (package
    (name "ruby-serverengine")
    (version "2.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "serverengine" version))
        (sha256
          (base32
            "10y535621y0kyn40bkcnl01zrsf3z4abf4mdl8m3fdcmj30mazlw"))))
    (build-system ruby-build-system)
    (propagated-inputs
      `(("ruby-sigdump" ,ruby-sigdump)))
    (synopsis
      "A framework to implement robust multiprocess servers like Unicorn")
    (description
      "This package provides a framework to implement robust multiprocess servers like Unicorn")
    (home-page
      "https://github.com/fluent/serverengine")
    (license asl2.0)))

(define-public ruby-msgpack
  (package
    (name "ruby-msgpack")
    (version "1.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "msgpack" version))
        (sha256
          (base32
            "1qr2mkm2i3m76zarvy7qgjl9596hmvjrg7x6w42vx8cfsbf5p0y1"))))
    (build-system ruby-build-system)
    (synopsis
      "MessagePack is a binary-based efficient object serialization library. It enables to exchange structured objects between many languages like JSON. But unlike JSON, it is very fast and small.")
    (description
      "MessagePack is a binary-based efficient object serialization library.  It enables to exchange structured objects between many languages like JSON.  But unlike JSON, it is very fast and small.")
    (home-page "http://msgpack.org/")
    (license asl2.0)))

(define-public ruby-dig-rb
  (package
    (name "ruby-dig-rb")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "dig_rb" version))
        (sha256
          (base32
            "12dbb1pl2vr9z7yy2zsbsjaj4hw89y56wll6kd8422mylmcw7bx4"))))
    (build-system ruby-build-system)
    (synopsis
      "Array/Hash/Struct#dig backfill for ruby")
    (description
      "Array/Hash/Struct#dig backfill for ruby")
    (home-page "https://github.com/jrochkind/dig_rb")
    (license expat)))

(define-public ruby-cool.io
  (package
    (name "ruby-cool.io")
    (version "1.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "cool.io" version))
        (sha256
          (base32
            "0l836z3qgrl5829q48qaz1zngqqxy2k0l61swqm0amhyfcgfbz1m"))))
    (build-system ruby-build-system)
    (synopsis
      "Cool.io provides a high performance event framework for Ruby which uses the libev C library")
    (description
      "Cool.io provides a high performance event framework for Ruby which uses the libev C library")
    (home-page "http://coolio.github.com")
    (license expat)))

(define-public ruby-fluentd
  (package
    (name "ruby-fluentd")
    (version "1.7.4")
    (source
      (origin
        (method url-fetch)
        (uri (rubygems-uri "fluentd" version))
        (sha256
          (base32
            "0iba6pf2dfvxbm5f4gvlgkfqdgl6chyszhvyg08q1dnmwn704a11"))))
    (build-system ruby-build-system)
    (propagated-inputs
      `(("ruby-cool.io" ,ruby-cool.io)
        ("ruby-dig-rb" ,ruby-dig-rb)
        ("ruby-http-parser.rb" ,ruby-http-parser.rb)
        ("ruby-msgpack" ,ruby-msgpack)
        ("ruby-serverengine" ,ruby-serverengine)
        ("ruby-sigdump" ,ruby-sigdump)
        ("ruby-strptime" ,ruby-strptime)
        ("ruby-tzinfo" ,ruby-tzinfo)
        ("ruby-tzinfo-data" ,ruby-tzinfo-data)
        ("ruby-yajl-ruby" ,ruby-yajl-ruby)))
    (synopsis
      "Fluentd is an open source data collector designed to scale and simplify log management. It can collect, process and ship many kinds of data in near real-time.")
    (description
      "Fluentd is an open source data collector designed to scale and simplify log management.  It can collect, process and ship many kinds of data in near real-time.")
    (home-page "https://www.fluentd.org/")
    (license asl2.0)))

