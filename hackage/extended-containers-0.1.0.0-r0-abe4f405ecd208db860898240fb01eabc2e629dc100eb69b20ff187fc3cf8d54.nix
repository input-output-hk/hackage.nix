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
      identifier = { name = "extended-containers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 konsumlamm";
      maintainer = "konsumlamm@gmail.com";
      author = "konsumlamm";
      homepage = "https://github.com/konsumlamm/extended-containers#readme";
      url = "";
      synopsis = "Heap and Vector container types";
      description = "This package contains general-purpose implementations of various immutable container types\nincluding vectors, heaps and priority heaps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extended-containers" or (errorHandler.buildDepError "extended-containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }