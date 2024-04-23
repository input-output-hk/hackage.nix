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
      identifier = { name = "HangmanAscii"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vahid.mardani@gmail.com";
      author = "pylover";
      homepage = "https://github.com/pylover/hangman-ascii";
      url = "";
      synopsis = "Yet another Hangman game.";
      description = "Another command line implementation of the classic\nhangman game with ASCII shape and anumation. after\ninstallation with cabal install, execute hangman-ascii\nto run the game.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hangman-ascii" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }