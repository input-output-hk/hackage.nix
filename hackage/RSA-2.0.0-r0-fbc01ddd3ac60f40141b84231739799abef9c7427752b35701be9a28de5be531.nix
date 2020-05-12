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
    flags = { oldbase = false; buildtestexecutable = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "RSA"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.";
      description = "This library implements the RSA encryption and signature\nalgorithms for arbitrarily-sized ByteStrings. While the\nimplementations work, they are not necessarily the fastest ones\non the planet. Particularly key generation. The algorithms\nincluded are based of RFC 3447, or the Public-Key Cryptography\nStandard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."monadcryptorandom" or (errorHandler.buildDepError "monadcryptorandom"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          ];
        buildable = true;
        };
      exes = {
        "rsa_test" = {
          depends = [
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = if flags.buildtestexecutable then true else false;
          };
        };
      tests = {
        "test-RSA" = {
          depends = [
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = true;
          };
        };
      };
    }