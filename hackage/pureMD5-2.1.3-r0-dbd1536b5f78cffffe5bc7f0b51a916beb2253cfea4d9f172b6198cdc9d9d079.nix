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
    flags = { test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pureMD5"; version = "2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell-only implementation of the MD5 digest (hash) algorithm.";
      description = "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports\nthe crypto-api class interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "MD5Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."crypto-api-tests" or (errorHandler.buildDepError "crypto-api-tests"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }