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
      identifier = { name = "Ninjas"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Eric Mertens 2013";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "http://github.com/glguy/ninjas";
      url = "";
      synopsis = "Ninja game";
      description = "A multiplayer game where you blend in as an NPC while trying to visit all of the ancient pillars. Press 'A' to attack, 'S' to drop smoke, 'N' for new game, 'ESC' to quit, click with your mouse to move.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Ninjas" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."networked-game" or (errorHandler.buildDepError "networked-game"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }