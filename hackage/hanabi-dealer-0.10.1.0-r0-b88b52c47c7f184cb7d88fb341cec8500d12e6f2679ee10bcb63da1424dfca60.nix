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
      snap = false;
      warp = true;
      tfrandom = true;
      official = false;
      th = true;
      jsaddle = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hanabi-dealer"; version = "0.10.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/Sontakki/";
      url = "";
      synopsis = "Hanabi card game";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (!flags.jsaddle) ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true || flags.server) ((pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell")))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true) && flags.server) (([
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ (if flags.snap
          then [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."websockets-snap" or (errorHandler.buildDepError "websockets-snap"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            ]
          else (pkgs.lib).optionals (flags.warp) [
            (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ]))) ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          ]);
        buildable = if flags.jsaddle then false else true;
        };
      exes = {
        "hanabiq" = {
          depends = (pkgs.lib).optionals (!(!flags.jsaddle)) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ] ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random")));
          buildable = if !flags.jsaddle then false else true;
          };
        "hanabib" = {
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
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ (if flags.snap
            then [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."websockets-snap" or (errorHandler.buildDepError "websockets-snap"))
              (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
              (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
              (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
              ]
            else (pkgs.lib).optionals (flags.warp) [
              (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
              (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
              (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
              (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
              ]));
          buildable = if compiler.isGhcjs && true || !flags.server
            then false
            else true;
          };
        "hanabif" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hanabi-dealer" or (errorHandler.buildDepError "hanabi-dealer"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell")));
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        };
      };
    }