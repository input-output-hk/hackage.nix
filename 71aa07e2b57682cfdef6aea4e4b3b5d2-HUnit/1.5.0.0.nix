{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HUnit";
          version = "1.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Dean Herington";
        homepage = "https://github.com/hspec/HUnit#readme";
        url = "";
        synopsis = "A unit testing framework for Haskell";
        description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
        buildType = "Simple";
      };
      components = {
        HUnit = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.call-stack
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.call-stack
              hsPkgs.filepath
              hsPkgs.HUnit
            ];
          };
        };
      };
    }