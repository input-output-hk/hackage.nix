{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { ghcid = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "lnd-client"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Yolo <hello@coingaming.io>";
      maintainer = "21it <21it@tuta.io>, Mikhail Prushinskiy <mprushinsky@gmail.com>, Artem Markov <drownbes@gmail.com>";
      author = "21it <21it@tuta.io>, Mikhail Prushinskiy <mprushinsky@gmail.com>, Artem Markov <drownbes@gmail.com>";
      homepage = "https://github.com/coingaming/lnd-client#readme";
      url = "";
      synopsis = "Lightning Network Daemon (LND) client library for Haskell";
      description = "You can find documentation at <https://hackage.haskell.org/package/lnd-client>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."generic-pretty-instances" or (errorHandler.buildDepError "generic-pretty-instances"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
          (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
          (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."network-bitcoin" or (errorHandler.buildDepError "network-bitcoin"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."qrcode-core" or (errorHandler.buildDepError "qrcode-core"))
          (hsPkgs."qrcode-juicypixels" or (errorHandler.buildDepError "qrcode-juicypixels"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
        ];
        buildable = true;
      };
      sublibs = {
        "lnd-client-tkit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
            (hsPkgs."lnd-client" or (errorHandler.buildDepError "lnd-client"))
            (hsPkgs."network-bitcoin" or (errorHandler.buildDepError "network-bitcoin"))
          ];
          buildable = true;
        };
      };
      exes = {
        "lnd-client-prof" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lnd-client" or (errorHandler.buildDepError "lnd-client"))
            (hsPkgs."lnd-client".components.sublibs.lnd-client-tkit or (errorHandler.buildDepError "lnd-client:lnd-client-tkit"))
          ] ++ (if flags.ghcid
            then [
              (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
              (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
              (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
              (hsPkgs."async" or (errorHandler.buildDepError "async"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
              (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
              (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
              (hsPkgs."generic-pretty-instances" or (errorHandler.buildDepError "generic-pretty-instances"))
              (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
              (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
              (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
              (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
              (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
              (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
              (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
              (hsPkgs."network-bitcoin" or (errorHandler.buildDepError "network-bitcoin"))
              (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
              (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
              (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
              (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
              (hsPkgs."qrcode-core" or (errorHandler.buildDepError "qrcode-core"))
              (hsPkgs."qrcode-juicypixels" or (errorHandler.buildDepError "qrcode-juicypixels"))
              (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
              (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."text" or (errorHandler.buildDepError "text"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
              (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
              (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
              (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
              (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
              (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            ]
            else [
              (hsPkgs."lnd-client" or (errorHandler.buildDepError "lnd-client"))
              (hsPkgs."lnd-client".components.sublibs.lnd-client-tkit or (errorHandler.buildDepError "lnd-client:lnd-client-tkit"))
            ]);
          buildable = true;
        };
      };
      tests = {
        "lnd-client-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ] ++ (if flags.ghcid
            then [
              (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
              (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
              (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
              (hsPkgs."async" or (errorHandler.buildDepError "async"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
              (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
              (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
              (hsPkgs."generic-pretty-instances" or (errorHandler.buildDepError "generic-pretty-instances"))
              (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
              (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
              (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
              (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
              (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
              (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
              (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
              (hsPkgs."network-bitcoin" or (errorHandler.buildDepError "network-bitcoin"))
              (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
              (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
              (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
              (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
              (hsPkgs."qrcode-core" or (errorHandler.buildDepError "qrcode-core"))
              (hsPkgs."qrcode-juicypixels" or (errorHandler.buildDepError "qrcode-juicypixels"))
              (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
              (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."text" or (errorHandler.buildDepError "text"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
              (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
              (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
              (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
              (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
              (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            ]
            else [
              (hsPkgs."lnd-client" or (errorHandler.buildDepError "lnd-client"))
              (hsPkgs."lnd-client".components.sublibs.lnd-client-tkit or (errorHandler.buildDepError "lnd-client:lnd-client-tkit"))
            ]);
          buildable = true;
        };
      };
    };
  }