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
      identifier = { name = "mmsyn7h"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019-2020";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7h";
      url = "";
      synopsis = "Produces a sound recording specified by the Ukrainian text.";
      description = "A program and a library that are used with mmsyn7ukr (or separately) and are similar to mmsyn6ukr executable. The program uses the data files in the current directory instead of ones in the system defined directories. It reads Ukrainian text with the given by data files sounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mmsyn2" or (buildDepError "mmsyn2"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mmsyn6ukr" or (buildDepError "mmsyn6ukr"))
          (hsPkgs."mmsyn3" or (buildDepError "mmsyn3"))
          (hsPkgs."mmsyn7s" or (buildDepError "mmsyn7s"))
          ];
        buildable = true;
        };
      exes = {
        "mmsyn7h" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mmsyn2" or (buildDepError "mmsyn2"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mmsyn6ukr" or (buildDepError "mmsyn6ukr"))
            (hsPkgs."mmsyn3" or (buildDepError "mmsyn3"))
            (hsPkgs."mmsyn7s" or (buildDepError "mmsyn7s"))
            ];
          buildable = true;
          };
        };
      };
    }