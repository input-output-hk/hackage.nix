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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "TORCS"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mark.santolucito@yale.edu";
      author = "Mark Santolucito";
      homepage = "";
      url = "";
      synopsis = "Bindings to the TORCS vehicle simulator.";
      description = "A library for building autonomous vehicles that run in the TORCS simulator. This requires the following external dependencies:\n\n1. torcs 1.3.4 (<http://prdownloads.sourceforge.net/torcs/torcs-1.3.4.tar.bz2?download>)\n2. scr-server 2.1 (<https://sourceforge.net/projects/cig/files/SCR%20Championship/Server%20Linux/>)\n\nNot that scr-server will only work with 1.3.4, until that is updated you must use exactly torcs 1.3.4.\nComplete install instructions here <https://arxiv.org/abs/1304.1672>\n\nOn Ubunutu 16.04, you may need to comment out line 70 in @src\\/modules\\/simu\\/simuv2\\/simu.cpp@ in order for TORCS to compile.\n\nA guide script for install is available at <https://github.com/santolucito/Haskell-TORCS/blob/master/installTORCS.sh>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."Yampa" or (buildDepError "Yampa"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monad-parallel" or (buildDepError "monad-parallel"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      exes = {
        "Simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."TORCS" or (buildDepError "TORCS"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }