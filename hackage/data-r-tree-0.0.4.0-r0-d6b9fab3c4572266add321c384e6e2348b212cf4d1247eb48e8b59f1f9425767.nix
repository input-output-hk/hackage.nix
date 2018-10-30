{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-strict = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "data-r-tree";
        version = "0.0.4.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.data-r-tree)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.containers)
          ];
        };
        "strict" = {
          depends  = pkgs.lib.optionals (!(!flags.test-strict)) [
            (hsPkgs.data-r-tree)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-heap-view)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }