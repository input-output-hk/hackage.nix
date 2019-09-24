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
      identifier = { name = "poly"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Lelechenko";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/poly#readme";
      url = "";
      synopsis = "Polynomials";
      description = "Polynomials backed by `Vector`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."semirings" or (buildDepError "semirings"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          ];
        };
      tests = {
        "poly-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."poly" or (buildDepError "poly"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (buildDepError "quickcheck-classes"))
            (hsPkgs."semirings" or (buildDepError "semirings"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "poly-gauge" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."poly" or (buildDepError "poly"))
            (hsPkgs."semirings" or (buildDepError "semirings"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }