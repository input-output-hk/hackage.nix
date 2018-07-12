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
          version = "1.0";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "SVG Backend for lp-diagrams";
        description = "";
        buildType = "Simple";
      };
      components = {
        "lp-diagrams-svg" = {
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
          ];
        };
        exes = {
          "lp-diagrams-svg-example" = {
            depends  = [
              hsPkgs.lp-diagrams-svg
              hsPkgs.lp-diagrams
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.FontyFruity
            ];
          };
        };
      };
    }