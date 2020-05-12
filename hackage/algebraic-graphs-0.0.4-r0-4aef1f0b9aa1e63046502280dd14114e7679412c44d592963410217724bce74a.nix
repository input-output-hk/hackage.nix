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
      identifier = { name = "algebraic-graphs"; version = "0.0.4"; };
      license = "MIT";
      copyright = "Andrey Mokhov, 2016-2017";
      maintainer = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      author = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      homepage = "https://github.com/snowleopard/alga";
      url = "";
      synopsis = "A library for algebraic graph construction and transformation";
      description = "<https://github.com/snowleopard/alga Alga> is a library for algebraic construction and\nmanipulation of graphs in Haskell. See <https://github.com/snowleopard/alga-paper this paper>\nfor the motivation behind the library, the underlying theory and implementation details.\n\nThe top-level module\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html Algebra.Graph>\ndefines the core data type\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html#t:Graph Graph>,\nwhich is a deep embedding of four graph construction primitives /empty/,\n/vertex/, /overlay/ and /connect/. More conventional graph representations can be found in\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-AdjacencyMap.html Algebra.Graph.AdjacencyMap>\nand\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Relation.html Algebra.Graph.Relation>.\n\nThe type classes defined in\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Class.html Algebra.Graph.Class>\nand\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-HigherKinded-Class.html Algebra.Graph.HigherKinded.Class>\ncan be used for polymorphic graph construction and manipulation. Also see\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Fold.html Algebra.Graph.Fold>\nthat defines the Boehm-Berarducci encoding of algebraic graphs and provides additional\nflexibility for polymorphic graph manipulation.\n\nThis is an experimental library and the API will be unstable until version 1.0.0. Please\nconsider contributing to the on-going\n<https://github.com/snowleopard/alga/issues discussions on the library API>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-alga" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-alga" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }