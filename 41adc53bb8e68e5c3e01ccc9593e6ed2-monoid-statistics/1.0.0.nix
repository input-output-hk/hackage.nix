{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monoid-statistics";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "https://github.com/Shimuuar/monoid-statistics";
        url = "";
        synopsis = "Monoids for calculation of statistics of sample";
        description = "Monoids for calculation of statistics of sample. This approach\nallows to calculate many statistics in one pass over data and\npossibility to parallelize calculations. However not all statistics\ncould be calculated this way.";
        buildType = "Simple";
      };
      components = {
        monoid-statistics = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.vector-th-unbox
            hsPkgs.math-functions
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.monoid-statistics
              hsPkgs.base
              hsPkgs.math-functions
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }