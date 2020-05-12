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
      identifier = { name = "farmhash"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@abhinavg.net";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/farmhash";
      url = "";
      synopsis = "Fast hash functions.";
      description = "This package provides bindings to the farmhash library.\n\nFarmHash is a family of very fast hash functions (see\n<https://code.google.com/p/farmhash/>). They are not suitable for\ncryptography.\n\nThis package bundles the library with it so there are no external\ndependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test-farmhash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."farmhash" or (errorHandler.buildDepError "farmhash"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-farmhash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."farmhash" or (errorHandler.buildDepError "farmhash"))
            ];
          buildable = true;
          };
        };
      };
    }