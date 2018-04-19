{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "QuickPlot";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "tepf@tutanota.com";
        author = "tepf";
        homepage = "http://github.com/tepf/QuickPlot#readme";
        url = "";
        synopsis = "Quick and easy data visualization with Haskell";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        QuickPlot = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.colour
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.websockets-snap
            hsPkgs.websockets
            hsPkgs.vector
            hsPkgs.scientific
            hsPkgs.attoparsec
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
        exes = {
          BasicPlotting = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.QuickPlot
            ];
          };
        };
      };
    }