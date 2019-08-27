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
      identifier = { name = "anticiv"; version = "0.1.0.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "This is an IRC bot for Mafia and Resistance.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."chatty" or (buildDepError "chatty"))
          (hsPkgs."chatty-utils" or (buildDepError "chatty-utils"))
          (hsPkgs."chatty-text" or (buildDepError "chatty-text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."antisplice" or (buildDepError "antisplice"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ironforge" or (buildDepError "ironforge"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."plugins" or (buildDepError "plugins"))
          (hsPkgs."ctpl" or (buildDepError "ctpl"))
          ];
        };
      exes = {
        "anticiv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chatty" or (buildDepError "chatty"))
            (hsPkgs."chatty-utils" or (buildDepError "chatty-utils"))
            (hsPkgs."chatty-text" or (buildDepError "chatty-text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."antisplice" or (buildDepError "antisplice"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ironforge" or (buildDepError "ironforge"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ctpl" or (buildDepError "ctpl"))
            ];
          };
        };
      };
    }