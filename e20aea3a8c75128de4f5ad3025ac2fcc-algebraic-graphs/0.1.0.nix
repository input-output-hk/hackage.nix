{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "algebraic-graphs";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "Andrey Mokhov, 2016-2018";
        maintainer = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
        author = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
        homepage = "https://github.com/snowleopard/alga";
        url = "";
        synopsis = "A library for algebraic graph construction and transformation";
        description = "<https://github.com/snowleopard/alga Alga> is a library for algebraic construction and\nmanipulation of graphs in Haskell. See <https://github.com/snowleopard/alga-paper this paper>\nfor the motivation behind the library, the underlying theory and implementation details.\n\nThe top-level module\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html Algebra.Graph>\ndefines the core data type\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html#t:Graph Graph>,\nwhich is a deep embedding of four graph construction primitives /empty/,\n/vertex/, /overlay/ and /connect/. More conventional graph representations can be found in\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-AdjacencyMap.html Algebra.Graph.AdjacencyMap>\nand\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Relation.html Algebra.Graph.Relation>.\n\nThe type classes defined in\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Class.html Algebra.Graph.Class>\nand\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-HigherKinded-Class.html Algebra.Graph.HigherKinded.Class>\ncan be used for polymorphic graph construction and manipulation. Also see\n<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Fold.html Algebra.Graph.Fold>\nthat defines the Boehm-Berarducci encoding of algebraic graphs and provides additional\nflexibility for polymorphic graph manipulation.\n\nThis is an experimental library and the API is expected to remain unstable until version 1.0.0.\nPlease consider contributing to the on-going\n<https://github.com/snowleopard/alga/issues discussions on the library API>.";
        buildType = "Simple";
      };
      components = {
        algebraic-graphs = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          test-alga = {
            depends  = [
              hsPkgs.algebraic-graphs
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.base-orphans
              hsPkgs.containers
              hsPkgs.extra
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
        benchmarks = {
          benchmark-alga = {
            depends  = [
              hsPkgs.algebraic-graphs
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.criterion
            ];
          };
        };
      };
    }