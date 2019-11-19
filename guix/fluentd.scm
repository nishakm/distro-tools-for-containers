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
  (license #f))
