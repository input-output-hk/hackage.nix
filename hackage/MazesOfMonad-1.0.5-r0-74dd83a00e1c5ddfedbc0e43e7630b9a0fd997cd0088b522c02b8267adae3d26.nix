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
      specVersion = "0";
      identifier = { name = "MazesOfMonad"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "JP Moresmau";
      homepage = "";
      url = "";
      synopsis = "Console-based Role Playing Game";
      description = "MazesOfMonad is a console-based Role Playing Game. You create characters\nwith their strong and weak points, and try to complete mazes that are randomly generated. You can pick up gold and items on the way,\nmeet monsters, and deal with them as you want. You can fight, use magic, bribe, trade, steal... This is only a simple game that I did to see what building a\nfull blown Haskell application is like to develop. Version 1.0.5 is complete and working.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mazesofmonad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }