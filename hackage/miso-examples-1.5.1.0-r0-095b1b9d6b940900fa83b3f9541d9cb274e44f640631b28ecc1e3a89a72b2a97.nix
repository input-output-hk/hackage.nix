let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { jsaddle = false; ios = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso-examples"; version = "1.5.1.0"; };
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
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or (buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or (buildDepError "jsaddle-wkwebview"))
              ]
            else [
              (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp"))
              ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "threejs" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "file-reader" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "xhr" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "canvas2d" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "router" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or (buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or (buildDepError "jsaddle-wkwebview"))
              ]
            else [
              (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp"))
              ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "websocket" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or (buildDepError "jsaddle"))) ++ (if flags.ios
            then [
              (hsPkgs."jsaddle-wkwebview" or (buildDepError "jsaddle-wkwebview"))
              ]
            else [
              (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp"))
              ]));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "mario" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs."jsaddle" or (buildDepError "jsaddle"))) ++ (pkgs.lib).optionals (flags.jsaddle && !(compiler.isGhcjs && true) && !flags.ios) [
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ]) ++ (pkgs.lib).optional (flags.ios && !(compiler.isGhcjs && true)) (hsPkgs."jsaddle-wkwebview" or (buildDepError "jsaddle-wkwebview"))) ++ (pkgs.lib).optional (!flags.ios) (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp")));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        "svg" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "compose-update" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "mathml" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        };
      };
    }