{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Hieroglyph";
          version = "3.85";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "J.R. Heard";
        author = "J.R. Heard";
        homepage = "http://vis.renci.org/jeff/hieroglyph";
        url = "";
        synopsis = "Purely functional 2D graphics for visualization.";
        description = "A purely functional 2D scenegraph library with functionality similar to a barebones Processing.\nCurrently a complete implmentation exists using Cairo and partial implementation in OpenGL as well.";
        buildType = "Simple";
      };
      components = {
        Hieroglyph = {
          depends  = [
            hsPkgs.IfElse
            hsPkgs.OpenGL
            hsPkgs.array
            hsPkgs.base
            hsPkgs.buster
            hsPkgs.buster-gtk
            hsPkgs.bytestring
            hsPkgs.cairo
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.gtkglext
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.pretty
            hsPkgs.random
          ];
        };
      };
    }