{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "algebraic-graphs";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "Andrey Mokhov, 2016-2017";
      maintainer = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      author = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      homepage = "https://github.com/snowleopard/alga";
      url = "";
      synopsis = "A library for algebraic graph construction and transformation";
      description = "__Alga__ is a library for algebraic construction and manipulation of graphs in Haskell. See\n<https://github.com/snowleopard/alga-paper this paper> for the motivation behind\nthe library, the underlying theory and implementation details.\n\nThe top-level module\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html Algebra.Graph>\ndefines the core data type\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html#t:Graph Graph>.\nwhich is a deep embedding of four graph construction primitives /empty/,\n/vertex/, /overlay/ and /connect/. More conventional graph representations can be found\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-AdjacencyMap.html Algebra.Graph.AdjacencyMap>\nand\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Relation.html Algebra.Graph.Relation>.\n\nThe type classes defined in\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Class.html Algebra.Graph.Class>\nand\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-HigherKinded-Class.html Algebra.Graph.HigherKinded.Class>\ncan be used for polymorphic graph construction and manipulation. Also see\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Fold.html Algebra.Graph.Fold>\nthat defines the Boehm-Berarducci encoding of algebraic graphs and provides additional\nflexibility for polymorphic graph manipulation.\n\nThis is an experimental library and the API will be unstable until version 1.0.0. Please\nconsider contributing to the on-going discussions on the library API at\nhttps://github.com/snowleopard/alga/issues.";
      buildType = "Simple";
    };
    components = {
      "algebraic-graphs" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test-alga" = {
          depends  = [
            (hsPkgs.algebraic-graphs)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "benchmark-alga" = {
          depends  = [
            (hsPkgs.algebraic-graphs)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }