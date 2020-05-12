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
      specVersion = "1.8";
      identifier = { name = "test-framework-skip"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Functions for conveniently marking some of the tests in a suite as being skipped.";
      description = "When tracking down a problem it can often be useful to temporarily disable\nsome or many of the tests in a suite so that one can focus on the problematic\ntests.  Rather than using a mess of comments, this module provides a\nfunction 'skip' (and a few variants) that causses a test or an entire test\nsuite to be skipped - specifically, they will still show up in the suite\nas being 'skipped', but they will not be run.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."test-framework-skip" or (errorHandler.buildDepError "test-framework-skip"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-smallcheck" or (errorHandler.buildDepError "test-framework-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }