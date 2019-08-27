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
      identifier = { name = "ms"; version = "0.2.1"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2015 Ricky Elrod, Tony Morris";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod, Tony Morris";
      homepage = "https://github.com/relrod/ms";
      url = "";
      synopsis = "metric spaces";
      description = "A 'MetricSpace' is a set together with a notion of distance between\nelements. Distance is computed by a function 'dist' which has the following\nfour laws:\n\n(1) __non-negative__: @forall x y. 'dist' x y >= 0@\n\n(2) __identity of indiscernibles__: @forall x y. 'dist' x y == 0 \\<=\\> x == y@\n\n(3) __symmetry__: @forall x y. dist x y == 'dist' y x@\n\n(4) __triangle inequality__: @forall x y z. 'dist' x z <= 'dist' x y + 'dist' y z@\n\nSee the Wikipedia <https://en.wikipedia.org/wiki/Metric_space article on metric spaces>\nfor more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."ms" or (buildDepError "ms"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      };
    }