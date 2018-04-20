{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hledger-chart";
          version = "0.13";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A hledger add-on command to generate pie charts.";
        description = "This generates simple pie chart images showing relative account balances.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hledger-chart = {
            depends  = [
              hsPkgs.hledger
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.safe
              hsPkgs.Chart
              hsPkgs.colour
            ];
          };
        };
      };
    }