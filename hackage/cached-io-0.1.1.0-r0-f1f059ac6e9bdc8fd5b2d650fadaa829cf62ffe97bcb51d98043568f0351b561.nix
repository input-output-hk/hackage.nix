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
      specVersion = "1.10";
      identifier = { name = "cached-io"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "eglassercamp@sumall.com";
      author = "SumAll, Inc.";
      homepage = "";
      url = "";
      synopsis = "A simple library to cache a single IO action with timeout";
      description = "A simple library that caches an expensive IO action. This produces an IO\naction that, when run, either runs the expensive action and saves its result\nfor a period of time, or re-uses the saved value. This amortizes the cost of\nthe expensive IO action without a lot of complexity.\nSee the test program for an example of how to use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "test-cachedIO" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }