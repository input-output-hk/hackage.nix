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
      identifier = { name = "hspec-meta"; version = "1.4.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012 Trystan Spangler, (c) 2011-2012 Simon Hengel, (c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.com/";
      url = "";
      synopsis = "A version of Hspec which is used to test Hspec itself";
      description = "A stable version of Hspec which is used to test the\nin-development version of Hspec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          ];
        buildable = true;
        };
      exes = {
        "hspec-meta-discover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }