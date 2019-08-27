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
      specVersion = "1.8.0.2";
      identifier = { name = "pipes-transduce"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Daniel Diaz";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Interfacing pipes with foldl folds.";
      description = "Grab-bag of functions for interfacing pipes with foldl folds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
          (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."conceit" or (buildDepError "conceit"))
          (hsPkgs."lens-family-core" or (buildDepError "lens-family-core"))
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            ];
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-transduce" or (buildDepError "pipes-transduce"))
            ];
          };
        };
      };
    }