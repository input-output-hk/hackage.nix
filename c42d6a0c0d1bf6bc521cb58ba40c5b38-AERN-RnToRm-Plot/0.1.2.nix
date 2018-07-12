{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "AERN-RnToRm-Plot";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 Michal Konecny";
        maintainer = "mik@konecny.aow.cz";
        author = "Michal Konecny (Aston University)";
        homepage = "";
        url = "";
        synopsis = "GL plotting of polynomial function enclosures (PFEs)";
        description = "This library extends AERN-RnToRm with support for plotting unary function enclosures\nin any GL context and a Gtk window for inspecting these enclosures.\n\nSimple examples of usage can be found in module @Demo.hs@ in folder @tests@.";
        buildType = "Simple";
      };
      components = {
        "AERN-RnToRm-Plot" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.stm
            hsPkgs.AERN-Real
            hsPkgs.AERN-RnToRm
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.gtk
            hsPkgs.gtkglext
            hsPkgs.glib
            hsPkgs.glade
          ];
        };
      };
    }