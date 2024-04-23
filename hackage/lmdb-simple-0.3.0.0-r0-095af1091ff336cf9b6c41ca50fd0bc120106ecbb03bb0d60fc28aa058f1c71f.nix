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
      identifier = { name = "lmdb-simple"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2017 Robert Leslie";
      maintainer = "rob@mars.org";
      author = "Rob Leslie";
      homepage = "https://github.com/verement/lmdb-simple#readme";
      url = "";
      synopsis = "Simple API for LMDB";
      description = "This package provides a simple API for using the\nLightning Memory-mapped Database (LMDB).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."lmdb" or (errorHandler.buildDepError "lmdb"))
        ];
        buildable = true;
      };
      tests = {
        "sample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lmdb-simple" or (errorHandler.buildDepError "lmdb-simple"))
          ];
          buildable = true;
        };
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lmdb-simple" or (errorHandler.buildDepError "lmdb-simple"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."lmdb-simple" or (errorHandler.buildDepError "lmdb-simple"))
          ];
          buildable = true;
        };
      };
    };
  }