{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "tidal-vis";
          version = "0.9.3";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Alex McLean and others, 2017";
        maintainer = "alex@slab.org";
        author = "Alex McLean";
        homepage = "http://yaxu.org/tidal/";
        url = "";
        synopsis = "Visual rendering for Tidal patterns";
        description = "Tidal is a domain specific language for live coding pattern. This package allows colour patterns to be rendered as PDF or SVG files.";
        buildType = "Simple";
      };
      components = {
        tidal-vis = {
          depends  = [
            hsPkgs.base
            hsPkgs.tidal
            hsPkgs.colour
            hsPkgs.cairo
          ];
        };
      };
    }