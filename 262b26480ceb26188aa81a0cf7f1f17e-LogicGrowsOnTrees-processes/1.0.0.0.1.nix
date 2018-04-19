{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      warnings = false;
      pattern-warnings = false;
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "LogicGrowsOnTrees-processes";
          version = "1.0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
        author = "Gregory Crosswhite";
        homepage = "";
        url = "";
        synopsis = "an adapter for LogicGrowsOnTrees that uses multiple processes for parallelism";
        description = "This package provides a adapter for the LogicGrowsOnTrees package that uses\nmultiple processes for parallelism; see the module documentation for more\ndetails.";
        buildType = "Simple";
      };
      components = {
        LogicGrowsOnTrees-processes = {
          depends  = [
            hsPkgs.LogicGrowsOnTrees
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cmdtheline
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.FindBin
            hsPkgs.hslogger
            hsPkgs.hslogger-template
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.process
            hsPkgs.transformers
          ];
        };
        exes = {
          count-all-nqueens-solutions = {
            depends  = [
              hsPkgs.LogicGrowsOnTrees-processes
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.cmdtheline
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.LogicGrowsOnTrees-processes
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.hslogger
              hsPkgs.hslogger-template
              hsPkgs.HUnit
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
            ];
          };
        };
      };
    }