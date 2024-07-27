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
      specVersion = "2.0";
      identifier = { name = "trie-simple"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "Simple Map-based Trie";
      description = "A trie data structure @TMap c v@, to hold a mapping from list of characters (@[c]@) to\nsomething. In other words, a data structure isomorphic to @Map [c] v@.\nIt is more efficient to query compared to @Map@. Also, it supports extra\noperations like prefix matching.\nThis package contains @TSet c@ too, which is isomorphic to @Set [c]@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."matchable" or (errorHandler.buildDepError "matchable"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
        ];
        buildable = true;
      };
      tests = {
        "trie-simple-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."trie-simple" or (errorHandler.buildDepError "trie-simple"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "trie-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."trie-simple" or (errorHandler.buildDepError "trie-simple"))
          ];
          buildable = true;
        };
      };
    };
  }