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
      specVersion = "1.6";
      identifier = { name = "ghc-gc-tune"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/ghc-gc-tune";
      url = "";
      synopsis = "Graph performance of Haskell programs with different GC flags";
      description = "ghc-gc-tune runs your compiled Haskell program with\ndifferent GC flags, and generates a graph of time as\nthose GC settings vary. ghc-gc-tune lets your automate\nthe task of finding good GC flags for your program, in\norder to get the best performance from it.\n\nGraphs are rendered with gnuplot, so make sure that is\ninstalled.\n\nExample use:\n\n> ghc -O2 --make binarytrees.hs\n> ghc-gc-tune -t svg binarytrees 12\n\nExample output:\n\n<http://i.imgur.com/m2yKr.png>\n\nFor more information on GHC garbage collector settings,\nsee <http://haskell.org/ghc/docs/6.12.1/html/users_guide/runtime-control.html#rts-options-gc>\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-gc-tune" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }