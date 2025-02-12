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
      specVersion = "2.2";
      identifier = { name = "miso-examples"; version = "1.8.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2025 David M. Johnson";
      maintainer = "David M. Johnson <code@dmj.io>";
      author = "David M. Johnson <code@dmj.io>";
      homepage = "http://github.com/dmjio/miso";
      url = "";
      synopsis = "A tasty Haskell front-end web framework";
      description = "Examples for miso";
      buildType = "Simple";
    };
    components = {
      exes = {
        "simple" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) ([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.ios
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
        "todo-mvc" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle)) (([
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
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle
            then false
            else true;
        };
        "threejs" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
        "file-reader" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
        "xhr" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
        "canvas2d" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
        "router" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle)) (([
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
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle
            then false
            else true;
        };
        "websocket" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle)) (([
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
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle
            then false
            else true;
        };
        "mario" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle)) (((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ] ++ pkgs.lib.optional (flags.jsaddle) (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))) ++ pkgs.lib.optionals (flags.jsaddle && !(compiler.isGhcjs && true) && !system.isJavaScript && !flags.ios) [
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ]) ++ pkgs.lib.optional (flags.ios && !(compiler.isGhcjs && true) && !system.isJavaScript) (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))) ++ pkgs.lib.optional (!flags.ios) (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp")));
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript && !flags.jsaddle
            then false
            else true;
        };
        "svg" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
        "compose-update" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
        "mathml" = {
          depends = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !system.isJavaScript)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          ];
          buildable = if !(compiler.isGhcjs && true) && !system.isJavaScript
            then false
            else true;
        };
      };
    };
  }