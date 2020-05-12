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
      identifier = { name = "Nomyx"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "";
      url = "";
      synopsis = "A Nomic game in haskell, featuring automatic, machine-executed rules written by the players";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed! The original (paper) game: www.nomic.net";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Nomyx" = {
          depends = [
            (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
            (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."Nomyx-Rules" or (errorHandler.buildDepError "Nomyx-Rules"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hint-server" or (errorHandler.buildDepError "hint-server"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."reform" or (errorHandler.buildDepError "reform"))
            (hsPkgs."reform-blaze" or (errorHandler.buildDepError "reform-blaze"))
            (hsPkgs."reform-happstack" or (errorHandler.buildDepError "reform-happstack"))
            (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
            (hsPkgs."web-routes-happstack" or (errorHandler.buildDepError "web-routes-happstack"))
            (hsPkgs."web-routes-regular" or (errorHandler.buildDepError "web-routes-regular"))
            (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
            ];
          buildable = true;
          };
        };
      };
    }