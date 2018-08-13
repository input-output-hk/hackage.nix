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
        name = "order-statistic-tree";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Lambda Kazan, 2016";
      maintainer = "mz@lambdasoft.ru";
      author = "Mansur Ziiatdinov";
      homepage = "";
      url = "";
      synopsis = "Order statistic trees based on weight-balanced trees";
      description = "This repository contains an implementation of order statistic tree in Haskell programming language.\nI could not find an order statistic tree at Hackage, so I have to develop one.\n\nThis implementation uses weight-balanced trees which are desribed in\n\n- Hirai, Yoichi, and Kazuhiko Yamamoto. \"Balancing weight-balanced trees.\" Journal of Functional Programming 21.03 (2011): 287-307.\n\nAlso some code is based on containers package.\n\nImplementation of order statistic tree is described in\n\n- Cormen, T.H., Leiserson, Rivest, Stein. Introduction to algorithms. The MIT Press. 3rd ed.\n\n= Benchmarks\n\nI tried to make this tree as fast as possible. The results on my i7-4790 with 16Gb RAM are following:\n\n- OSTree was created from 1.000.000 random numbers in 2.087 ± 0.021 s (e.g. for Data.Map.Strict - 1.977 ± 0.016 s);\n- deletion from OSTree with 1.000.000 random numbers was made in 13.94 ± 0.93 ms;\n- lookup from OSTree with 1.000.000 random numbers was made in 208.2 ± 3.48 ns;\n- selection from OSTree with 1.000.000 random numbers was made in 92.72 ± 1.91 ns;\n- full testing protocol can be found in result-bench.txt.";
      buildType = "Simple";
    };
    components = {
      "order-statistic-tree" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test-ost" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.order-statistic-tree)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "bench-ost" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.order-statistic-tree)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.random)
          ];
        };
      };
    };
  }