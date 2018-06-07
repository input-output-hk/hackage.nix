{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "plot-light";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017-2018 Marco Zocca";
        maintainer = "zocca marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/plot-light";
        url = "";
        synopsis = "A lightweight plotting library, exporting to SVG";
        description = "This library provides drawing and plotting datastructures and functions; it is aimed in particular at scientific visualization, but it also exposes its plotting primitives and a small but general purpose 2D geometry library.";
        buildType = "Simple";
      };
      components = {
        plot-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.blaze-svg
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.histogram-fill
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
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