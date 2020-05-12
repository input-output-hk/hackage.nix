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
    flags = {
      server = false;
      snap = true;
      tfrandom = true;
      official = false;
      th = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hanabi-dealer"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "";
      url = "";
      synopsis = "Hanabi card game";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "server" = {
          depends = (pkgs.lib).optionals (!(compiler.isGhcjs && true || !flags.server)) ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."hanabi-dealer" or (errorHandler.buildDepError "hanabi-dealer"))
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ (pkgs.lib).optionals (flags.snap) [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."websockets-snap" or (errorHandler.buildDepError "websockets-snap"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            ]);
          buildable = if compiler.isGhcjs && true || !flags.server
            then false
            else true;
          };
        "client" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hanabi-dealer" or (errorHandler.buildDepError "hanabi-dealer"))
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell")));
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        };
      };
    }