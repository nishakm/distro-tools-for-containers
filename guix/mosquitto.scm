(package
  (name "mosquitto")
  (version "1.6.7")
  (source
    (origin
      (method url-fetch)
      (uri (string-append
             "https://mosquitto.org/files/source/mosquitto-"
             version
             ".tar.gz"))
      (sha256
        (base32
          "13hp3n9ijkvx5xwbjmpdglsmhc3dcvcasvwq53izwlyhpf7imlxw"))))
  (build-system cmake-build-system)
  (home-page "https://mosquitto.org")
  (synopsis
    "An open source message broker that implements the MQTT protocol")
  (description
    "An open source message broker that implements the MQTT protocol")
  (license epl1.0))
