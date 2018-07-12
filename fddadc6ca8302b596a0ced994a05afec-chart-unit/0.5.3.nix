{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "chart-unit";
          version = "0.5.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/chart-unit";
        url = "";
        synopsis = "Native haskell charts.";
        description = "\n<<https://tonyday567.github.io/other/mainExample.svg>>\n\nchart-unit is a native haskell charting library designed:\n\n- as a chart DSL and algebra\n\n- towards a minimalist look and feel\n\n- to provide a set of default values that are robust across differet data and physical chart scales\n\n- around provision of a small but core set of chart types.\n\nSee <https://tonyday567.github.io/chart-unit/index.html chart-unit> for a chart gallery.\n";
        buildType = "Simple";
      };
      components = {
        "chart-unit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.palette
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-svg
            hsPkgs.foldl
            hsPkgs.formatting
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.data-default
            hsPkgs.numhask
            hsPkgs.numhask-range
            hsPkgs.text
            hsPkgs.SVGFonts
          ];
        };
        exes = {
          "chart-source-examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.chart-unit
              hsPkgs.containers
              hsPkgs.diagrams-lib
              hsPkgs.foldl
              hsPkgs.lens
              hsPkgs.mwc-probability
              hsPkgs.mwc-random
              hsPkgs.numhask
              hsPkgs.primitive
              hsPkgs.protolude
              hsPkgs.tdigest
              hsPkgs.text
              hsPkgs.diagrams-rasterific
              hsPkgs.diagrams-svg
              hsPkgs.formatting
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.chart-unit
              hsPkgs.numhask
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.text
            ];
          };
        };
      };
    }