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
      identifier = { name = "largeword"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz <dominic@steinitz.org>";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Dominic Steinitz <dominic@steinitz.org>";
      homepage = "https://github.com/idontgetoutmuch/largeword";
      url = "";
      synopsis = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
      description = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."largeword" or (errorHandler.buildDepError "largeword"))
          ];
          buildable = true;
        };
      };
    };
  }