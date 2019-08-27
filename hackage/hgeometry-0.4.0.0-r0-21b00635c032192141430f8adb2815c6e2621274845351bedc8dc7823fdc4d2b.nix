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
      identifier = { name = "hgeometry"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "f.staals@uu.nl";
      author = "Frank Staals";
      homepage = "http://fstaals.net/software/hgeometry";
      url = "";
      synopsis = "Data types for geometric objects, geometric algorithms, and data  structures.";
      description = "HGeometry provides some basic geometry types, and geometric algorithms and\ndata structures for them. The main two focusses are: (1) Strong type safety,\nand (2) implementations of geometric algorithms and data structures with good\nasymptotic running time guarantees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."validation" or (buildDepError "validation"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."fixed-vector" or (buildDepError "fixed-vector"))
          (hsPkgs."data-clist" or (buildDepError "data-clist"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "bapc_examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."hgeometry" or (buildDepError "hgeometry"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."data-clist" or (buildDepError "data-clist"))
            (hsPkgs."linear" or (buildDepError "linear"))
            ];
          };
        };
      };
    }