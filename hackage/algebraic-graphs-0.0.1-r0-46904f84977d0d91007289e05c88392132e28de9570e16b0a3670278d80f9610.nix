{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "algebraic-graphs";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Andrey Mokhov, 2016-2017";
      maintainer = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      author = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      homepage = "https://github.com/snowleopard/alga";
      url = "";
      synopsis = "A library for algebraic graph construction and transformation";
      description = "A library for algebraic construction and manipulation of graphs in Haskell. See\n<https://github.com/snowleopard/alga-paper this paper> for the motivation behind\nthe library, the underlying theory and implementation details.\n\nThe top-level module \"Algebra.Graph\" defines the core data type 'Algebra.Graph.Graph'\nwhich is a deep embedding of four graph construction primitives 'Algebra.Graph.empty',\n'Algebra.Graph.vertex', 'Algebra.Graph.overlay' and 'Algebra.Graph.connect'. More\nconventional graph representations can be found in \"Algebra.Graph.AdjacencyMap\" and\n\"Algebra.Graph.Relation\".\n\nThe type classes defined in \"Algebra.Graph.Class\" and \"Algebra.Graph.HigherKinded.Class\"\ncan be used for polymorphic graph construction and manipulation. Also see\n\"Algebra.Graph.Fold\" that defines the Boehm-Berarducci encoding of algebraic graphs and\nprovides additional flexibility for polymorphic graph manipulation.\n\nThis is an experimental library and the API will be unstable until version 1.0.0.";
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