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
    flags = {
      test = false;
      includemd5 = true;
      usebinary = true;
      oldbase = false;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "RSA"; version = "1.2.2.0"; };
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
        depends = (([
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."monadcryptorandom" or (errorHandler.buildDepError "monadcryptorandom"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
        ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
        ]) ++ pkgs.lib.optional (flags.usebinary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ pkgs.lib.optional (flags.includemd5 && flags.usebinary) (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"));
        buildable = true;
      };
      exes = {
        "test_rsa" = {
          depends = pkgs.lib.optionals (flags.test) ([
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          ]);
          buildable = if flags.test then true else false;
        };
      };
    };
  }