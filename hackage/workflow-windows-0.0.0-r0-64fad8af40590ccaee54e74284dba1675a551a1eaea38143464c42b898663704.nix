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
      identifier = { name = "workflow-windows"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-windows#readme";
      url = "";
      synopsis = "Automate keyboard/mouse/clipboard/application interaction.";
      description = "see http://github.com/sboosali/workflow-windows#readme for\ndocumentation and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."workflow-types" or (errorHandler.buildDepError "workflow-types"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          ];
        buildable = if !system.isWindows then false else true;
        };
      exes = {
        "workflow-windows-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-windows" or (errorHandler.buildDepError "workflow-windows"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-windows" or (errorHandler.buildDepError "workflow-windows"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "unittest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-windows" or (errorHandler.buildDepError "workflow-windows"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }