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
      specVersion = "1.6";
      identifier = { name = "crypto-api-tests"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "http://trac.haskell.org/crypto-api/wiki";
      url = "";
      synopsis = "A test framework and KATs for cryptographic operations.";
      description = "A test framework for hash and cipher operations using\nthe crypto-api interface.  Known answer tests (KATs)\nfor common cryptographic algorithms are included.\nPatches welcome (both adding KATs for more algorithms\nor property tests for classes of algorithms).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }