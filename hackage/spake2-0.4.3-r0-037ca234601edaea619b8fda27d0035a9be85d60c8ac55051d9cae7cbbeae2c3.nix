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
      identifier = { name = "spake2"; version = "0.4.3"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Least Authority TFA GmbH";
      author = "Jonathan M. Lange <jml@mumak.net>";
      homepage = "https://github.com/LeastAuthority/haskell-spake2#readme";
      url = "";
      synopsis = "Implementation of the SPAKE2 Password-Authenticated Key Exchange algorithm";
      description = "This library implements the SPAKE2 password-authenticated key exchange\n(\"PAKE\") algorithm. This allows two parties, who share a weak password, to\nsafely derive a strong shared secret (and therefore build an\nencrypted+authenticated channel).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-spake2-interop-entrypoint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."spake2" or (errorHandler.buildDepError "spake2"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."spake2" or (errorHandler.buildDepError "spake2"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          ];
          buildable = true;
        };
      };
    };
  }