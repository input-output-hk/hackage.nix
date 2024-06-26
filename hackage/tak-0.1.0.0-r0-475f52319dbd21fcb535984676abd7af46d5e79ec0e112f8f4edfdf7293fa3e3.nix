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
      identifier = { name = "tak"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "http://bitbucket.org/sffubs/tak";
      url = "";
      synopsis = "A library encoding the rules of Tak, and a playtak.com client.";
      description = "Tak is a new abstract strategy game, devised by James Earnest (of Cheapass\nGames), and Patrick Rothfuss, author of The Wise Man's Fear, where the game of\nTak was first mentioned.\nThis is a library which encodes the rules of Tak, provides a client for the\npopular playtak.com server, and contributes an AI tak bot for the same server.\nThis package provides 3 top level modules:\nTak encodes the rules of Tak, as a game tree, containing all possible moves.\nThis tree is extremely large, so be careful not to strictly evaluate it!\nPlayTak provides functions for maintaining a connection to playtak.com, receiving\nmessages, and sending commands. This could be used to implement a\nfully-fledged game client, or a playtak.com bot.\nPlayTakBot is a framework to make it easy to build a playtak.com bot. It will\nmaintain a connection, seek games, and create a game tree. The bot implementor\njust needs to provide functions to evaluate a game state, and choose the next\nplay from each game state.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }