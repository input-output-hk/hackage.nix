{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { jsaddle = false; ios = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso-examples"; version = "1.5.0.0"; };
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
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))
              ]
            else [
              (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
              ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "threejs" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "file-reader" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "xhr" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "canvas2d" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "router" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))
              ]
            else [
              (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
              ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "websocket" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))
              ]
            else [
              (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
              ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "mario" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))) ++ (pkgs.lib).optionals (flags.jsaddle && !(compiler.isGhcjs && true) && !flags.ios) [
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            ]) ++ (pkgs.lib).optional (flags.ios && !(compiler.isGhcjs && true)) (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))) ++ (pkgs.lib).optional (!flags.ios) (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp")));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "svg" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "compose-update" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "mathml" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        };
      };
    }