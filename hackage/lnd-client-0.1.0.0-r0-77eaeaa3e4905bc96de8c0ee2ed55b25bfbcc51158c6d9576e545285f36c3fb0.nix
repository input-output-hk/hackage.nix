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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "lnd-client"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Coingaming <hello@coingaming.io>";
      maintainer = "Mikhail Prushinskiy <mprushinsky@gmail.com>, Ilja Tkachuk <tkachuk.labs@gmail.com>, Artem Markov <drownbes@gmail.com>";
      author = "Mikhail Prushinskiy <mprushinsky@gmail.com>";
      homepage = "https://github.com/coingaming/lnd-client#readme";
      url = "";
      synopsis = "Lightning Network Daemon (LND) client library for Haskell";
      description = "You can find documentation at <https://hackage.haskell.org/package/lnd-client>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
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
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
        ];
        buildable = true;
      };
      tests = {
        "lnd-client-test" = {
          depends = [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
            (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
            (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
            (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
            (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
            (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
            (hsPkgs."lnd-client" or (errorHandler.buildDepError "lnd-client"))
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
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          ];
          buildable = true;
        };
      };
    };
  }