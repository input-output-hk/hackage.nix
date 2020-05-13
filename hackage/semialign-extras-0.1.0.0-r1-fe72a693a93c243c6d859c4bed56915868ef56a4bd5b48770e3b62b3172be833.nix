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
      identifier = { name = "semialign-extras"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "jack.kelly@data61.csiro.au";
      author = "Jack Kelly";
      homepage = "";
      url = "";
      synopsis = "Extra functions for working with Semialigns";
      description = "The 'Semialign' typeclass lets us line up two structures of the\nsame type. By combining this with the classes from the\n\"witherable\" package, we can derive a number of useful\ndiff \\/ patch \\/ merge-style operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."semialign-indexed" or (errorHandler.buildDepError "semialign-indexed"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }