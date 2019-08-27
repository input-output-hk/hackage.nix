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
    flags = {
      llvm = false;
      polyparse = true;
      hxtrelaxng = true;
      narrownumbers = false;
      threaded = true;
      unix = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "bishbosh"; version = "0.0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2018 Dr. Alistair Ward";
      maintainer = "mailto:bishbosh@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.eu/BishBosh/bishbosh.html";
      url = "";
      synopsis = "Plays chess.";
      description = "A chess-game which can be rendered in a terminal (emulator) in raw ASCII, or used as an engine by xboard.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."factory" or (buildDepError "factory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."toolshed" or (buildDepError "toolshed"))
          ] ++ (if flags.polyparse
          then [ (hsPkgs."polyparse" or (buildDepError "polyparse")) ]
          else [ (hsPkgs."parsec" or (buildDepError "parsec")) ]);
        };
      exes = {
        "bishbosh" = {
          depends = (([
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bishbosh" or (buildDepError "bishbosh"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."factory" or (buildDepError "factory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."toolshed" or (buildDepError "toolshed"))
            ] ++ (if flags.polyparse
            then [ (hsPkgs."polyparse" or (buildDepError "polyparse")) ]
            else [
              (hsPkgs."parsec" or (buildDepError "parsec"))
              ])) ++ (if flags.hxtrelaxng
            then [ (hsPkgs."hxt-relaxng" or (buildDepError "hxt-relaxng")) ]
            else [
              (hsPkgs."parsec" or (buildDepError "parsec"))
              ])) ++ (pkgs.lib).optional (flags.unix) (hsPkgs."unix" or (buildDepError "unix"));
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bishbosh" or (buildDepError "bishbosh"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."toolshed" or (buildDepError "toolshed"))
            ] ++ (if flags.polyparse
            then [ (hsPkgs."polyparse" or (buildDepError "polyparse")) ]
            else [ (hsPkgs."parsec" or (buildDepError "parsec")) ]);
          };
        };
      };
    }