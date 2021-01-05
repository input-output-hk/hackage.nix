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
      specVersion = "1.9.2";
      identifier = { name = "haskoin-script"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Philippe Laprade";
      author = "Philippe Laprade";
      homepage = "http://github.com/plaprade/haskoin-script";
      url = "";
      synopsis = "Implementation of Bitcoin script parsing and evaluation";
      description = "This package provides functions for parsing and evaluating bitcoin\ntransaction scripts. Data types are provided for building and\ndeconstructing all of the standard input and output script types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskoin-protocol" or (errorHandler.buildDepError "haskoin-protocol"))
          (hsPkgs."haskoin-crypto" or (errorHandler.buildDepError "haskoin-crypto"))
          (hsPkgs."haskoin-util" or (errorHandler.buildDepError "haskoin-util"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "test-haskoin-script" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskoin-protocol" or (errorHandler.buildDepError "haskoin-protocol"))
            (hsPkgs."haskoin-crypto" or (errorHandler.buildDepError "haskoin-crypto"))
            (hsPkgs."haskoin-util" or (errorHandler.buildDepError "haskoin-util"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }