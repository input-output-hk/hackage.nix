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
      identifier = { name = "kdt"; version = "0.2.2"; };
      license = "MIT";
      copyright = "Luis G. Torres, 2014";
      maintainer = "lgtorres42@gmail.com";
      author = "Luis G. Torres";
      homepage = "https://github.com/giogadi/kdt";
      url = "";
      synopsis = "Fast and flexible k-d trees for various types of point queries.";
      description = "This package includes static and dynamic versions of k-d trees,\nas well as \\\"Map\\\" variants that store data at each point in the\nk-d tree structure. Supports nearest neighbor,\nk nearest neighbors, points within a given radius, and points\nwithin a given range.\nTo learn to use this package, start with the documentation for\nthe \"Data.KdTree.Static\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."pqueue" or (buildDepError "pqueue"))
          (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
          ];
        buildable = true;
        };
      tests = {
        "StaticTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."kdt" or (buildDepError "kdt"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
            ];
          buildable = true;
          };
        "DynamicTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."kdt" or (buildDepError "kdt"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "KDTBenchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."kdt" or (buildDepError "kdt"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."pqueue" or (buildDepError "pqueue"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
            ];
          buildable = true;
          };
        };
      };
    }