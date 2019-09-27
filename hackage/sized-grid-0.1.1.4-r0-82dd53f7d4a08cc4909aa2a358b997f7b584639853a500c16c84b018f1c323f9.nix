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
      identifier = { name = "sized-grid"; version = "0.1.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "ed@wastell.co.uk";
      author = "edwardwas";
      homepage = "https://github.com/edwardwas/sized-grid";
      url = "";
      synopsis = "Multidimensional grids with sized specified at compile time";
      description = "`size-grid` allows you to make finite sized grids and have their size and shape confirmed at compile time\n\nConsult the readme for a short tutorial and explanation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."sized-grid" or (buildDepError "sized-grid"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        "readme" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."sized-grid" or (buildDepError "sized-grid"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            ];
          buildable = true;
          };
        };
      };
    }