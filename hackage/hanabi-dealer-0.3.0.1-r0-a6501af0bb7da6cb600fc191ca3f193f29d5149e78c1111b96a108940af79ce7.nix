{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
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
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))) ++ (pkgs.lib).optionals (flags.snap) [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."websockets-snap" or ((hsPkgs.pkgs-errors).buildDepError "websockets-snap"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
            (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
            ]);
          buildable = if compiler.isGhcjs && true || !flags.server
            then false
            else true;
          };
        "client" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hanabi-dealer" or ((hsPkgs.pkgs-errors).buildDepError "hanabi-dealer"))
            ] ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell")));
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        };
      };
    }