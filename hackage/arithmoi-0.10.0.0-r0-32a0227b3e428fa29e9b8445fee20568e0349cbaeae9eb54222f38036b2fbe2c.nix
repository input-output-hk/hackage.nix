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
    flags = { check-bounds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "arithmoi"; version = "0.10.0.0"; };
      license = "MIT";
      copyright = "(c) 2016-2019 Andrew Lelechenko, Carter Schonwald, 2011 Daniel Fischer";
      maintainer = "Andrew Lelechenko andrew dot lelechenko at gmail dot com,\nCarter Schonwald  carter at wellposed dot com";
      author = "Andrew Lelechenko, Daniel Fischer";
      homepage = "https://github.com/Bodigrim/arithmoi";
      url = "";
      synopsis = "Efficient basic number-theoretic functions.";
      description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exact-pi" or (buildDepError "exact-pi"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."semirings" or (buildDepError "semirings"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "sequence-model" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hmatrix-gsl" or (buildDepError "hmatrix-gsl"))
            ];
          buildable = false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."exact-pi" or (buildDepError "exact-pi"))
            (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."semirings" or (buildDepError "semirings"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }