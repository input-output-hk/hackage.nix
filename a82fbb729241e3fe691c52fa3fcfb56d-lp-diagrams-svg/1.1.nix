{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "lp-diagrams-svg";
          version = "1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "SVG Backend for lp-diagrams";
        description = "SVG backend for lp-diagrams";
        buildType = "Simple";
      };
      components = {
        lp-diagrams-svg = {
          depends  = [
            hsPkgs.lp-diagrams
            hsPkgs.base
            hsPkgs.lucid-svg
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.svg-tree
            hsPkgs.mtl
            hsPkgs.linear
            hsPkgs.JuicyPixels
            hsPkgs.FontyFruity
            hsPkgs.vector
            hsPkgs.optparse-applicative
            hsPkgs.gasp
          ];
        };
        exes = {
          lp-diagrams-svg-example = {
            depends  = [
              hsPkgs.lp-diagrams-svg
              hsPkgs.lp-diagrams
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.FontyFruity
              hsPkgs.gasp
            ];
          };
        };
      };
    }