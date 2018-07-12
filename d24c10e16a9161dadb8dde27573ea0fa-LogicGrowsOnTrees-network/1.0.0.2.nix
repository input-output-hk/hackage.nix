{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      warnings = false;
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "LogicGrowsOnTrees-network";
          version = "1.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
        author = "Gregory Crosswhite";
        homepage = "";
        url = "";
        synopsis = "an adapter for LogicGrowsOnTrees that uses multiple processes running in a network";
        description = "This package provides a adapter for the LogicGrowsOnTrees package that uses\nmultiple processes running in a network for parallelism; see the module\ndocumentation for more details.";
        buildType = "Simple";
      };
      components = {
        "LogicGrowsOnTrees-network" = {
          depends  = [
            hsPkgs.LogicGrowsOnTrees
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.cmdtheline
            hsPkgs.composition
            hsPkgs.containers
            hsPkgs.hslogger
            hsPkgs.hslogger-template
            hsPkgs.lens
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pretty
            hsPkgs.transformers
          ];
        };
        exes = {
          "count-all-nqueens-solutions" = {
            depends  = [
              hsPkgs.LogicGrowsOnTrees-network
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.base
              hsPkgs.cmdtheline
            ];
          };
          "count-all-trivial-tree-leaves" = {
            depends  = [
              hsPkgs.LogicGrowsOnTrees-network
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.cmdtheline
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.LogicGrowsOnTrees-network
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.base
              hsPkgs.hslogger
              hsPkgs.hslogger-template
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
            ];
          };
        };
      };
    }