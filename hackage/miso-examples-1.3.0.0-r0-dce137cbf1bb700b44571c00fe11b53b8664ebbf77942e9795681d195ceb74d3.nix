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
    flags = { jsaddle = false; ios = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso-examples"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2020 David M. Johnson";
      maintainer = "David M. Johnson <djohnson.m@gmail.com>";
      author = "David M. Johnson <djohnson.m@gmail.com>";
      homepage = "http://github.com/dmjio/miso";
      url = "";
      synopsis = "A tasty Haskell front-end framework";
      description = "Examples for miso";
      buildType = "Simple";
    };
    components = {
      exes = {
        "todo-mvc" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ pkgs.lib.optional (flags.jsaddle) (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))
            ]
            else [
              (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
        };
        "threejs" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "file-reader" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "xhr" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "canvas2d" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "router" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ pkgs.lib.optional (flags.jsaddle) (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))
            ]
            else [
              (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
        };
        "websocket" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ pkgs.lib.optional (flags.jsaddle) (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))
            ]
            else [
              (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
        };
        "mario" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ] ++ pkgs.lib.optional (flags.jsaddle) (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))) ++ pkgs.lib.optionals (flags.jsaddle && !(compiler.isGhcjs && true) && !flags.ios) [
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ]) ++ pkgs.lib.optional (flags.ios && !(compiler.isGhcjs && true)) (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))) ++ pkgs.lib.optional (!flags.ios) (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp")));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
        };
        "svg" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "compose-update" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "mathml" = {
          depends = pkgs.lib.optionals (!!(compiler.isGhcjs && true)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
      };
    };
  }