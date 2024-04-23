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
      specVersion = "1.10";
      identifier = { name = "mnist-idx"; version = "0.1.3.2"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "blog@christof-schramm.net";
      author = "Christof Schramm";
      homepage = "https://christof-schramm.net";
      url = "";
      synopsis = "Read and write IDX data that is used in e.g. the MNIST database.";
      description = "This package provides functionality to read and write data in the IDX\nbinary format. This format is relevant for machine learning applications,\nlike the MNIST handwritten digit database.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mnist-idx" or (errorHandler.buildDepError "mnist-idx"))
          ];
          buildable = true;
        };
      };
    };
  }