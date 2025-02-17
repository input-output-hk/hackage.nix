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
      specVersion = "1.18";
      identifier = { name = "sorted-list"; version = "0.2.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      author = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      homepage = "";
      url = "";
      synopsis = "Type-enforced sorted lists and related functions.";
      description = "Type-enforced sorted lists and related functions.\n\nThese are useful for:\n\n* Constraining the argument of a function to be a sorted list\nby stating in your type that the input list is a sorted list.\n\n* Avoiding sorting a list twice.\n\n* Creating a list that is sorted from the moment of its construction,\nso it doesn't have to be sorted later.\n\n* Performing list operations keeping the input list sorted.\n\n* Improving those list operations that can be\nbenefited from the ordering of its elements.\n\n* Creating infinite lists that are sorted!\n\n* And more!\n\nIf you are missing a feature, do not hesitate\nto ask by opening an issue at the bug-tracker.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "sorted-list-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sorted-list" or (errorHandler.buildDepError "sorted-list"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "sorted-list-map-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sorted-list" or (errorHandler.buildDepError "sorted-list"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }