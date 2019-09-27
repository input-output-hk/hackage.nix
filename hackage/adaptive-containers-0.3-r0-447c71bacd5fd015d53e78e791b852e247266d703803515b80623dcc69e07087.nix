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
      specVersion = "1.2.3";
      identifier = { name = "adaptive-containers"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart (dons@galois.com)";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/adaptive-containers";
      url = "";
      synopsis = "Self optimizing container types";
      description = "Self optimizing polymorphic container types.\n\nAdaptive containers are polymorphic container types that use\nclass associated data types to specialize particular element types\nto a more efficient container representation. The resulting\nstructures tend to be both more time and space efficient.\n\nA self-optimizing pair, for example, will unpack the constructors,\nyielding a representation for (Int,Char) requiring 8 bytes, instead\nof 24.\n\nThis difference can be visualized. Consider the expression:\n\n> [ (x,y) | x <- [1..3], y <- [x..3] ]\n\n* /[(Int,Int)]/: A regular list of pairs <http://code.haskell.org/~dons/images/vacuum/tuple-list.png>\n\n* /[Pair Int Int]/: An adaptive list of pairs <http://code.haskell.org/~dons/images/vacuum/pair-list.png>\n\n* /List (Pair Int Int)/: An adaptive list of adaptive pairs <http://code.haskell.org/~dons/images/vacuum/list-pair.png>\n\nCurrently supported adaptive containers: pairs, lists, maybes\n\nMost unboxed element types are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }