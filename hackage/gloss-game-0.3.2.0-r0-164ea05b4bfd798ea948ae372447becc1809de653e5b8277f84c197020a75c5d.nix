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
      identifier = { name = "gloss-game"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/mchakravarty/gloss-game";
      url = "";
      synopsis = "Gloss wrapper that simplifies writing games";
      description = "The game interface of the basic Gloss library combines frame-based rendering with user input into a simple 2D game API.\nGloss.Game improves that API to make common tasks in game programming, such as, on demand image loading, animations, and\nevent handler chains more convenient.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gloss-juicy" or (errorHandler.buildDepError "gloss-juicy"))
          ];
        buildable = true;
        };
      };
    }