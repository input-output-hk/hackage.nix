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
      specVersion = "2.2";
      identifier = { name = "packed-data"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2025 Arthi-chaud";
      maintainer = "aj530@kent.ac.uk";
      author = "Arthi-chaud";
      homepage = "https://github.com/Arthi-chaud/packed-haskell#readme";
      url = "";
      synopsis = "";
      description = "Build, traverse and deserialise packed data in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-strict-builder" or (errorHandler.buildDepError "bytestring-strict-builder"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."packed-data" or (errorHandler.buildDepError "packed-data"))
          ];
          buildable = true;
        };
      };
      tests = {
        "packed-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-strict-builder" or (errorHandler.buildDepError "bytestring-strict-builder"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."packed-data" or (errorHandler.buildDepError "packed-data"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "ast-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."packed-data" or (errorHandler.buildDepError "packed-data"))
          ];
          buildable = true;
        };
        "bigjson-bench" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."packed-data" or (errorHandler.buildDepError "packed-data"))
          ];
          buildable = true;
        };
        "report" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
          buildable = true;
        };
        "tree-bench" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."listsafe" or (errorHandler.buildDepError "listsafe"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."packed-data" or (errorHandler.buildDepError "packed-data"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }