{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "potrace";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "Copyright (C) 2015 Christopher Chalmers";
        maintainer = "c.chalmers@me.com";
        author = "Christopher Chalmers";
        homepage = "";
        url = "";
        synopsis = "Trace bitmap images to paths using potrace";
        description = "Trace bitmap images to paths using the potrace library. Helpers for\ngenerating bitmap images from functions or JuicyPixel images.\n\nSee <https://github.com/diagrams/potrace-diagrams/ potrace-diagrams>\nfor an implimentation for the diagrams library.";
        buildType = "Simple";
      };
      components = {
        potrace = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-potrace
            hsPkgs.vector
            hsPkgs.JuicyPixels
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
          ];
        };
      };
    }