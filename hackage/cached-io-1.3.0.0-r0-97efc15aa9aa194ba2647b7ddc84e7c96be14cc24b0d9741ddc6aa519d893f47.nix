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
    flags = { developer = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "cached-io"; version = "1.3.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Bellroy Tech Team <haskell@bellroy.com>";
      author = "SumAll, Inc.";
      homepage = "";
      url = "";
      synopsis = "A simple library to cache IO actions";
      description = "Provides functions that convert an IO action into a cached one by storing the\noriginal result for a period of time, or until some condition is met.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "test-cachedIO" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cached-io" or (errorHandler.buildDepError "cached-io"))
            ];
          buildable = true;
          };
        };
      };
    }