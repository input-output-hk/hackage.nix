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
      specVersion = "1.12";
      identifier = { name = "grids"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/grids#readme";
      url = "";
      synopsis = "";
      description = "Arbitrary sized type-safe grids with useful combinators";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."grids" or (buildDepError "grids"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "stat" = {
          depends = [
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."grids" or (buildDepError "grids"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }