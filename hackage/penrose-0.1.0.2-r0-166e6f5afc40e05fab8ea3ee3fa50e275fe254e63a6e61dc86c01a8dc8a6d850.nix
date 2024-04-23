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
      identifier = { name = "penrose"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "kqy@cs.cmu.edu";
      author = "team-penrose";
      homepage = "http://penrose.ink";
      url = "";
      synopsis = "A system that automatically visualize mathematics";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "penrose" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
      };
    };
  }