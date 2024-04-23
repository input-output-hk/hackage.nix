{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "graph-generators"; version = "0.1.4.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
        ];
        buildable = true;
      };
      exes = {
        "TestGen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-graph-generators" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = true;
        };
      };
    };
  }