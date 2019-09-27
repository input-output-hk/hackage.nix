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
      identifier = { name = "order-statistic-tree"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test-ost" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."order-statistic-tree" or (buildDepError "order-statistic-tree"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-ost" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."order-statistic-tree" or (buildDepError "order-statistic-tree"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }