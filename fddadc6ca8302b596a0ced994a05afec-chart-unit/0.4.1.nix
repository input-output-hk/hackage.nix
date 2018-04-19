{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chart-unit";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/chart-unit";
        url = "";
        synopsis = "Native haskell charts.";
        description = "See <https://tonyday567.github.io/chart-unit/index.html chart-unit> for chart bling and usage.\n\n\n<<https://tonyday567.github.io/other/examplePixels.svg>>\n\nThese charts are designed to be scale independent and amenable to combinatory busywork (hence the unit suffix).\n\n";
        buildType = "Simple";
      };
      components = {
        chart-unit = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-svg
            hsPkgs.foldl
            hsPkgs.formatting
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.numhask
            hsPkgs.numhask-range
            hsPkgs.text
          ];
        };
        exes = {
          chart-unit-examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.chart-unit
              hsPkgs.protolude
              hsPkgs.foldl
              hsPkgs.text
              hsPkgs.numhask
              hsPkgs.mwc-random
              hsPkgs.mwc-probability
              hsPkgs.primitive
              hsPkgs.ad
              hsPkgs.reflection
              hsPkgs.tdigest
              hsPkgs.diagrams-rasterific
              hsPkgs.JuicyPixels
              hsPkgs.diagrams-lib
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.chart-unit
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.numhask
            ];
          };
        };
      };
    }