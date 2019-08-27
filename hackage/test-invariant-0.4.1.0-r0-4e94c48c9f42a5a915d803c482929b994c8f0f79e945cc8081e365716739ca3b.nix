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
      identifier = { name = "test-invariant"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Florian Knupfer";
      maintainer = "Florian Knupfer <fknupfer@gmail.com>";
      author = "Florian Knupfer <fknupfer@gmail.com>";
      homepage = "https://github.com/knupfer/test-invariant";
      url = "";
      synopsis = "Provide common invariants to be checked with QuickCheck";
      description = "test-invariant is a library for providing common invariants of\nfunctions as higher order polymorphic functions.  This reduces for a\nlot of cases the need for writing prop_ functions for QuickCheck.\n\n>>> quickCheck \$ idempotent (abs :: Int -> Int)\n>>> quickCheck \$ involutory not\n>>> quickCheck \$ not . involutory (+ (2 :: Int))";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      tests = {
        "Tasty" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-invariant" or (buildDepError "test-invariant"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      benchmarks = {
        "Criterion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-invariant" or (buildDepError "test-invariant"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }