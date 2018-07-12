{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monoid-statistics";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "https://bitbucket.org/Shimuuar/monoid-statistics";
        url = "";
        synopsis = "Monoids for calculation of statistics of sample";
        description = "Monoids for calculation of statistics of sample\n\nCurrently only mean and number of elements could be calculated";
        buildType = "Simple";
      };
      components = {
        "monoid-statistics" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }