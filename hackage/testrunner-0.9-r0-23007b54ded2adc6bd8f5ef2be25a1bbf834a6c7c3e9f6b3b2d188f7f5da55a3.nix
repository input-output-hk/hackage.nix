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
      specVersion = "1.2";
      identifier = { name = "testrunner"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Reinier Lamers <tux_rocker@reinier.de>";
      author = "Reinier Lamers <tux_rocker@reinier.de>";
      homepage = "";
      url = "";
      synopsis = "Easy unit test driver framework";
      description = "testrunner is a framework to run unit tests. It has the\nfollowing distinguishing features:\n* It can run unit tests in parallel.\n* It can run QuickCheck and HUnit tests as well as simple\nboolean expressions.\n* It comes with a ready-made main function for your unit test\nexecutable.\n* This main function recognizes command-line arguments to select\ntests by name and replay QuickCheck tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }