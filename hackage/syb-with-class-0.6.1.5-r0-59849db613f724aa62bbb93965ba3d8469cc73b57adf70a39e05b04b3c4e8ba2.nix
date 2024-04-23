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
      specVersion = "1.6";
      identifier = { name = "syb-with-class"; version = "0.6.1.5"; };
      license = "BSD-3-Clause";
      copyright = "2004 - 2008 The University of Glasgow, CWI,\nSimon Peyton Jones, Ralf Laemmel,\nUlf Norell, Sean Seefried, Simon D. Foster,\nHAppS LLC\n2009 Andrea Vezzosi";
      maintainer = "sanzhiyan@gmail.com";
      author = "Simon Peyton Jones, Ralf Laemmel";
      homepage = "";
      url = "";
      synopsis = "Scrap Your Boilerplate With Class";
      description = "Classes, and Template Haskell code to generate instances, for the\nScrap Your Boilerplate With Class system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }