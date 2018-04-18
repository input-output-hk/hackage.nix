{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "plot-light";
          version = "0.2.7";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Marco Zocca";
        maintainer = "zocca marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/plot-light";
        url = "";
        synopsis = "A lightweight plotting library, exporting to SVG";
        description = "This library provides drawing and plotting datastructures and functions; it is aimed in particular at scientific visualization, but it also exposes its plotting primitives and a general purpose 2D geometry library.";
        buildType = "Simple";
      };
      components = {
        plot-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.colour
            hsPkgs.palette
            hsPkgs.blaze-svg
            hsPkgs.attoparsec
          ];
        };
        exes = {
          scatter = {
            depends  = [
              hsPkgs.base
              hsPkgs.plot-light
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.colour
              hsPkgs.blaze-svg
              hsPkgs.scientific
            ];
          };
          timeseries = {
            depends  = [
              hsPkgs.base
              hsPkgs.plot-light
              hsPkgs.attoparsec
              hsPkgs.attoparsec-time
              hsPkgs.time
              hsPkgs.text
              hsPkgs.colour
              hsPkgs.blaze-svg
              hsPkgs.scientific
            ];
          };
          heatmap = {
            depends  = [
              hsPkgs.base
              hsPkgs.plot-light
              hsPkgs.attoparsec
              hsPkgs.attoparsec-time
              hsPkgs.time
              hsPkgs.text
              hsPkgs.colour
              hsPkgs.palette
              hsPkgs.blaze-svg
              hsPkgs.scientific
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