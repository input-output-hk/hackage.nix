{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      debugoutput = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "ShortestPathProblems";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2016";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2016";
        homepage = "https://github.com/choener/ShortestPathProblems";
        url = "";
        synopsis = "grammars for TSP and SHP";
        description = "Grammars and default implementations for the shortest\nHamiltonian path and Travelling Salesman problems.\n";
        buildType = "Simple";
      };
      components = {
        ShortestPathProblems = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.log-domain
            hsPkgs.text
            hsPkgs.ADPfusion
            hsPkgs.ADPfusionSet
            hsPkgs.FormalGrammars
            hsPkgs.PrimitiveArray
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.vector
              hsPkgs.ShortestPathProblems
            ];
          };
        };
      };
    }