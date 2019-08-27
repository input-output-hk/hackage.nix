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
      identifier = { name = "difference-monoid"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/difference-monoid#readme";
      url = "";
      synopsis = "";
      description = "A Difference Monoid, to add subtraction to arbitrary monoids. Please see the README on Github at <https://github.com/oisdk/difference-monoid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."groups" or (buildDepError "groups"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          ];
        };
      tests = {
        "difference-monoid-doctests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."difference-monoid" or (buildDepError "difference-monoid"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."groups" or (buildDepError "groups"))
            (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
            ];
          };
        "difference-monoid-test" = {
          depends = [
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."difference-monoid" or (buildDepError "difference-monoid"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."groups" or (buildDepError "groups"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hedgehog-checkers" or (buildDepError "hedgehog-checkers"))
            (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
            ];
          };
        };
      };
    }