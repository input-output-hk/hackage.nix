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
      official = false;
      th = true;
      jsaddle = false;
      examples = true;
      mhlmc = false;
      miso1710 = true;
      debug = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hanabi-dealer"; version = "0.15.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "https://nautilus.cs.miyazaki-u.ac.jp/~skata/Sontakki/";
      url = "";
      synopsis = "Hanabi card game";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ (pkgs.lib).optional (flags.debug) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ (pkgs.lib).optionals (flags.examples || flags.mhlmc || compiler.isGhcjs && true) [
          (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ]) ++ (pkgs.lib).optionals (flags.mhlmc) [
          (hsPkgs."MagicHaskeller" or (errorHandler.buildDepError "MagicHaskeller"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhcjs && true || flags.server || flags.jsaddle) ((pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell")))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true) && flags.server) ([
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.snap
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
            ]))) ++ (pkgs.lib).optionals (compiler.isGhcjs && true || flags.jsaddle) ([
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ] ++ [ (hsPkgs."miso" or (errorHandler.buildDepError "miso")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            ]));
        buildable = true;
        };
      exes = {
        "hanabiq" = {
          depends = [
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ] ++ (pkgs.lib).optionals (!(!flags.jsaddle)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
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
            ];
          buildable = if !flags.jsaddle then false else true;
          };
        "hanabib" = {
          depends = [
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true || !flags.server)) (((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hanabi-dealer" or (errorHandler.buildDepError "hanabi-dealer"))
            ] ++ (pkgs.lib).optionals (flags.mhlmc) [
            (hsPkgs."MagicHaskeller" or (errorHandler.buildDepError "MagicHaskeller"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ]) ++ (pkgs.lib).optional (flags.debug) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (if flags.snap
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
          depends = [
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ] ++ (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) ((((pkgs.lib).optional (flags.debug) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck")) ++ (if !(compiler.isGhcjs && true)
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
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
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
              (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."hanabi-dealer" or (errorHandler.buildDepError "hanabi-dealer"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ] ++ [
              (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
              ])) ++ (pkgs.lib).optionals (flags.mhlmc) [
            (hsPkgs."MagicHaskeller" or (errorHandler.buildDepError "MagicHaskeller"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ]) ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell")));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "hanabibat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hanabi-dealer" or (errorHandler.buildDepError "hanabi-dealer"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."MagicHaskeller" or (errorHandler.buildDepError "MagicHaskeller"))
            ] ++ (pkgs.lib).optionals (!(!flags.mhlmc)) ((pkgs.lib).optional (flags.debug) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck")) ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell")));
          buildable = if !flags.mhlmc then false else true;
          };
        };
      };
    }