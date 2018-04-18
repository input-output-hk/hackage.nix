{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "adp-multi";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Maik Riechert, 2012";
        maintainer = "Maik Riechert";
        author = "Maik Riechert";
        homepage = "http://adp-multi.ruhoh.com";
        url = "";
        synopsis = "ADP for multiple context-free languages";
        description = "adp-multi is an implementation of Algebraic Dynamic Programming\nfor multiple context-free languages.\nIt is a library based on the original Haskell implementation\nand can be considered an unoptimized prototype.";
        buildType = "Simple";
      };
      components = {
        adp-multi = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.htrace
            hsPkgs.mtl
            hsPkgs.monadiccp
          ];
        };
        exes = {
          adp-multi-benchmarks = {
            depends  = optionals _flags.buildtests [
              hsPkgs.base
              hsPkgs.criterion
            ];
          };
          adp-test = {
            depends  = [ hsPkgs.base ];
          };
        };
        tests = {
          MainTestSuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.random-shuffle
            ];
          };
        };
      };
    }