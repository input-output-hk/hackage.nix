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
      specVersion = "2.0";
      identifier = { name = "extended-containers"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2021 konsumlamm";
      maintainer = "konsumlamm@gmail.com";
      author = "konsumlamm";
      homepage = "https://github.com/konsumlamm/extended-containers";
      url = "";
      synopsis = "Heap and Vector container types";
      description = "This package contains general-purpose implementations of various immutable container types\nincluding vectors, heaps and priority heaps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
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