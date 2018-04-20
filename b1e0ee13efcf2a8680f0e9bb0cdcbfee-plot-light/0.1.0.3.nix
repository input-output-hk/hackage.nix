{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plot-light";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Marco Zocca";
        maintainer = "zocca marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/plot-light";
        url = "";
        synopsis = "A lightweight plotting library, exporting to SVG";
        description = "A lightweight plotting library, exporting to SVG";
        buildType = "Simple";
      };
      components = {
        plot-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.attoparsec-time
            hsPkgs.attoparsec
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.colour
            hsPkgs.palette
            hsPkgs.blaze-svg
          ];
        };
        exes = {
          plot-light = {
            depends  = [
              hsPkgs.base
              hsPkgs.plot-light
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.plot-light
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }