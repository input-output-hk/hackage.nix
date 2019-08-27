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
      specVersion = "1.9.2";
      identifier = { name = "mixed-types-num"; version = "0.3.1.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/mixed-types-num";
      url = "";
      synopsis = "Alternative Prelude with numeric and logic expressions typed bottom-up";
      description = "This package provides a version of Prelude where\nunary and binary operations such as @not@, @+@, @==@\nhave their result type derived from the parameter type(s)\nand thus supports mixed-type arithmetic and comparisons.\n\nSee module \"MixedTypesNumPrelude\" for further documentation.\n\n/Ghci 8.0.* fails when loading this package/ due to ghc bug <https://ghc.haskell.org/trac/ghc/ticket/13385#ticket 13385>.\nThis bug does not affect ghci 7.10.3 and ghci 8.2.1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
          (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mixed-types-num" or (buildDepError "mixed-types-num"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }