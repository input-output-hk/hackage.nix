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
      identifier = { name = "ActionKid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "http://adit.io";
      url = "";
      synopsis = "An easy-to-use video game framework for Haskell.";
      description = "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/actionkid";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."gloss-juicy" or (errorHandler.buildDepError "gloss-juicy"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      exes = {
        "actionkid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."gloss-juicy" or (errorHandler.buildDepError "gloss-juicy"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-actionkid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ActionKid" or (errorHandler.buildDepError "ActionKid"))
            ];
          buildable = true;
          };
        };
      };
    }