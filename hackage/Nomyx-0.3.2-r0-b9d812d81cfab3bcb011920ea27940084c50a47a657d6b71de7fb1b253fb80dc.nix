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
      identifier = { name = "Nomyx"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed! The original (paper) game: www.nomic.net";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Nomyx" = {
          depends = [
            (hsPkgs."Nomyx-Language" or (errorHandler.buildDepError "Nomyx-Language"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-accessor-transformers" or (errorHandler.buildDepError "data-accessor-transformers"))
            (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
            (hsPkgs."data-lens-fd" or (errorHandler.buildDepError "data-lens-fd"))
            (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."fb" or (errorHandler.buildDepError "fb"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hint-server" or (errorHandler.buildDepError "hint-server"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
            (hsPkgs."lenses" or (errorHandler.buildDepError "lenses"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mueval" or (errorHandler.buildDepError "mueval"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."happstack-authenticate" or (errorHandler.buildDepError "happstack-authenticate"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."reform" or (errorHandler.buildDepError "reform"))
            (hsPkgs."reform-blaze" or (errorHandler.buildDepError "reform-blaze"))
            (hsPkgs."reform-happstack" or (errorHandler.buildDepError "reform-happstack"))
            (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
            (hsPkgs."web-routes-happstack" or (errorHandler.buildDepError "web-routes-happstack"))
            (hsPkgs."web-routes-regular" or (errorHandler.buildDepError "web-routes-regular"))
            (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
            (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ];
          buildable = true;
          };
        };
      };
    }