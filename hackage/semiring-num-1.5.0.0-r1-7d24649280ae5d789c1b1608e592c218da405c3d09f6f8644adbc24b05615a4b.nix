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
      identifier = { name = "semiring-num"; version = "1.5.0.0"; };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/semiring-num";
      url = "";
      synopsis = "Basic semiring class and instances";
      description = "Adds a basic semiring class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."log-domain" or (buildDepError "log-domain"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      tests = {
        "semiring-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."semiring-num" or (buildDepError "semiring-num"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."nat-sized-numbers" or (buildDepError "nat-sized-numbers"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."log-domain" or (buildDepError "log-domain"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."semiring-num" or (buildDepError "semiring-num"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }