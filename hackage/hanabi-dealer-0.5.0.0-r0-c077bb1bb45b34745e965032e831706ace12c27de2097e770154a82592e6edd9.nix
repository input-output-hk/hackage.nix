{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "hanabi-dealer"; version = "0.5.0.0"; };
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
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true || flags.jsaddle || flags.server) ((pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell")))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true) && flags.server) (([
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))) ++ (if flags.snap
          then [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."websockets-snap" or ((hsPkgs.pkgs-errors).buildDepError "websockets-snap"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
            (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
            ]
          else (pkgs.lib).optionals (flags.warp) [
            (hsPkgs."wai-websockets" or ((hsPkgs.pkgs-errors).buildDepError "wai-websockets"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            ]))) ++ (pkgs.lib).optionals (compiler.isGhcjs && true || flags.jsaddle) [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "server" = {
          depends = (pkgs.lib).optionals (!(compiler.isGhcjs && true || !flags.server)) ((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."hanabi-dealer" or ((hsPkgs.pkgs-errors).buildDepError "hanabi-dealer"))
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))) ++ (if flags.snap
            then [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              (hsPkgs."websockets-snap" or ((hsPkgs.pkgs-errors).buildDepError "websockets-snap"))
              (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
              (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
              (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
              ]
            else (pkgs.lib).optionals (flags.warp) [
              (hsPkgs."wai-websockets" or ((hsPkgs.pkgs-errors).buildDepError "wai-websockets"))
              (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
              (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
              (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
              ]));
          buildable = if compiler.isGhcjs && true || !flags.server
            then false
            else true;
          };
        "client" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hanabi-dealer" or ((hsPkgs.pkgs-errors).buildDepError "hanabi-dealer"))
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell")));
          buildable = if !(compiler.isGhcjs && true) && !flags.jsaddle
            then false
            else true;
          };
        };
      };
    }