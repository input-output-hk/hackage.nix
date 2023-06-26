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
    flags = { use_crypton = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cryptostore"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Olivier Chéron";
      maintainer = "olivier.cheron@gmail.com";
      author = "Olivier Chéron";
      homepage = "https://github.com/ocheron/cryptostore";
      url = "";
      synopsis = "Serialization of cryptographic data types";
      description = "Haskell implementation of PKCS \\#8, PKCS \\#12 and CMS\n(Cryptographic Message Syntax).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
          ] ++ (if flags.use_crypton
          then [
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."crypton-x509" or (errorHandler.buildDepError "crypton-x509"))
            (hsPkgs."crypton-x509-validation" or (errorHandler.buildDepError "crypton-x509-validation"))
            ]
          else [
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            ]);
        buildable = true;
        };
      tests = {
        "test-cryptostore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."cryptostore" or (errorHandler.buildDepError "cryptostore"))
            ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
              (hsPkgs."crypton-x509" or (errorHandler.buildDepError "crypton-x509"))
              ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
              ]);
          buildable = true;
          };
        };
      };
    }