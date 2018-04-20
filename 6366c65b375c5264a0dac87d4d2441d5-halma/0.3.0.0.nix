{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "halma";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "2014-2017 Tim Baumann";
        maintainer = "tim@timbaumann.info";
        author = "Tim Baumann";
        homepage = "https://github.com/timjb/halma";
        url = "";
        synopsis = "Library implementing Halma rules";
        description = "Rules and `diagrams`-based renderer for the board game Halma on a hexagonal grid.";
        buildType = "Simple";
      };
      components = {
        halma = {
          depends  = [
            hsPkgs.base
            hsPkgs.grid
            hsPkgs.containers
            hsPkgs.diagrams-lib
            hsPkgs.data-default
            hsPkgs.aeson
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.halma
              hsPkgs.grid
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }