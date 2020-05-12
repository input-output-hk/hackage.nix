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
      skiptests = true;
      includemd5 = true;
      usebinary = true;
      quickcheck1 = false;
      oldbase = false;
      hasarbitraryword8 = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "RSA"; version = "1.0.6.1"; };
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
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          ]) ++ (pkgs.lib).optional (flags.usebinary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ (pkgs.lib).optional (flags.includemd5 && flags.usebinary) (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"));
        buildable = true;
        };
      exes = {
        "test_rsa" = {
          depends = (pkgs.lib).optionals (!flags.skiptests) (([
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ]) ++ (if flags.quickcheck1
            then [
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
              (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
              ]
            else [
              (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
              ] ++ [
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
              ]));
          buildable = if flags.skiptests then false else true;
          };
        };
      };
    }