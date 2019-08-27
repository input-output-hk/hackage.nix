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
      identifier = { name = "graph-generators"; version = "0.1.3.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2014 Uli Köhler";
      maintainer = "ukoehler@techoverflow.net";
      author = "Uli Köhler";
      homepage = "https://github.com/ulikoehler/graph-random";
      url = "";
      synopsis = "Functions for generating structured or random FGL graphs";
      description = "Generators for graphs.\nSupports classic (constant-sized) graphs, deterministic Generators\nand different random graph generators, based on mwc-random.\n\nThis library uses a library-agnostic and space-efficient graph\nrepresentation. Combinators are provided to convert said representation\nto other graph representations (currently only FGL, see 'Data.Graph.Generators.FGL')\n\nNote that this library is in its early development stages.\nDon't use it for production code without checking the correctness\nof the algorithm implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."multiset" or (buildDepError "multiset"))
          ];
        };
      exes = {
        "TestGen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."multiset" or (buildDepError "multiset"))
            ];
          };
        };
      tests = {
        "test-graph-generators" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."multiset" or (buildDepError "multiset"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            ];
          };
        };
      };
    }