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
      identifier = { name = "not-gloss-examples"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "examples for not-gloss";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "not-gloss-display" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "not-gloss-animate" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "not-gloss-simulate" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "not-gloss-game" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }