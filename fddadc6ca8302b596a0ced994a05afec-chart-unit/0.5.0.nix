{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "chart-unit";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/chart-unit";
        url = "";
        synopsis = "Native haskell charts.";
        description = "See <https://tonyday567.github.io/chart-unit/index.html chart-unit> for chart bling and usage.\n\n\n![example](other/mainExample.svg)\n\nThese charts are designed to be scale independent and amenable to combinatory busywork (hence the unit suffix).\n\n";
        buildType = "Simple";
      };
      components = {
        chart-unit = {
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
          chart-source-examples = {
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
            ];
          };
        };
        tests = {
          test = {
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