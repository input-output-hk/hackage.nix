{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monoid-statistics";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "https://bitbucket.org/Shimuuar/monoid-statistics";
        url = "";
        synopsis = "Monoids for calculation of statistics of sample";
        description = "Monoids for calculation of statistics of sample. This approach\nallows to calculate many statistics in one pass over data and\npossibility to parallelize calculations. However not all statistics\ncould be calculated this way.\n\nThis packages is quite similar to monoids package but limited to\ncalculation on statistics. In particular it makes use of\ncommutatitvity of statistical monoids.\n\nChanges:\n\n* 0.3.1 Better documentation; Fix in Min/Max monoids";
        buildType = "Simple";
      };
      components = {
        monoid-statistics = {
          depends  = [ hsPkgs.base ];
        };
      };
    }