{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-r-tree";
          version = "0.0.3.0";
        };
        license = "MIT";
        copyright = "Sebastian Philipp, Birte Wagner";
        maintainer = "sebastian@spawnhost.de";
        author = "Sebastian Philipp, Birte Wagner";
        homepage = "https://github.com/sebastian-philipp/r-tree";
        url = "";
        synopsis = "R-Tree is a spatial data structure similar to Quadtrees or B-Trees.";
        description = "R-Tree is a spatial data structure similar to Quadtrees or B-Trees.\nAn R-Tree is a balanced tree and optimized for lookups. This implemetation useses an R-Tree to privide\na map to arbitrary values.";
        buildType = "Simple";
      };
      components = {
        "data-r-tree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.binary
          ];
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.data-r-tree
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.gnuplot
              hsPkgs.containers
            ];
          };
        };
      };
    }