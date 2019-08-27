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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hgeometry"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "frank@fstaals.net";
      author = "Frank Staals";
      homepage = "https://fstaals.net/software/hgeometry";
      url = "";
      synopsis = "Geometric Algorithms, Data structures, and Data types.";
      description = "HGeometry provides some basic geometry types, and geometric algorithms and\ndata structures for them. The main two focusses are: (1) Strong type safety,\nand (2) implementations of geometric algorithms and data structures with good\nasymptotic running time guarantees. Note that HGeometry is still highly experimental, don't be surprised to find bugs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Frames" or (buildDepError "Frames"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."fixed-vector" or (buildDepError "fixed-vector"))
          (hsPkgs."data-clist" or (buildDepError "data-clist"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          ];
        };
      exes = {
        "hgeometry-examples" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hgeometry" or (buildDepError "hgeometry"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hexpat" or (buildDepError "hexpat"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hgeometry" or (buildDepError "hgeometry"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."data-clist" or (buildDepError "data-clist"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
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
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
            (hsPkgs."hgeometry" or (buildDepError "hgeometry"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }