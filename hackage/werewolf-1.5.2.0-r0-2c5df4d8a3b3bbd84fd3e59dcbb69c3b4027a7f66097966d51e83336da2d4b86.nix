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
      identifier = { name = "werewolf"; version = "1.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hjwylde@gmail.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/hjwylde/werewolf";
      url = "";
      synopsis = "A game engine for playing werewolf within an arbitrary chat client";
      description = "A game engine for playing werewolf within an arbitrary chat client.\nWerewolf is a well known social party game, commonly also called Mafia.\nSee the <https://en.wikipedia.org/wiki/Mafia_(party_game) Wikipedia article> for a\nrundown on its gameplay and history.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "werewolf" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."werewolf" or (errorHandler.buildDepError "werewolf"))
            ];
          buildable = true;
          };
        };
      };
    }