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
      identifier = { name = "generic-data"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/generic-data#readme";
      url = "";
      synopsis = "Deriving instances with GHC.Generics and related utilities";
      description = "Generic implementations of standard type classes.\nOperations on generic representations to help using \"GHC.Generics\".\nSee README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."show-combinators" or (buildDepError "show-combinators"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "record-test" = {
          depends = [
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "example-test" = {
          depends = [
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "microsurgery-test" = {
          depends = [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "lens-surgery-test" = {
          depends = [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "one-liner-surgery-test" = {
          depends = [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."one-liner" or (buildDepError "one-liner"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."generic-data" or (buildDepError "generic-data"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }