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
      identifier = { name = "symon"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2016 Simon Michael";
      maintainer = "simon@joyful.com";
      author = "Simon Michael";
      homepage = "https://github.com/simonmichael/symon";
      url = "";
      synopsis = "Minimal implementation(s) of the classic electronic memory game.";
      description = "This was an attempt to submit a ludum dare entry in 2h.\nIt is also a nice kata (exercise) for practising haskell game development\nand/or demonstrating different libraries and approaches.\nImprovements, new implementations and co-developers are welcome.\n\nCurrently there is one implementation, a minimal ansi command line one.\nSee README for more.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "symon-ansi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }