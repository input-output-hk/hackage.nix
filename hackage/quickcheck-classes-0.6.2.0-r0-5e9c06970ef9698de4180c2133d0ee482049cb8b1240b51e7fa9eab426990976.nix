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
    flags = {
      aeson = true;
      semigroupoids = true;
      semirings = true;
      vector = true;
      unary-laws = true;
      binary-laws = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-classes"; version = "0.6.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin, chessai";
      homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
      url = "";
      synopsis = "QuickCheck common typeclasses";
      description = "This library provides QuickCheck properties to ensure\nthat typeclass instances adhere to the set of laws that\nthey are supposed to. There are other libraries that do\nsimilar things, such as `genvalidity-hspec` and `checkers`.\nThis library differs from other solutions by not introducing\nany new typeclasses that the user needs to learn.\n\n/Note:/ on GHC < 8.5, this library uses the higher-kinded typeclasses\n('Data.Functor.Classes.Show1', 'Data.Functor.Classes.Eq1', 'Data.Functor.Classes.Ord1', etc.),\nbut on GHC >= 8.5, it uses `-XQuantifiedConstraints` to express these\nconstraints more cleanly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (buildDepError "primitive-addr"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."fail" or (buildDepError "fail"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).gt "7.4" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.unary-laws) [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ]) ++ (pkgs.lib).optionals (flags.binary-laws) [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ]) ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.semirings) (hsPkgs."semirings" or (buildDepError "semirings"))) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (buildDepError "vector"));
        };
      tests = {
        "basic" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
            (hsPkgs."quickcheck-classes" or (buildDepError "quickcheck-classes"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (buildDepError "vector"));
          };
        "advanced" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (buildDepError "quickcheck-classes"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }