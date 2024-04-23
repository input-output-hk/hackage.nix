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
      identifier = { name = "order-statistic-tree"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Lambda Kazan, 2016";
      maintainer = "mz@lambdasoft.ru";
      author = "Mansur Ziiatdinov";
      homepage = "";
      url = "";
      synopsis = "Order statistic trees based on weight-balanced trees";
      description = "This repository contains an implementation of order statistic tree in Haskell programming language.\nI could not find an order statistic tree at Hackage, so I have to develop one.\n\nThis implementation uses weight-balanced trees which are desribed in\n\n- Hirai, Yoichi, and Kazuhiko Yamamoto. \"Balancing weight-balanced trees.\" Journal of Functional Programming 21.03 (2011): 287-307.\n\nAlso some code is based on containers package.\n\nImplementation of order statistic tree is described in\n\n- Cormen, T.H., Leiserson, Rivest, Stein. Introduction to algorithms. The MIT Press. 3rd ed.\n\n= Benchmarks\n\nI tried to make this tree as fast as possible. The results on my i7-4790 with 16Gb RAM are following:\n\n- OSTree was created from 1.000.000 random numbers in 1.987 ± 0.015 s (e.g. for Data.Map.Strict - 2.081 ± 0.008 s);\n- deletion from OSTree with 1.000.000 random numbers was made in 13.88 ± 0.14 ms;\n- lookup from OSTree with 1.000.000 random numbers was made in 164.8 ± 1.06 ns;\n- selection from OSTree with 1.000.000 random numbers was made in 56.54 ± 0.99 ns;\n- full testing protocol can be found in result-bench.txt.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test-ost" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."order-statistic-tree" or (errorHandler.buildDepError "order-statistic-tree"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-ost" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."order-statistic-tree" or (errorHandler.buildDepError "order-statistic-tree"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }